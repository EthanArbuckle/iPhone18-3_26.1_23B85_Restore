@interface VOTBrailleGestureTranslator
- (BOOL)_isFullCellStrong;
- (BOOL)isExistingInputContainedIn:(id)a3 withMode:(unint64_t)a4 isPrefix:(BOOL *)a5;
- (BOOL)performBrailleBufferBackspace:(id *)a3;
- (BRLTTranslationService)translationService;
- (CGSize)keyboardSize;
- (VOTBrailleGestureTranslator)init;
- (VOTBrailleGestureTranslatorDelegate)delegate;
- (id)_outputForBefore:(id)a3 after:(id)a4 delete:(BOOL)a5;
- (id)_trimCommonPrefixWithString:(id)a3 fromString:(id)a4;
- (id)brailleForText:(id)a3 mode:(unint64_t)a4;
- (id)outputForLatestInput;
- (id)popLastBrailleCellFromBuffer;
- (id)printBrailleForAllTouchPointsInInput:(id)a3 shouldLearn:(BOOL)a4 error:(id *)a5;
- (id)printBrailleForInput:(id)a3 error:(id *)a4;
- (id)textForBraille:(id)a3 mode:(unint64_t)a4;
- (id)translateExistingInputWithMode:(unint64_t)a3;
- (id)translatedTextForPrintBraille:(id)a3 mode:(unint64_t)a4 buffer:(id)a5;
- (void)_resetTranslator;
- (void)addPrintBrailleToBuffer:(id)a3 language:(id)a4;
- (void)calibrateWithTouchPoints:(id)a3;
- (void)clearBrailleBuffer;
- (void)didInputBackspace;
- (void)didInputSpace;
- (void)didPressReturnKey;
- (void)setActive:(BOOL)a3;
- (void)setUnitTesting:(BOOL)a3;
@end

@implementation VOTBrailleGestureTranslator

- (VOTBrailleGestureTranslator)init
{
  v14.receiver = self;
  v14.super_class = VOTBrailleGestureTranslator;
  v2 = [(VOTBrailleGestureTranslator *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_unitTesting = 0;
    v4 = objc_alloc_init(VOTBrailleGesturePatternRecognitionEngine);
    recognitionEngine = v3->_recognitionEngine;
    v3->_recognitionEngine = v4;

    [(VOTBrailleGesturePatternRecognitionEngine *)v3->_recognitionEngine setDelegate:v3];
    v6 = objc_alloc_init(NSMutableString);
    brailleBuffer = v3->_brailleBuffer;
    v3->_brailleBuffer = v6;

    objc_initWeak(&location, v3);
    v8 = +[AXSettings sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000286AC;
    v11[3] = &unk_1001C78D8;
    objc_copyWeak(&v12, &location);
    v9 = objc_loadWeakRetained(&location);
    [v8 registerUpdateBlock:v11 forRetrieveSelector:"voiceOverBrailleTableIdentifier" withListener:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)setUnitTesting:(BOOL)a3
{
  if (self->_unitTesting != a3)
  {
    self->_unitTesting = a3;
    self->_translationService = 0;
    _objc_release_x1();
  }
}

- (id)printBrailleForAllTouchPointsInInput:(id)a3 shouldLearn:(BOOL)a4 error:(id *)a5
{
  v5 = a4;
  v7 = a3;
  v8 = +[NSMutableString string];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v24 = v7;
  v9 = [v7 seriesOfTouchPoints];
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        recognitionEngine = self->_recognitionEngine;
        v25 = 0;
        v16 = [(VOTBrailleGesturePatternRecognitionEngine *)recognitionEngine printBrailleForTouchPoints:v14 shouldLearn:v5 error:&v25];
        v17 = v25;
        if (v17)
        {
          v19 = v17;
          v20 = VOTLogBrailleGestures();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_100128A50(v19, v14, v20);
          }

          if (a5)
          {
            v21 = v19;
            *a5 = v19;
          }

          v18 = &stru_1001CBF90;
          goto LABEL_15;
        }

        [v8 appendString:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v18 = v8;
LABEL_15:

  return v18;
}

- (void)addPrintBrailleToBuffer:(id)a3 language:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableString *)self->_brailleBuffer copy];
  [(NSMutableString *)self->_brailleBuffer appendString:v6];
  v9 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    brailleBuffer = self->_brailleBuffer;
    v13 = 138543874;
    v14 = brailleBuffer;
    v15 = 2114;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Braille buffer = %{public}@, added %{public}@ (language = %{public}@)", &v13, 0x20u);
  }

  v10 = [(VOTBrailleGestureTranslator *)self _outputForBefore:v8 after:self->_brailleBuffer delete:0];
  outputForLatestInput = self->_outputForLatestInput;
  self->_outputForLatestInput = v10;
}

