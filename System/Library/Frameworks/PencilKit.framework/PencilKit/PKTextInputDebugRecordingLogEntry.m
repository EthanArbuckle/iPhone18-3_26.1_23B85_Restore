@interface PKTextInputDebugRecordingLogEntry
+ (id)_dictionaryRepresentationForDrawing:(id)a3 detailLevel:(int64_t)a4 containsInProgress:(BOOL)a5;
+ (id)_dictionaryRepresentationForTarget:(id)a3;
+ (id)_dictionaryRepresentationForTargetContentInfo:(id)a3 elementType:(id)a4 detailLevel:(int64_t)a5 contentLevel:(int64_t)a6 resultAffectedRange:(_NSRange)a7 localeIdentifiers:(id)a8;
- (PKTextInputDebugRecordingLogEntry)initWithResultCommand:(id)a3;
- (id)dictionaryRepresentationWithDetailLevel:(int64_t)a3 targetContentLevel:(int64_t)a4;
- (id)inputDrawing;
- (void)_extractDataFromResultCommand:(id)a3;
@end

@implementation PKTextInputDebugRecordingLogEntry

- (PKTextInputDebugRecordingLogEntry)initWithResultCommand:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKTextInputDebugRecordingLogEntry;
  v5 = [(PKTextInputDebugRecordingLogEntry *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKTextInputDebugRecordingLogEntry *)v5 _extractDataFromResultCommand:v4];
  }

  return v6;
}

