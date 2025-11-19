@interface PKTextInputDebugLogEntry
+ (id)_minimalReferenceString:(id)a3 rangeOfInterest:(_NSRange)a4 tokenSearchDistance:(int64_t)a5 localeIdentifier:(id)a6;
+ (id)_mutableDictionaryRepresentationForResultQueryItem:(id)a3 detailLevel:(int64_t)a4;
+ (id)_referenceSubstringForTargetContentInfo:(id)a3 resultAffectedRange:(_NSRange)a4 targetContentLevel:(int64_t)a5 localeIdentifier:(id)a6;
+ (id)loggedDateFormatter;
+ (id)mediumDescriptionForResultQueryItem:(id)a3;
- (_NSRange)resultAffectedRange;
- (id)description;
- (id)mediumDescription;
- (id)minimalDescription;
- (id)referenceSubstringWithTargetContentLevel:(int64_t)a3;
- (int64_t)resultType;
@end

@implementation PKTextInputDebugLogEntry

- (id)description
{
  v3 = [(PKTextInputDebugLogEntry *)self inputDrawing];
  v4 = [v3 strokes];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = @"1 stroke";
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld strokes", v5];
  }

  v7 = [(PKTextInputDebugLogEntry *)self resultTopTranscription];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F476BD20;
  }

  v10 = v9;

  v11 = [(PKTextInputDebugLogEntry *)self resultCommittedText];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F476BD20;
  }

  v14 = v13;

  if ([(PKTextInputDebugLogEntry *)self resultAffectedRange]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = @"N/A";
  }

  else
  {
    v25.location = [(PKTextInputDebugLogEntry *)self resultAffectedRange];
    v15 = NSStringFromRange(v25);
  }

  v23.receiver = self;
  v23.super_class = PKTextInputDebugLogEntry;
  v16 = [(PKTextInputDebugLogEntry *)&v23 description];
  v17 = [(PKTextInputDebugLogEntry *)self inputTargetContentInfo];
  v18 = [v17 textInputTarget];
  v19 = [v18 inputTargetIdentifier];
  v20 = [(PKTextInputDebugLogEntry *)self resultTypeDescription];
  v21 = [v16 stringByAppendingFormat:@" drawing: %@, targetID: %@, resultType: %@, affectedRange: %@, transcription: %@, committedText: %@", v6, v19, v20, v15, v10, v14];

  return v21;
}

- (id)minimalDescription
{
  v3 = [(PKTextInputDebugLogEntry *)self inputDrawing];
  v4 = [v3 strokes];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = @"1 stroke";
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld strokes", v5];
  }

  if ([(PKTextInputDebugLogEntry *)self resultAffectedRange]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = @"(No range)";
  }

  else
  {
    v16.location = [(PKTextInputDebugLogEntry *)self resultAffectedRange];
    v7 = NSStringFromRange(v16);
  }

  if ([(PKTextInputDebugLogEntry *)self resultType]== 1)
  {
    v8 = [(PKTextInputDebugLogEntry *)self resultTopTranscription];
    v9 = v8;
    v10 = &stru_1F476BD20;
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Text: %@", v11];
  }

  else
  {
    v12 = [(PKTextInputDebugLogEntry *)self resultTypeDescription];
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@, %@", v6, v7, v12];

  return v13;
}

- (int64_t)resultType
{
  v2 = [(PKTextInputDebugLogEntry *)self resultTypeDescription];
  if ([v2 isEqualToString:@"None"])
  {
    v3 = 0;
  }

  else if ([v2 isEqualToString:@"Text"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"Dot"])
  {
    v3 = 2;
  }

  else if ([v2 isEqualToString:@"Line"])
  {
    v3 = 3;
  }

  else if ([v2 isEqualToString:@"Encircle"])
  {
    v3 = 4;
  }

  else if ([v2 isEqualToString:@"Polygon"])
  {
    v3 = 5;
  }

  else if ([v2 isEqualToString:@"Scribble"])
  {
    v3 = 6;
  }

  else if ([v2 isEqualToString:@"SplitJoin"])
  {
    v3 = 7;
  }

  else if ([v2 isEqualToString:@"InsertionCaret"])
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)mediumDescription
{
  v2 = [(PKTextInputDebugLogEntry *)self dictionaryRepresentationWithDetailLevel:0 targetContentLevel:2];
  v3 = [v2 description];

  return v3;
}