- (id)popLastBrailleCellFromBuffer
{
  p_brailleBuffer = &self->_brailleBuffer;
  if (![(NSMutableString *)self->_brailleBuffer length]|| ((v4 = [(NSMutableString *)*p_brailleBuffer rangeOfComposedCharacterSequenceAtIndex:[(NSMutableString *)*p_brailleBuffer length]- 1], v4 != 0x7FFFFFFFFFFFFFFFLL) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    outputForLatestInput = self->_outputForLatestInput;
    self->_outputForLatestInput = 0;

    v11 = 0;
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v10 = [(NSMutableString *)*p_brailleBuffer copy];
    v11 = [(NSMutableString *)*p_brailleBuffer substringWithRange:v8, v9];
    [(NSMutableString *)*p_brailleBuffer deleteCharactersInRange:v8, v9];
    v12 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100128AF4(p_brailleBuffer);
    }

    v14 = [(VOTBrailleGestureTranslator *)self _outputForBefore:v10 after:self->_brailleBuffer delete:1];
    v15 = self->_outputForLatestInput;
    self->_outputForLatestInput = v14;
  }

  return v11;
}

- (id)translatedTextForPrintBraille:(id)a3 mode:(unint64_t)a4 buffer:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(VOTBrailleGestureTranslator *)self textForBraille:@"⠿" mode:a4];
  v11 = v10;
  if (a4 == 4)
  {
    v18 = [(VOTBrailleGestureTranslator *)self textForBraille:v8 mode:4];
  }

  else
  {
    if (a4 == 3)
    {
      if (!v10)
      {
        v12 = VOTLogBraille();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100128B6C(v12);
        }

        v11 = &stru_1001CBF90;
      }

      v61 = v11;
      if ([v9 length])
      {
        v13 = [NSString stringWithFormat:@"%@%@%@", @"⠿", v8, @"⠿"];
        v14 = [(VOTBrailleGestureTranslator *)self textForBraille:v13 mode:3];
        v15 = [v14 rangeOfString:v11 options:0];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = &stru_1001CBF90;
        }

        else
        {
          v17 = [v14 substringFromIndex:&v15[v16]];
        }

        v24 = [(__CFString *)v17 rangeOfString:v11 options:4];
        if (v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = &stru_1001CBF90;
        }

        else
        {
          v25 = [(__CFString *)v17 substringToIndex:v24];
        }

        v26 = [@"⠿" stringByAppendingString:v8];
        v27 = [(VOTBrailleGestureTranslator *)self textForBraille:v26 mode:3];
        v28 = [v27 rangeOfString:v11];
        if (v28 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v30 = &stru_1001CBF90;
        }

        else
        {
          v30 = [v27 substringFromIndex:&v28[v29]];
        }

        v31 = VOTLogBrailleGestures();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          sub_100128BF0();
        }

        if (!v25 || (v32 = [(__CFString *)v25 length], v33 = v25, !v32))
        {
          v33 = v30;
        }

        v18 = v33;
      }

      else
      {
        v19 = [(VOTBrailleGestureTranslator *)self textForBraille:v8 mode:3];
        v20 = [(__CFString *)v8 stringByAppendingString:@"⠿"];
        v21 = [(VOTBrailleGestureTranslator *)self textForBraille:v20 mode:3];
        v22 = [v21 rangeOfString:v11 options:4];
        if (v22 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v23 = &stru_1001CBF90;
        }

        else
        {
          v23 = [v21 substringToIndex:v22];
        }

        v34 = VOTLogBrailleGestures();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_100128C5C();
        }

        if (!v23 || (v35 = [(__CFString *)v23 length], v36 = v23, !v35))
        {
          v36 = v19;
        }

        v18 = v36;
      }
    }

    else
    {
      v61 = v10;
      v18 = [(VOTBrailleGestureTranslator *)self textForBraille:v8 mode:a4];
    }

    v37 = [(__CFString *)v18 uppercaseString];
    v38 = [(__CFString *)v18 capitalizedString];
    v62 = v9;
    v63 = v8;
    v39 = [v9 stringByAppendingString:v8];
    v40 = [(VOTBrailleGestureTranslator *)self translateExistingInputWithMode:a4];
    v41 = [(VOTBrailleGestureTranslator *)self textForBraille:v39 mode:a4];
    v42 = [(VOTBrailleGestureTranslator *)self _trimCommonPrefixWithString:v40 fromString:v41];
    v43 = [(VOTBrailleGestureTranslator *)self textForBraille:v39 mode:a4];
    v44 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138544898;
      v65 = v18;
      v66 = 2114;
      v67 = v38;
      v68 = 2114;
      v69 = v37;
      v70 = 2114;
      v71 = v40;
      v72 = 2114;
      v73 = v41;
      v74 = 2114;
      v75 = v42;
      v76 = 2114;
      v77 = v43;
      _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Context translations:\n  translatedText = %{public}@, capitalized: %{public}@, uppercase: %{public}@\n  currentBufferTranslation = %{public}@\n  contextTranslation = %{public}@\n  contextSuffix = %{public}@\n  uncontractedTranslation = %{public}@", buf, 0x48u);
    }

    v45 = [v41 isEqualToString:v37];
    v46 = v37;
    if (v45 & 1) != 0 || (v47 = [v41 isEqualToString:v38], v46 = v38, (v47) || v18 && ((v48 = -[__CFString length](v42, "length"), v49 = -[__CFString length](v18, "length"), v46 = v42, v48 == v49) || v38 && (v50 = objc_msgSend(v43, "hasSuffix:", v38), v46 = v38, (v50) || v37 && (v51 = -[__CFString hasPrefix:](v42, "hasPrefix:", v37), v46 = v37, (v51) || v38 && (v52 = -[__CFString hasPrefix:](v42, "hasPrefix:", v38), v46 = v38, v52)))
    {
      v53 = v46;

      v18 = v53;
    }

    v9 = v62;
    v8 = v63;
    v11 = v61;
  }

  v54 = [(__CFString *)v8 length]!= 1 || [(__CFString *)v8 characterAtIndex:0]== 10240;
  v55 = [(__CFString *)v18 stringByTrimmingEmptySpaceEdges];
  v56 = [v55 length];
  if (!v54 && v56)
  {
    v57 = v55;

    v18 = v57;
  }

  v58 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = BRLTModeDescription();
    *buf = 138543874;
    v65 = v8;
    v66 = 2114;
    v67 = v18;
    v68 = 2112;
    v69 = v59;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Translated text: %{public}@ -> %{public}@ (mode:%@)", buf, 0x20u);
  }

  return v18;
}

