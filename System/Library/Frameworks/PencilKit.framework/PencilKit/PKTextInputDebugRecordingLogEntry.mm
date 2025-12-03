@interface PKTextInputDebugRecordingLogEntry
+ (id)_dictionaryRepresentationForDrawing:(id)drawing detailLevel:(int64_t)level containsInProgress:(BOOL)progress;
+ (id)_dictionaryRepresentationForTarget:(id)target;
+ (id)_dictionaryRepresentationForTargetContentInfo:(id)info elementType:(id)type detailLevel:(int64_t)level contentLevel:(int64_t)contentLevel resultAffectedRange:(_NSRange)range localeIdentifiers:(id)identifiers;
- (PKTextInputDebugRecordingLogEntry)initWithResultCommand:(id)command;
- (id)dictionaryRepresentationWithDetailLevel:(int64_t)level targetContentLevel:(int64_t)contentLevel;
- (id)inputDrawing;
- (void)_extractDataFromResultCommand:(id)command;
@end

@implementation PKTextInputDebugRecordingLogEntry

- (PKTextInputDebugRecordingLogEntry)initWithResultCommand:(id)command
{
  commandCopy = command;
  v8.receiver = self;
  v8.super_class = PKTextInputDebugRecordingLogEntry;
  v5 = [(PKTextInputDebugRecordingLogEntry *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKTextInputDebugRecordingLogEntry *)v5 _extractDataFromResultCommand:commandCopy];
  }

  return v6;
}