+ (id)mediumDescriptionForResultQueryItem:(id)a3
{
  v3 = [(PKTextInputDebugLogEntry *)PKTextInputDebugRecordingLogEntry _mutableDictionaryRepresentationForResultQueryItem:a3 detailLevel:0];
  v4 = [v3 description];

  return v4;
}

- (id)referenceSubstringWithTargetContentLevel:(int64_t)a3
{
  v5 = [(PKTextInputDebugLogEntry *)self inputTargetContentInfo];
  v6 = [(PKTextInputDebugLogEntry *)self resultAffectedRange];
  v8 = v7;
  v9 = objc_opt_class();
  v10 = [(PKTextInputDebugLogEntry *)self recognitionLocaleIdentifiers];
  v11 = [v10 firstObject];
  v12 = [v9 _referenceSubstringForTargetContentInfo:v5 resultAffectedRange:v6 targetContentLevel:v8 localeIdentifier:{a3, v11}];

  return v12;
}

+ (id)_referenceSubstringForTargetContentInfo:(id)a3 resultAffectedRange:(_NSRange)a4 targetContentLevel:(int64_t)a5 localeIdentifier:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  v12 = a6;
  v13 = [v11 referenceSubstring];
  v14 = v13;
  switch(a5)
  {
    case 2:
      v21 = v13;
      goto LABEL_12;
    case 1:
      v20 = 0x7FFFFFFFFFFFFFFFLL;
      if (location == 0x7FFFFFFFFFFFFFFFLL || [v11 referenceSubstringRange] == 0x7FFFFFFFFFFFFFFFLL || location < objc_msgSend(v11, "referenceSubstringRange"))
      {
        length = 0;
      }

      else
      {
        v24 = [v11 referenceSubstringRange];
        if (location + length <= v24 + v25)
        {
          v20 = location - [v11 referenceSubstringRange];
        }

        else
        {
          length = 0;
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      v15 = a1;
      v16 = v14;
      v17 = v20;
      v18 = length;
      v19 = 10;
      goto LABEL_10;
    case 0:
      v15 = a1;
      v16 = v14;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
      v18 = 0;
      v19 = 0;
LABEL_10:
      v21 = [v15 _minimalReferenceString:v16 rangeOfInterest:v17 tokenSearchDistance:v18 localeIdentifier:{v19, v12}];
LABEL_12:
      v22 = v21;
      goto LABEL_14;
  }

  v22 = &stru_1F476BD20;
LABEL_14:

  return v22;
}

+ (id)_mutableDictionaryRepresentationForResultQueryItem:(id)a3 detailLevel:(int64_t)a4
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [v5 correctionResult];
  v8 = [v7 textResult];
  v9 = [v5 itemIdentifier];
  [v6 setObject:v9 forKeyedSubscript:@"itemIdentifier"];

  v10 = [v5 itemStableIdentifier];
  [v6 setObject:v10 forKeyedSubscript:@"itemStableIdentifier"];

  if (v7)
  {
    v11 = [v7 inputTarget];
    v12 = [v11 inputTargetIdentifier];
    [v6 setObject:v12 forKeyedSubscript:@"inputTargetIdentifier"];

    v79.location = [v7 affectedRange];
    v13 = NSStringFromRange(v79);
    [v6 setObject:v13 forKeyedSubscript:@"affectedRange"];

    v14 = _PKDescriptionForCHCorrectionType([v7 resultType]);
    [v6 setObject:v14 forKeyedSubscript:@"resultType"];

    v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "isCharacterLevel")}];
    [v6 setObject:v15 forKeyedSubscript:@"isCharacterLevel"];

    v16 = [v8 recognizerDebugDescription];
    [v6 setObject:v16 forKeyedSubscript:@"recognizerInfo"];

    v17 = [v7 error];

    if (v17)
    {
      v18 = [v7 error];
      v19 = [v18 localizedDescription];
      [v6 setObject:v19 forKeyedSubscript:@"error"];
    }

    if (v8)
    {
      v55 = a4;
      v56 = v7;
      v57 = v5;
      v20 = [v8 topTranscription];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = &stru_1F476BD20;
      }

      v58 = v6;
      [v6 setObject:v22 forKeyedSubscript:@"topTranscription"];

      v61 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "tokenColumnCount")}];
      v23 = [v8 transcriptionPaths];
      v60 = [v23 firstObject];

      if ([v8 tokenColumnCount] >= 1)
      {
        v24 = 0;
        v59 = v8;
        do
        {
          v25 = v8;
          [v8 tokenRowsAtColumnIndex:v24];
          v63 = v62 = v24;
          v26 = [v63 objectAtIndexedSubscript:{objc_msgSend(v60, "indexAtPosition:", v24)}];
          v27 = [MEMORY[0x1E696AD60] string];
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v28 = v26;
          v29 = [v28 countByEnumeratingWithState:&v68 objects:v76 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = 0;
            v32 = *v69;
            do
            {
              v33 = 0;
              v64 = v31;
              do
              {
                if (*v69 != v32)
                {
                  objc_enumerationMutation(v28);
                }

                v34 = *(*(&v68 + 1) + 8 * v33);
                if (v31 < 1)
                {
                  v35 = &stru_1F476BD20;
                }

                else
                {
                  v35 = [v25 precedingSeparatorForToken:*(*(&v68 + 1) + 8 * v33)];
                }

                v36 = [v34 string];
                v37 = v36;
                if (v36)
                {
                  v38 = v36;
                }

                else
                {
                  v38 = &stru_1F476BD20;
                }

                v39 = v38;

                [v27 appendFormat:@"%@%@", v35, v39];
                ++v31;

                ++v33;
              }

              while (v30 != v33);
              v31 = v30 + v64;
              v30 = [v28 countByEnumeratingWithState:&v68 objects:v76 count:16];
            }

            while (v30);
          }

          v40 = [v63 count];
          v41 = [v28 firstObject];
          if (v41)
          {
            v42 = [v25 precedingSeparatorForToken:v41];
          }

          else
          {
            v42 = 0;
          }

          v43 = &stru_1F476BD20;
          v44 = v40 - 1;
          if (v42)
          {
            v43 = v42;
          }

          v45 = v43;

          v46 = [v25 strokeIndexesForColumnsInRange:{v62, 1}];
          v47 = [MEMORY[0x1E696AD60] string];
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __91__PKTextInputDebugLogEntry__mutableDictionaryRepresentationForResultQueryItem_detailLevel___block_invoke;
          v66[3] = &unk_1E82DCBA8;
          v67 = v47;
          v48 = v47;
          [v46 enumerateRangesUsingBlock:v66];
          v75[0] = v27;
          v74[0] = @"topTranscription";
          v74[1] = @"candidatesCount";
          v49 = [MEMORY[0x1E696AD98] numberWithInteger:v44];
          v75[1] = v49;
          v75[2] = v45;
          v74[2] = @"precedingSeparator";
          v74[3] = @"strokeIndexes";
          v75[3] = v48;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:4];
          [v61 addObject:v50];

          v8 = v59;
          v24 = v62 + 1;
        }

        while (v62 + 1 < [v59 tokenColumnCount]);
      }

      v6 = v58;
      [v58 setObject:v61 forKeyedSubscript:@"tokenColumns"];
      v7 = v56;
      v5 = v57;
      if (v55 == 1)
      {
        v65 = 0;
        v51 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v65];
        v52 = v65;
        if (v51)
        {
          [v58 setObject:v51 forKeyedSubscript:@"tokenizedTextResultData"];
        }

        else
        {
          v53 = os_log_create("com.apple.pencilkit", "PencilTextInput");
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v73 = v52;
            _os_log_error_impl(&dword_1C7CCA000, v53, OS_LOG_TYPE_ERROR, "Error archiving CHTokenizedTextResult: %@", buf, 0xCu);
          }
        }
      }
    }
  }

  return v6;
}