- (id)_trimCommonPrefixWithString:(id)a3 fromString:(id)a4
{
  v5 = a4;
  v6 = [v5 commonPrefixWithString:a3 options:0];
  v7 = [v5 substringFromIndex:{objc_msgSend(v6, "length")}];

  return v7;
}

- (id)translateExistingInputWithMode:(unint64_t)a3
{
  v4 = [(VOTBrailleGestureTranslator *)self textForBraille:self->_brailleBuffer mode:a3];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = +[VOTBrailleManager manager];
  v6 = [v5 textReplacementEntries];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 shortcut];
        v13 = [v12 compare:v4 options:129];

        if (!v13)
        {
          v14 = [v11 phrase];

          v4 = v14;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    brailleBuffer = self->_brailleBuffer;
    *buf = 138543618;
    v23 = brailleBuffer;
    v24 = 2114;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Translated text: %{public}@ -> %{public}@", buf, 0x16u);
  }

  return v4;
}

- (BOOL)isExistingInputContainedIn:(id)a3 withMode:(unint64_t)a4 isPrefix:(BOOL *)a5
{
  v8 = a3;
  brailleBuffer = self->_brailleBuffer;
  if (brailleBuffer && [(NSMutableString *)brailleBuffer length])
  {
    v10 = [v8 lowercaseString];
    v24[0] = v10;
    v24[1] = v8;
    [NSArray arrayWithObjects:v24 count:2];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v22 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(VOTBrailleGestureTranslator *)self brailleForText:*(*(&v19 + 1) + 8 * i) mode:a4, v19];
          if ([v16 containsString:self->_brailleBuffer])
          {
            if (a5)
            {
              *a5 = [v16 hasPrefix:self->_brailleBuffer];
            }

            v17 = 1;
            goto LABEL_17;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
    if (a5)
    {
      *a5 = 0;
    }

LABEL_17:
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (void)didInputSpace
{
  v2 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Did input space", v3, 2u);
  }
}

- (BOOL)performBrailleBufferBackspace:(id *)a3
{
  v5 = [(NSMutableString *)self->_brailleBuffer length];
  if (v5)
  {
    v6 = [(NSMutableString *)self->_brailleBuffer copy];
    if (a3)
    {
      *a3 = [(NSMutableString *)self->_brailleBuffer substringFromIndex:[(NSMutableString *)self->_brailleBuffer length]- 1];
    }

    [(NSMutableString *)self->_brailleBuffer deleteCharactersInRange:[(NSMutableString *)self->_brailleBuffer length]- 1, 1];
    [(VOTBrailleGesturePatternRecognitionEngine *)self->_recognitionEngine unlearnLastGesture];
    v7 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      brailleBuffer = self->_brailleBuffer;
      v12 = 138477827;
      v13 = brailleBuffer;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Did backspace from braille buffer, which is now %{private}@", &v12, 0xCu);
    }

    v9 = [(VOTBrailleGestureTranslator *)self _outputForBefore:v6 after:self->_brailleBuffer delete:1];
    outputForLatestInput = self->_outputForLatestInput;
    self->_outputForLatestInput = v9;
  }

  return v5 != 0;
}