- (void)_extractDataFromResultCommand:(id)a3
{
  v4 = a3;
  v46 = v4;
  if (v4)
  {
    v5 = v4[5];
    v6 = v46[4];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 correctionResult];

  v9 = [MEMORY[0x1E695DF00] date];
  [(PKTextInputDebugLogEntry *)self setEntryDate:v9];

  v10 = [v5 languageSpec];
  v11 = [(PKTextInputLanguageSpec *)v10 debugLocaleDescriptions];
  [(PKTextInputDebugLogEntry *)self setRecognitionLocaleIdentifiers:v11];

  v12 = [v5 strokeProvider];
  v13 = [v12 drawing];
  [(PKTextInputDebugRecordingLogEntry *)self set_originalDrawing:v13];

  v14 = [v5 inputInProgressStroke];
  [(PKTextInputDebugLogEntry *)self setInputContainsInProgressStroke:v14 != 0];

  v15 = [v5 textInputTargets];
  v16 = [v15 copy];
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
  v32 = [(PKTextInputElement *)v31 debugElementTypeDescription];
  [(PKTextInputDebugLogEntry *)self setInputTargetElementType:v32];

LABEL_15:
  if (v46)
  {
    v33 = v46[4];
    [(PKTextInputDebugRecordingLogEntry *)self set_resultQueryItem:v33];

    v34 = [v8 textResult];
    [(PKTextInputDebugLogEntry *)self setTokenizedTextResult:v34];

    v35 = v46[10];
  }

  else
  {
    [(PKTextInputDebugRecordingLogEntry *)self set_resultQueryItem:0];
    v45 = [v8 textResult];
    [(PKTextInputDebugLogEntry *)self setTokenizedTextResult:v45];

    v35 = 0;
  }

  v36 = v35;
  [(PKTextInputDebugLogEntry *)self setResultCommittedText:v36];

  v37 = [v8 textResult];
  v38 = [v37 topTranscription];
  [(PKTextInputDebugLogEntry *)self setResultTopTranscription:v38];

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

  if (v8)
  {
    v41 = [v8 affectedRange];
    v43 = v42;
  }

  else
  {
    v43 = 0;
    v41 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(PKTextInputDebugLogEntry *)self setResultAffectedRange:v41, v43];
  v44 = _PKDescriptionForCHCorrectionType([v8 resultType]);
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
    v4 = [MEMORY[0x1E69DC888] blackColor];
    v5 = [PKTextInputCanvasController defaultInkWithColor:v4];

    v6 = MEMORY[0x1E695DF70];
    v7 = [(PKTextInputDebugRecordingLogEntry *)self _originalDrawing];
    v8 = [v7 strokes];
    v9 = [v6 arrayWithCapacity:{objc_msgSend(v8, "count")}];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [(PKTextInputDebugRecordingLogEntry *)self _originalDrawing];
    v11 = [v10 strokes];

    obj = v11;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          v17 = [(PKTextInputDebugRecordingLogEntry *)self _originalDrawing];
          v18 = objc_alloc([v17 strokeClass]);
          v19 = [v16 path];
          if (v16)
          {
            [v16 transform];
          }

          else
          {
            memset(v26, 0, sizeof(v26));
          }

          v20 = [v16 mask];
          v21 = [v18 initWithInk:v5 strokePath:v19 transform:v26 mask:v20];
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

- (id)dictionaryRepresentationWithDetailLevel:(int64_t)a3 targetContentLevel:(int64_t)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:20];
  v7 = [objc_opt_class() loggedDateFormatter];
  v8 = [(PKTextInputDebugLogEntry *)self entryDate];
  v9 = [v7 stringFromDate:v8];
  [v6 setObject:v9 forKeyedSubscript:@"date"];

  v10 = [(PKTextInputDebugRecordingLogEntry *)self inputDrawing];
  if (v10)
  {
    v11 = [objc_opt_class() _dictionaryRepresentationForDrawing:v10 detailLevel:a3 containsInProgress:{-[PKTextInputDebugLogEntry inputContainsInProgressStroke](self, "inputContainsInProgressStroke")}];
    [v6 setObject:v11 forKeyedSubscript:@"inputDrawing"];
  }

  v12 = 0x1E696A000uLL;
  if (a3)
  {
    if (a3 == 1)
    {
      v13 = MEMORY[0x1E695DF70];
      v14 = [(PKTextInputDebugLogEntry *)self inputTargets];
      v15 = [v13 arrayWithCapacity:{objc_msgSend(v14, "count")}];

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v16 = [(PKTextInputDebugLogEntry *)self inputTargets];
      v17 = [v16 countByEnumeratingWithState:&v62 objects:v66 count:16];
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
              objc_enumerationMutation(v16);
            }

            v21 = [objc_opt_class() _dictionaryRepresentationForTarget:*(*(&v62 + 1) + 8 * i)];
            [v15 addObject:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v62 objects:v66 count:16];
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
    v23 = [(PKTextInputDebugLogEntry *)self inputTargets];
    v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(v23, "count")}];
    [v6 setObject:v24 forKeyedSubscript:@"inputTargetsCount"];
  }

  v25 = [(PKTextInputDebugLogEntry *)self inputTargetContentInfo];

  if (v25)
  {
    v60 = [(PKTextInputDebugLogEntry *)self resultAffectedRange];
    v27 = v26;
    v28 = v6;
    v29 = a3;
    v30 = v10;
    v31 = v12;
    v32 = objc_opt_class();
    v33 = [(PKTextInputDebugLogEntry *)self inputTargetContentInfo];
    v34 = [(PKTextInputDebugLogEntry *)self inputTargetElementType];
    v35 = [(PKTextInputDebugLogEntry *)self recognitionLocaleIdentifiers];
    v36 = v32;
    v12 = v31;
    v10 = v30;
    a3 = v29;
    v6 = v28;
    v37 = [v36 _dictionaryRepresentationForTargetContentInfo:v33 elementType:v34 detailLevel:a3 contentLevel:a4 resultAffectedRange:v60 localeIdentifiers:{v27, v35}];

    [v6 setObject:v37 forKeyedSubscript:@"inputTargetContentInfo"];
  }

  v38 = [(PKTextInputDebugRecordingLogEntry *)self _resultQueryItem];

  if (v38)
  {
    v39 = objc_opt_class();
    v40 = [(PKTextInputDebugRecordingLogEntry *)self _resultQueryItem];
    v41 = [v39 _mutableDictionaryRepresentationForResultQueryItem:v40 detailLevel:a3];

    v42 = *(v12 + 3480);
    [(PKTextInputDebugLogEntry *)self resultRecognitionDuration];
    v43 = [v42 numberWithDouble:?];
    [v41 setObject:v43 forKeyedSubscript:@"recognitionDuration"];

    v44 = [(PKTextInputDebugLogEntry *)self recognitionLocaleIdentifiers];
    v45 = v44;
    if (v44)
    {
      v46 = v44;
    }

    else
    {
      v46 = MEMORY[0x1E695E0F0];
    }

    [v41 setObject:v46 forKeyedSubscript:@"recognitionLocales"];

    v47 = [(PKTextInputDebugLogEntry *)self recognitionLocaleIdentifiers];
    v48 = [v47 firstObject];
    v49 = v48;
    if (v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = &stru_1F476BD20;
    }

    [v41 setObject:v50 forKeyedSubscript:@"recognitionLocale"];

    [v6 setObject:v41 forKeyedSubscript:@"recognitionResult"];
  }

  v51 = [(PKTextInputDebugLogEntry *)self resultCommittedText];
  v52 = v51;
  if (v51)
  {
    v53 = v51;
  }

  else
  {
    v53 = &stru_1F476BD20;
  }

  [v6 setObject:v53 forKeyedSubscript:@"committedText"];

  v54 = [*(v12 + 3480) numberWithInteger:{-[PKTextInputDebugLogEntry resultCommittedTokenColumnCount](self, "resultCommittedTokenColumnCount")}];
  [v6 setObject:v54 forKeyedSubscript:@"committedTokenColumnCount"];

  v55 = [(PKTextInputDebugLogEntry *)self resultCommitReason];
  v56 = v55;
  if (v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = &stru_1F476BD20;
  }

  [v6 setObject:v57 forKeyedSubscript:@"commitReason"];

  v58 = [v6 copy];

  return v58;
}