void __91__PKTextInputDebugLogEntry__mutableDictionaryRepresentationForResultQueryItem_detailLevel___block_invoke(uint64_t a1, NSUInteger a2, NSUInteger a3)
{
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  v6 = *(a1 + 32);
  v9.location = a2;
  v9.length = a3;
  v7 = NSStringFromRange(v9);
  [v6 appendFormat:@"%@", v7];
}

+ (id)loggedDateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  v4 = [MEMORY[0x1E695DFE8] localTimeZone];
  [v2 setTimeZone:v4];

  [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS Z"];

  return v2;
}

+ (id)_minimalReferenceString:(id)a3 rangeOfInterest:(_NSRange)a4 tokenSearchDistance:(int64_t)a5 localeIdentifier:(id)a6
{
  length = a4.length;
  location = a4.location;
  v10 = a3;
  v11 = a6;
  if (location == 0x7FFFFFFFFFFFFFFFLL || ![(__CFString *)v10 length])
  {
    v28 = [&stru_1F476BD20 stringByPaddingToLength:-[__CFString length](v10 withString:"length") startingAtIndex:{@"_", 0}];
  }

  else
  {
    if (![v11 length] || (objc_msgSend(MEMORY[0x1E695DF58], "localeWithLocaleIdentifier:", v11), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v12 = [MEMORY[0x1E695DF58] currentLocale];
    }

    v13 = location - a5;
    v14 = (location - a5) & ~((location - a5) >> 63);
    v15 = location + length + a5;
    v16 = [(__CFString *)v10 length];
    if (v15 >= v16 - 1)
    {
      v17 = v16 - 1;
    }

    else
    {
      v17 = v15;
    }

    v18 = [(__CFString *)v10 length];
    if (v17 + 10 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17 + 10;
    }

    v20 = 10;
    if (v13 > 10)
    {
      v20 = v13;
    }

    v36.location = v20 - 10;
    v36.length = v19 - (v20 - 10);
    v21 = CFStringTokenizerCreate(0, v10, v36, 4uLL, v12);
    if (CFStringTokenizerGoToTokenAtIndex(v21, v14))
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v21);
      if (CurrentTokenRange.location != 0x7FFFFFFFFFFFFFFFLL)
      {
        v34.location = location;
        v34.length = length;
        v23 = NSUnionRange(v34, CurrentTokenRange);
        location = v23.location;
        length = v23.length;
      }
    }

    if (CFStringTokenizerGoToTokenAtIndex(v21, v17))
    {
      v24 = CFStringTokenizerGetCurrentTokenRange(v21);
      if (v24.location != 0x7FFFFFFFFFFFFFFFLL)
      {
        v35.location = location;
        v35.length = length;
        v25 = NSUnionRange(v35, v24);
        location = v25.location;
        length = v25.length;
      }
    }

    if (v21)
    {
      CFRelease(v21);
    }

    v26 = [(__CFString *)v10 length];
    if (location == 0x7FFFFFFFFFFFFFFFLL || length + location > [(__CFString *)v10 length])
    {
      v27 = &stru_1F476BD20;
    }

    else
    {
      v27 = [(__CFString *)v10 substringWithRange:location, length];
      v26 = location;
    }

    v29 = [&stru_1F476BD20 stringByPaddingToLength:v26 withString:@"_" startingAtIndex:0];
    v30 = [v29 stringByAppendingString:v27];

    v31 = [v30 stringByPaddingToLength:-[__CFString length](v10 withString:"length") startingAtIndex:{@"_", 0}];

    v28 = v31;
  }

  return v28;
}

- (_NSRange)resultAffectedRange
{
  length = self->_resultAffectedRange.length;
  location = self->_resultAffectedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end