- (void)didInputBackspace
{
  v3 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Did input backspace", v4, 2u);
  }

  if ([(NSMutableString *)self->_brailleBuffer length])
  {
    _AXAssert();
  }
}

- (void)didPressReturnKey
{
  v2 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Did press return key", v3, 2u);
  }
}

- (id)printBrailleForInput:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [v7 seriesOfTouchPoints];
  if ([v8 count] != 1)
  {
    sub_100128CC8(a2, self);
  }

  v9 = [v8 lastObject];
  v10 = [(VOTBrailleGesturePatternRecognitionEngine *)self->_recognitionEngine printBrailleForTouchPoints:v9 shouldLearn:0 error:a4];
  v11 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100128D3C();
  }

  return v10;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v5 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100128DAC(a3, v5);
    }

    self->_active = a3;
    [(VOTBrailleGesturePatternRecognitionEngine *)self->_recognitionEngine resetLastGestures];
  }
}

- (void)calibrateWithTouchPoints:(id)a3
{
  v4 = a3;
  v5 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100128E50();
  }

  [(VOTBrailleGesturePatternRecognitionEngine *)self->_recognitionEngine calibrateWithTouchPoints:v4];
}

- (id)outputForLatestInput
{
  v3 = [(VOTOutputRequest *)self->_outputForLatestInput copy];
  outputForLatestInput = self->_outputForLatestInput;
  self->_outputForLatestInput = 0;

  return v3;
}

- (void)_resetTranslator
{
  v3 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100128EC4(v3);
  }

  translationService = self->_translationService;
  self->_translationService = 0;
}