+ (id)_dictionaryRepresentationForDrawing:(id)a3 detailLevel:(int64_t)a4 containsInProgress:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = MEMORY[0x1E696AD98];
  v10 = [v7 strokes];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
  [v8 setObject:v11 forKeyedSubscript:@"strokeCount"];

  [v7 bounds];
  v12 = NSStringFromCGRect(v17);
  [v8 setObject:v12 forKeyedSubscript:@"bounds"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  [v8 setObject:v13 forKeyedSubscript:@"containsInProgressStroke"];

  if (a4 == 1)
  {
    v14 = [v7 dataRepresentation];
    [v8 setObject:v14 forKeyedSubscript:@"drawingData"];
  }

  return v8;
}

+ (id)_dictionaryRepresentationForTarget:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16[0] = @"identifier";
  v3 = a3;
  v4 = [v3 inputTargetIdentifier];
  v16[1] = @"frame";
  v17[0] = v4;
  [v3 frame];
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

+ (id)_dictionaryRepresentationForTargetContentInfo:(id)a3 elementType:(id)a4 detailLevel:(int64_t)a5 contentLevel:(int64_t)a6 resultAffectedRange:(_NSRange)a7 localeIdentifiers:(id)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a8;
  v15 = [MEMORY[0x1E695DF90] dictionary];
  v16 = [v12 textInputTarget];
  v17 = [v16 inputTargetIdentifier];
  [v15 setObject:v17 forKeyedSubscript:@"targetIdentifier"];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "textContentLength")}];
  [v15 setObject:v18 forKeyedSubscript:@"textContentLength"];

  if (v13)
  {
    [v15 setObject:v13 forKeyedSubscript:@"elementType"];
  }

  if ([v12 referenceSubstringRange] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v50.location = [v12 referenceSubstringRange];
    v19 = NSStringFromRange(v50);
    [v15 setObject:v19 forKeyedSubscript:@"referenceSubstringRange"];
  }

  if ([v12 strokeCoveredTextRange] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v51.location = [v12 strokeCoveredTextRange];
    v20 = NSStringFromRange(v51);
    [v15 setObject:v20 forKeyedSubscript:@"strokeCoveredTextRange"];
  }

  if ([v12 selectedTextRange] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v52.location = [v12 selectedTextRange];
    v21 = NSStringFromRange(v52);
    [v15 setObject:v21 forKeyedSubscript:@"selectedTextRange"];
  }

  if ([v12 activePreviewRange] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v53.location = [v12 activePreviewRange];
    v22 = NSStringFromRange(v53);
    [v15 setObject:v22 forKeyedSubscript:@"activePreviewRange"];
  }

  if ([v12 lastCharacterLevelPosition] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "lastCharacterLevelPosition")}];
    [v15 setObject:v23 forKeyedSubscript:@"lastCharacterLevelPosition"];
  }

  v24 = [v12 protectedCharacterIndexes];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [v12 protectedCharacterIndexes];
    [v15 setObject:v26 forKeyedSubscript:@"protectedCharacterIndexes"];
  }

  v27 = [v12 contentType];
  if (v27 > 7)
  {
    v28 = &stru_1F476BD20;
  }

  else
  {
    v28 = off_1E82DCC38[v27];
  }

  [v15 setObject:v28 forKeyedSubscript:@"contentType"];
  v29 = [v12 autoCapitalizationMode];
  if (v29 > 5)
  {
    v30 = &stru_1F476BD20;
  }

  else
  {
    v30 = off_1E82DCC78[v29];
  }

  [v15 setObject:v30 forKeyedSubscript:@"autocapitalization"];
  v31 = [v12 autoCorrectionMode];
  if (v31 > 2)
  {
    v32 = &stru_1F476BD20;
  }

  else
  {
    v32 = off_1E82DCCA8[v31];
  }

  [v15 setObject:v32 forKeyedSubscript:@"autocorrection"];
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "isCursorStrong")}];
  [v15 setObject:v33 forKeyedSubscript:@"isCursorStrong"];

  v34 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "isSingleLine")}];
  [v15 setObject:v34 forKeyedSubscript:@"isSingleLine"];

  v35 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "containsCommittedStrokes")}];
  [v15 setObject:v35 forKeyedSubscript:@"containsCommittedStrokes"];

  if (a5 == 1)
  {
    v36 = [v12 referenceSubstringRange];
    if (v36 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v38 = v37;
      if (v37)
      {
        v39 = v36;
        v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v37];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __158__PKTextInputDebugRecordingLogEntry__dictionaryRepresentationForTargetContentInfo_elementType_detailLevel_contentLevel_resultAffectedRange_localeIdentifiers___block_invoke;
        v47[3] = &unk_1E82DCBD0;
        v48 = v40;
        v41 = v40;
        [v12 enumerateCharacterRectsInRange:v39 block:{v38, v47}];
        [v15 setObject:v41 forKeyedSubscript:@"characterRectsInReferenceSubstring"];
      }
    }
  }

  v42 = [v14 firstObject];
  v43 = [a1 _referenceSubstringForTargetContentInfo:v12 resultAffectedRange:a7.location targetContentLevel:a7.length localeIdentifier:{a6, v42}];

  if (a6 > 2)
  {
    v44 = 0;
  }

  else
  {
    v44 = off_1E82DCCC0[a6];
  }

  [v15 setObject:v43 forKeyedSubscript:@"referenceSubstring"];
  [v15 setObject:v44 forKeyedSubscript:@"referenceSubstringLogContentLevel"];

  return v15;
}

void __158__PKTextInputDebugRecordingLogEntry__dictionaryRepresentationForTargetContentInfo_elementType_detailLevel_contentLevel_resultAffectedRange_localeIdentifiers___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v6 = NSStringFromCGRect(*&a2);
  [v5 addObject:v6];
}

@end