- (void)_extractDataFromResultCommand:(id)command
{
  commandCopy = command;
  v46 = commandCopy;
  if (commandCopy)
  {
    v5 = commandCopy[5];
    v6 = v46[4];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = v6;
  correctionResult = [v7 correctionResult];

  date = [MEMORY[0x1E695DF00] date];
  [(PKTextInputDebugLogEntry *)self setEntryDate:date];

  languageSpec = [v5 languageSpec];
  debugLocaleDescriptions = [(PKTextInputLanguageSpec *)languageSpec debugLocaleDescriptions];
  [(PKTextInputDebugLogEntry *)self setRecognitionLocaleIdentifiers:debugLocaleDescriptions];

  strokeProvider = [v5 strokeProvider];
  drawing = [strokeProvider drawing];
  [(PKTextInputDebugRecordingLogEntry *)self set_originalDrawing:drawing];

  inputInProgressStroke = [v5 inputInProgressStroke];
  [(PKTextInputDebugLogEntry *)self setInputContainsInProgressStroke:inputInProgressStroke != 0];

  textInputTargets = [v5 textInputTargets];
  v16 = [textInputTargets copy];
  [(PKTextInputDebugLogEntry *)self setInputTargets:v16];

  if (v46)
  {
    v17 = v46[6];
    v18 = v17;
    if (v17)
    {
      v19 = *(v17 + 1);
      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = 0;
LABEL_6:
  v20 = v19;

  if (!v20)
  {
    goto LABEL_15;
  }

  if (v46 && (v21 = v46[6]) != 0)
  {
    v22 = v21;
    v23 = v21[1];
    v24 = v23;
    if (v23)
    {
      v25 = *(v23 + 14);
      goto LABEL_11;
    }
  }

  else
  {
    v24 = 0;
    v22 = 0;
  }

  v25 = 0;
LABEL_11:
  v26 = v25;

  v27 = [v5 submittedTargetContentInfoForRecognitionIdentifier:v26];
  [(PKTextInputDebugLogEntry *)self setInputTargetContentInfo:v27];

  if (!v46)
  {
    v29 = 0;
    goto LABEL_33;
  }

  v28 = v46[6];
  v29 = v28;
  if (!v28)
  {
LABEL_33:
    v30 = 0;
    goto LABEL_14;
  }

  v30 = *(v28 + 1);
LABEL_14:
  v31 = v30;
  debugElementTypeDescription = [(PKTextInputElement *)v31 debugElementTypeDescription];
  [(PKTextInputDebugLogEntry *)self setInputTargetElementType:debugElementTypeDescription];

LABEL_15:
  if (v46)
  {
    v33 = v46[4];
    [(PKTextInputDebugRecordingLogEntry *)self set_resultQueryItem:v33];

    textResult = [correctionResult textResult];
    [(PKTextInputDebugLogEntry *)self setTokenizedTextResult:textResult];

    v35 = v46[10];
  }

  else
  {
    [(PKTextInputDebugRecordingLogEntry *)self set_resultQueryItem:0];
    textResult2 = [correctionResult textResult];
    [(PKTextInputDebugLogEntry *)self setTokenizedTextResult:textResult2];

    v35 = 0;
  }

  v36 = v35;
  [(PKTextInputDebugLogEntry *)self setResultCommittedText:v36];

  textResult3 = [correctionResult textResult];
  topTranscription = [textResult3 topTranscription];
  [(PKTextInputDebugLogEntry *)self setResultTopTranscription:topTranscription];

  if (v46)
  {
    [(PKTextInputDebugLogEntry *)self setResultCommittedTokenColumnCount:v46[11]];
    v39 = v46[12];
  }

  else
  {
    [(PKTextInputDebugLogEntry *)self setResultCommittedTokenColumnCount:0];
    v39 = 0;
  }

  v40 = v39;
  [(PKTextInputDebugLogEntry *)self setResultCommitReason:v40];

  if (correctionResult)
  {
    affectedRange = [correctionResult affectedRange];
    v43 = v42;
  }

  else
  {
    v43 = 0;
    affectedRange = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(PKTextInputDebugLogEntry *)self setResultAffectedRange:affectedRange, v43];
  v44 = _PKDescriptionForCHCorrectionType([correctionResult resultType]);
  [(PKTextInputDebugLogEntry *)self setResultTypeDescription:v44];

  [v5 recognitionDuration];
  [(PKTextInputDebugLogEntry *)self setResultRecognitionDuration:?];
}

- (id)inputDrawing
{
  v32 = *MEMORY[0x1E69E9840];
  inputDrawing = self->super._inputDrawing;
  if (!inputDrawing)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v5 = [PKTextInputCanvasController defaultInkWithColor:blackColor];

    v6 = MEMORY[0x1E695DF70];
    _originalDrawing = [(PKTextInputDebugRecordingLogEntry *)self _originalDrawing];
    strokes = [_originalDrawing strokes];
    v9 = [v6 arrayWithCapacity:{objc_msgSend(strokes, "count")}];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    _originalDrawing2 = [(PKTextInputDebugRecordingLogEntry *)self _originalDrawing];
    strokes2 = [_originalDrawing2 strokes];

    obj = strokes2;
    v12 = [strokes2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          _originalDrawing3 = [(PKTextInputDebugRecordingLogEntry *)self _originalDrawing];
          v18 = objc_alloc([_originalDrawing3 strokeClass]);
          path = [v16 path];
          if (v16)
          {
            [v16 transform];
          }

          else
          {
            memset(v26, 0, sizeof(v26));
          }

          mask = [v16 mask];
          v21 = [v18 initWithInk:v5 strokePath:path transform:v26 mask:mask];
          [v9 addObject:v21];
        }

        v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    v22 = [[PKDrawing alloc] initWithStrokes:v9];
    v23 = self->super._inputDrawing;
    self->super._inputDrawing = v22;

    inputDrawing = self->super._inputDrawing;
  }

  return inputDrawing;
}

- (id)dictionaryRepresentationWithDetailLevel:(int64_t)level targetContentLevel:(int64_t)contentLevel
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:20];
  loggedDateFormatter = [objc_opt_class() loggedDateFormatter];
  entryDate = [(PKTextInputDebugLogEntry *)self entryDate];
  v9 = [loggedDateFormatter stringFromDate:entryDate];
  [v6 setObject:v9 forKeyedSubscript:@"date"];

  inputDrawing = [(PKTextInputDebugRecordingLogEntry *)self inputDrawing];
  if (inputDrawing)
  {
    v11 = [objc_opt_class() _dictionaryRepresentationForDrawing:inputDrawing detailLevel:level containsInProgress:{-[PKTextInputDebugLogEntry inputContainsInProgressStroke](self, "inputContainsInProgressStroke")}];
    [v6 setObject:v11 forKeyedSubscript:@"inputDrawing"];
  }

  v12 = 0x1E696A000uLL;
  if (level)
  {
    if (level == 1)
    {
      v13 = MEMORY[0x1E695DF70];
      inputTargets = [(PKTextInputDebugLogEntry *)self inputTargets];
      v15 = [v13 arrayWithCapacity:{objc_msgSend(inputTargets, "count")}];

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      inputTargets2 = [(PKTextInputDebugLogEntry *)self inputTargets];
      v17 = [inputTargets2 countByEnumeratingWithState:&v62 objects:v66 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v63;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v63 != v19)
            {
              objc_enumerationMutation(inputTargets2);
            }

            v21 = [objc_opt_class() _dictionaryRepresentationForTarget:*(*(&v62 + 1) + 8 * i)];
            [v15 addObject:v21];
          }

          v18 = [inputTargets2 countByEnumeratingWithState:&v62 objects:v66 count:16];
        }

        while (v18);
      }

      [v6 setObject:v15 forKeyedSubscript:@"inputTargets"];
      v12 = 0x1E696A000;
    }
  }

  else
  {
    v22 = MEMORY[0x1E696AD98];
    inputTargets3 = [(PKTextInputDebugLogEntry *)self inputTargets];
    v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(inputTargets3, "count")}];
    [v6 setObject:v24 forKeyedSubscript:@"inputTargetsCount"];
  }

  inputTargetContentInfo = [(PKTextInputDebugLogEntry *)self inputTargetContentInfo];

  if (inputTargetContentInfo)
  {
    resultAffectedRange = [(PKTextInputDebugLogEntry *)self resultAffectedRange];
    v27 = v26;
    v28 = v6;
    levelCopy = level;
    v30 = inputDrawing;
    v31 = v12;
    v32 = objc_opt_class();
    inputTargetContentInfo2 = [(PKTextInputDebugLogEntry *)self inputTargetContentInfo];
    inputTargetElementType = [(PKTextInputDebugLogEntry *)self inputTargetElementType];
    recognitionLocaleIdentifiers = [(PKTextInputDebugLogEntry *)self recognitionLocaleIdentifiers];
    v36 = v32;
    v12 = v31;
    inputDrawing = v30;
    level = levelCopy;
    v6 = v28;
    v37 = [v36 _dictionaryRepresentationForTargetContentInfo:inputTargetContentInfo2 elementType:inputTargetElementType detailLevel:level contentLevel:contentLevel resultAffectedRange:resultAffectedRange localeIdentifiers:{v27, recognitionLocaleIdentifiers}];

    [v6 setObject:v37 forKeyedSubscript:@"inputTargetContentInfo"];
  }

  _resultQueryItem = [(PKTextInputDebugRecordingLogEntry *)self _resultQueryItem];

  if (_resultQueryItem)
  {
    v39 = objc_opt_class();
    _resultQueryItem2 = [(PKTextInputDebugRecordingLogEntry *)self _resultQueryItem];
    v41 = [v39 _mutableDictionaryRepresentationForResultQueryItem:_resultQueryItem2 detailLevel:level];

    v42 = *(v12 + 3480);
    [(PKTextInputDebugLogEntry *)self resultRecognitionDuration];
    v43 = [v42 numberWithDouble:?];
    [v41 setObject:v43 forKeyedSubscript:@"recognitionDuration"];

    recognitionLocaleIdentifiers2 = [(PKTextInputDebugLogEntry *)self recognitionLocaleIdentifiers];
    v45 = recognitionLocaleIdentifiers2;
    if (recognitionLocaleIdentifiers2)
    {
      v46 = recognitionLocaleIdentifiers2;
    }

    else
    {
      v46 = MEMORY[0x1E695E0F0];
    }

    [v41 setObject:v46 forKeyedSubscript:@"recognitionLocales"];

    recognitionLocaleIdentifiers3 = [(PKTextInputDebugLogEntry *)self recognitionLocaleIdentifiers];
    firstObject = [recognitionLocaleIdentifiers3 firstObject];
    v49 = firstObject;
    if (firstObject)
    {
      v50 = firstObject;
    }

    else
    {
      v50 = &stru_1F476BD20;
    }

    [v41 setObject:v50 forKeyedSubscript:@"recognitionLocale"];

    [v6 setObject:v41 forKeyedSubscript:@"recognitionResult"];
  }

  resultCommittedText = [(PKTextInputDebugLogEntry *)self resultCommittedText];
  v52 = resultCommittedText;
  if (resultCommittedText)
  {
    v53 = resultCommittedText;
  }

  else
  {
    v53 = &stru_1F476BD20;
  }

  [v6 setObject:v53 forKeyedSubscript:@"committedText"];

  v54 = [*(v12 + 3480) numberWithInteger:{-[PKTextInputDebugLogEntry resultCommittedTokenColumnCount](self, "resultCommittedTokenColumnCount")}];
  [v6 setObject:v54 forKeyedSubscript:@"committedTokenColumnCount"];

  resultCommitReason = [(PKTextInputDebugLogEntry *)self resultCommitReason];
  v56 = resultCommitReason;
  if (resultCommitReason)
  {
    v57 = resultCommitReason;
  }

  else
  {
    v57 = &stru_1F476BD20;
  }

  [v6 setObject:v57 forKeyedSubscript:@"commitReason"];

  v58 = [v6 copy];

  return v58;
}