- (BRLTTranslationService)translationService
{
  v3 = [VOTSharedWorkspace selectedBrailleGesturesInputTable];
  v4 = v3;
  if (v3)
  {
    if (!self->_translationService || ([v3 serviceIdentifier], v5 = objc_claimAutoreleasedReturnValue(), -[BRLTTranslationService serviceIdentifier](self->_translationService, "serviceIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, (v7 & 1) == 0))
    {
      v8 = [v4 serviceIdentifier];
      v9 = [BRLTTranslationService serviceForIdentifier:v8 input:0 loopback:[(VOTBrailleGestureTranslator *)self isUnitTesting]];

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100029CEC;
      v14[3] = &unk_1001C76E8;
      v15 = v4;
      [v9 setInvalidationHandler:v14];
      translationService = self->_translationService;
      self->_translationService = v9;
      v11 = v9;
    }

    v12 = self->_translationService;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)clearBrailleBuffer
{
  v3 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clear braille buffer", v4, 2u);
  }

  [(NSMutableString *)self->_brailleBuffer setString:&stru_1001CBF90];
  self->_isBufferSecure = 0;
  [(VOTBrailleGesturePatternRecognitionEngine *)self->_recognitionEngine resetLastGestures];
}

- (BOOL)_isFullCellStrong
{
  v3 = [(VOTBrailleGestureTranslator *)self textForBraille:@"⠿" mode:1];
  v4 = [(VOTBrailleGestureTranslator *)self textForBraille:@"⠿⠿⠿" mode:1];
  v5 = [v4 stringByReplacingOccurrencesOfString:@" " withString:&stru_1001CBF90];

  v6 = [NSString stringWithFormat:@"%@%@%@", v3, v3, v3];
  v7 = [v6 stringByReplacingOccurrencesOfString:@" " withString:&stru_1001CBF90];

  if ([v3 length])
  {
    v8 = [v5 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_outputForBefore:(id)a3 after:(id)a4 delete:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([(VOTBrailleGestureTranslator *)self _isFullCellStrong])
  {
    v10 = [(VOTBrailleGestureTranslator *)self translatedTextForPrintBraille:v8 mode:3 buffer:&stru_1001CBF90];
    [(VOTBrailleGestureTranslator *)self translatedTextForPrintBraille:v9 mode:3 buffer:&stru_1001CBF90];
  }

  else
  {
    v10 = [(VOTBrailleGestureTranslator *)self textForBraille:v8 mode:1];
    [(VOTBrailleGestureTranslator *)self textForBraille:v9 mode:1];
  }
  v11 = ;
  v12 = 0;
  if ([v10 length])
  {
    do
    {
      if (v12 >= [v11 length])
      {
        break;
      }

      v13 = [v10 characterAtIndex:v12];
      if (v13 != [v11 characterAtIndex:v12])
      {
        break;
      }

      ++v12;
    }

    while (v12 < [v10 length]);
  }

  v14 = objc_opt_new();
  if (v5)
  {
    v15 = [v10 substringFromIndex:v12];
    v16 = [[AXAttributedString alloc] initWithString:v15];
    [v16 addAttribute:kCFBooleanTrue forKey:UIAccessibilityTokenLowPitch withRange:{0, objc_msgSend(v16, "length")}];
    v17 = [v14 addAttributedString:v16];
  }

  else
  {
    v15 = [v11 substringFromIndex:v12];
    v18 = [v14 addString:v15];
  }

  return v14;
}

- (id)textForBraille:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10002A350;
  v27 = sub_10002A360;
  v28 = 0;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [VOTSharedWorkspace selectedBrailleGesturesInputTable];
  v9 = [v8 tableIdentifier];
  v10 = v9;
  if (a4 == 4)
  {

    v10 = @"nemeth";
  }

  v11 = [BRLTTranslationParameters alloc];
  v12 = [(__CFString *)v10 brl_languageAndVariant];
  v13 = [v11 initWithLanguage:v12 mode:a4 partial:0 useTechnicalTable:a4 == 4 textPositionsRange:0x7FFFFFFFFFFFFFFFLL textFormattingRanges:{0, 0}];

  v14 = [(VOTBrailleGestureTranslator *)self translationService];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002A368;
  v20[3] = &unk_1001C7DE0;
  v22 = &v23;
  v15 = v7;
  v21 = v15;
  [v14 textForBraille:v6 parameters:v13 withReply:v20];

  v16 = dispatch_time(0, 1000000000);
  if (dispatch_group_wait(v15, v16))
  {
    v17 = VOTLogBraille();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100128F84();
    }
  }

  v18 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v18;
}

- (id)brailleForText:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10002A350;
  v27 = sub_10002A360;
  v28 = 0;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [VOTSharedWorkspace selectedBrailleGesturesInputTable];
  v9 = [v8 tableIdentifier];
  v10 = v9;
  if (a4 == 4)
  {

    v10 = @"nemeth";
  }

  v11 = [BRLTTranslationParameters alloc];
  v12 = [(__CFString *)v10 brl_languageAndVariant];
  v13 = [v11 initWithLanguage:v12 mode:a4 partial:0 useTechnicalTable:a4 == 4 textPositionsRange:0x7FFFFFFFFFFFFFFFLL textFormattingRanges:{0, 0}];

  v14 = [(VOTBrailleGestureTranslator *)self translationService];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002A62C;
  v20[3] = &unk_1001C7DE0;
  v22 = &v23;
  v15 = v7;
  v21 = v15;
  [v14 brailleForText:v6 parameters:v13 withReply:v20];

  v16 = dispatch_time(0, 1000000000);
  if (dispatch_group_wait(v15, v16))
  {
    v17 = VOTLogBraille();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100128F84();
    }
  }

  v18 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v18;
}

- (VOTBrailleGestureTranslatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)keyboardSize
{
  width = self->_keyboardSize.width;
  height = self->_keyboardSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end