+ (id)_dictionaryRepresentationForDrawing:(id)drawing detailLevel:(int64_t)level containsInProgress:(BOOL)progress
{
  progressCopy = progress;
  drawingCopy = drawing;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = MEMORY[0x1E696AD98];
  strokes = [drawingCopy strokes];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(strokes, "count")}];
  [dictionary setObject:v11 forKeyedSubscript:@"strokeCount"];

  [drawingCopy bounds];
  v12 = NSStringFromCGRect(v17);
  [dictionary setObject:v12 forKeyedSubscript:@"bounds"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:progressCopy];
  [dictionary setObject:v13 forKeyedSubscript:@"containsInProgressStroke"];

  if (level == 1)
  {
    dataRepresentation = [drawingCopy dataRepresentation];
    [dictionary setObject:dataRepresentation forKeyedSubscript:@"drawingData"];
  }

  return dictionary;
}

+ (id)_dictionaryRepresentationForTarget:(id)target
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16[0] = @"identifier";
  targetCopy = target;
  inputTargetIdentifier = [targetCopy inputTargetIdentifier];
  v16[1] = @"frame";
  v17[0] = inputTargetIdentifier;
  [targetCopy frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  v13 = NSStringFromCGRect(v19);
  v17[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v14;
}

+ (id)_dictionaryRepresentationForTargetContentInfo:(id)info elementType:(id)type detailLevel:(int64_t)level contentLevel:(int64_t)contentLevel resultAffectedRange:(_NSRange)range localeIdentifiers:(id)identifiers
{
  infoCopy = info;
  typeCopy = type;
  identifiersCopy = identifiers;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  textInputTarget = [infoCopy textInputTarget];
  inputTargetIdentifier = [textInputTarget inputTargetIdentifier];
  [dictionary setObject:inputTargetIdentifier forKeyedSubscript:@"targetIdentifier"];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(infoCopy, "textContentLength")}];
  [dictionary setObject:v18 forKeyedSubscript:@"textContentLength"];

  if (typeCopy)
  {
    [dictionary setObject:typeCopy forKeyedSubscript:@"elementType"];
  }

  if ([infoCopy referenceSubstringRange] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v50.location = [infoCopy referenceSubstringRange];
    v19 = NSStringFromRange(v50);
    [dictionary setObject:v19 forKeyedSubscript:@"referenceSubstringRange"];
  }

  if ([infoCopy strokeCoveredTextRange] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v51.location = [infoCopy strokeCoveredTextRange];
    v20 = NSStringFromRange(v51);
    [dictionary setObject:v20 forKeyedSubscript:@"strokeCoveredTextRange"];
  }

  if ([infoCopy selectedTextRange] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v52.location = [infoCopy selectedTextRange];
    v21 = NSStringFromRange(v52);
    [dictionary setObject:v21 forKeyedSubscript:@"selectedTextRange"];
  }

  if ([infoCopy activePreviewRange] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v53.location = [infoCopy activePreviewRange];
    v22 = NSStringFromRange(v53);
    [dictionary setObject:v22 forKeyedSubscript:@"activePreviewRange"];
  }

  if ([infoCopy lastCharacterLevelPosition] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(infoCopy, "lastCharacterLevelPosition")}];
    [dictionary setObject:v23 forKeyedSubscript:@"lastCharacterLevelPosition"];
  }

  protectedCharacterIndexes = [infoCopy protectedCharacterIndexes];
  v25 = [protectedCharacterIndexes count];

  if (v25)
  {
    protectedCharacterIndexes2 = [infoCopy protectedCharacterIndexes];
    [dictionary setObject:protectedCharacterIndexes2 forKeyedSubscript:@"protectedCharacterIndexes"];
  }

  contentType = [infoCopy contentType];
  if (contentType > 7)
  {
    v28 = &stru_1F476BD20;
  }

  else
  {
    v28 = off_1E82DCC38[contentType];
  }

  [dictionary setObject:v28 forKeyedSubscript:@"contentType"];
  autoCapitalizationMode = [infoCopy autoCapitalizationMode];
  if (autoCapitalizationMode > 5)
  {
    v30 = &stru_1F476BD20;
  }

  else
  {
    v30 = off_1E82DCC78[autoCapitalizationMode];
  }

  [dictionary setObject:v30 forKeyedSubscript:@"autocapitalization"];
  autoCorrectionMode = [infoCopy autoCorrectionMode];
  if (autoCorrectionMode > 2)
  {
    v32 = &stru_1F476BD20;
  }

  else
  {
    v32 = off_1E82DCCA8[autoCorrectionMode];
  }

  [dictionary setObject:v32 forKeyedSubscript:@"autocorrection"];
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(infoCopy, "isCursorStrong")}];
  [dictionary setObject:v33 forKeyedSubscript:@"isCursorStrong"];

  v34 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(infoCopy, "isSingleLine")}];
  [dictionary setObject:v34 forKeyedSubscript:@"isSingleLine"];

  v35 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(infoCopy, "containsCommittedStrokes")}];
  [dictionary setObject:v35 forKeyedSubscript:@"containsCommittedStrokes"];

  if (level == 1)
  {
    referenceSubstringRange = [infoCopy referenceSubstringRange];
    if (referenceSubstringRange != 0x7FFFFFFFFFFFFFFFLL)
    {
      v38 = v37;
      if (v37)
      {
        v39 = referenceSubstringRange;
        v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v37];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __158__PKTextInputDebugRecordingLogEntry__dictionaryRepresentationForTargetContentInfo_elementType_detailLevel_contentLevel_resultAffectedRange_localeIdentifiers___block_invoke;
        v47[3] = &unk_1E82DCBD0;
        v48 = v40;
        v41 = v40;
        [infoCopy enumerateCharacterRectsInRange:v39 block:{v38, v47}];
        [dictionary setObject:v41 forKeyedSubscript:@"characterRectsInReferenceSubstring"];
      }
    }
  }

  firstObject = [identifiersCopy firstObject];
  v43 = [self _referenceSubstringForTargetContentInfo:infoCopy resultAffectedRange:range.location targetContentLevel:range.length localeIdentifier:{contentLevel, firstObject}];

  if (contentLevel > 2)
  {
    v44 = 0;
  }

  else
  {
    v44 = off_1E82DCCC0[contentLevel];
  }

  [dictionary setObject:v43 forKeyedSubscript:@"referenceSubstring"];
  [dictionary setObject:v44 forKeyedSubscript:@"referenceSubstringLogContentLevel"];

  return dictionary;
}

void __158__PKTextInputDebugRecordingLogEntry__dictionaryRepresentationForTargetContentInfo_elementType_detailLevel_contentLevel_resultAffectedRange_localeIdentifiers___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v6 = NSStringFromCGRect(*&a2);
  [v5 addObject:v6];
}

@end