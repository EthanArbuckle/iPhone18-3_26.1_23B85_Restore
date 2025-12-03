@interface PKTextInputDebugLogEntry
+ (id)_minimalReferenceString:(id)string rangeOfInterest:(_NSRange)interest tokenSearchDistance:(int64_t)distance localeIdentifier:(id)identifier;
+ (id)_mutableDictionaryRepresentationForResultQueryItem:(id)item detailLevel:(int64_t)level;
+ (id)_referenceSubstringForTargetContentInfo:(id)info resultAffectedRange:(_NSRange)range targetContentLevel:(int64_t)level localeIdentifier:(id)identifier;
+ (id)loggedDateFormatter;
+ (id)mediumDescriptionForResultQueryItem:(id)item;
- (_NSRange)resultAffectedRange;
- (id)description;
- (id)mediumDescription;
- (id)minimalDescription;
- (id)referenceSubstringWithTargetContentLevel:(int64_t)level;
- (int64_t)resultType;
@end

@implementation PKTextInputDebugLogEntry

- (id)description
{
  inputDrawing = [(PKTextInputDebugLogEntry *)self inputDrawing];
  strokes = [inputDrawing strokes];
  v5 = [strokes count];

  if (v5 == 1)
  {
    v6 = @"1 stroke";
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld strokes", v5];
  }

  resultTopTranscription = [(PKTextInputDebugLogEntry *)self resultTopTranscription];
  v8 = resultTopTranscription;
  if (resultTopTranscription)
  {
    v9 = resultTopTranscription;
  }

  else
  {
    v9 = &stru_1F476BD20;
  }

  v10 = v9;

  resultCommittedText = [(PKTextInputDebugLogEntry *)self resultCommittedText];
  v12 = resultCommittedText;
  if (resultCommittedText)
  {
    v13 = resultCommittedText;
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
  inputTargetContentInfo = [(PKTextInputDebugLogEntry *)self inputTargetContentInfo];
  textInputTarget = [inputTargetContentInfo textInputTarget];
  inputTargetIdentifier = [textInputTarget inputTargetIdentifier];
  resultTypeDescription = [(PKTextInputDebugLogEntry *)self resultTypeDescription];
  v21 = [v16 stringByAppendingFormat:@" drawing: %@, targetID: %@, resultType: %@, affectedRange: %@, transcription: %@, committedText: %@", v6, inputTargetIdentifier, resultTypeDescription, v15, v10, v14];

  return v21;
}

- (id)minimalDescription
{
  inputDrawing = [(PKTextInputDebugLogEntry *)self inputDrawing];
  strokes = [inputDrawing strokes];
  v5 = [strokes count];

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
    resultTopTranscription = [(PKTextInputDebugLogEntry *)self resultTopTranscription];
    v9 = resultTopTranscription;
    v10 = &stru_1F476BD20;
    if (resultTopTranscription)
    {
      v10 = resultTopTranscription;
    }

    v11 = v10;

    resultTypeDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Text: %@", v11];
  }

  else
  {
    resultTypeDescription = [(PKTextInputDebugLogEntry *)self resultTypeDescription];
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@, %@", v6, v7, resultTypeDescription];

  return v13;
}

- (int64_t)resultType
{
  resultTypeDescription = [(PKTextInputDebugLogEntry *)self resultTypeDescription];
  if ([resultTypeDescription isEqualToString:@"None"])
  {
    v3 = 0;
  }

  else if ([resultTypeDescription isEqualToString:@"Text"])
  {
    v3 = 1;
  }

  else if ([resultTypeDescription isEqualToString:@"Dot"])
  {
    v3 = 2;
  }

  else if ([resultTypeDescription isEqualToString:@"Line"])
  {
    v3 = 3;
  }

  else if ([resultTypeDescription isEqualToString:@"Encircle"])
  {
    v3 = 4;
  }

  else if ([resultTypeDescription isEqualToString:@"Polygon"])
  {
    v3 = 5;
  }

  else if ([resultTypeDescription isEqualToString:@"Scribble"])
  {
    v3 = 6;
  }

  else if ([resultTypeDescription isEqualToString:@"SplitJoin"])
  {
    v3 = 7;
  }

  else if ([resultTypeDescription isEqualToString:@"InsertionCaret"])
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

+ (id)mediumDescriptionForResultQueryItem:(id)item
{
  v3 = [(PKTextInputDebugLogEntry *)PKTextInputDebugRecordingLogEntry _mutableDictionaryRepresentationForResultQueryItem:item detailLevel:0];
  v4 = [v3 description];

  return v4;
}

- (id)referenceSubstringWithTargetContentLevel:(int64_t)level
{
  inputTargetContentInfo = [(PKTextInputDebugLogEntry *)self inputTargetContentInfo];
  resultAffectedRange = [(PKTextInputDebugLogEntry *)self resultAffectedRange];
  v8 = v7;
  v9 = objc_opt_class();
  recognitionLocaleIdentifiers = [(PKTextInputDebugLogEntry *)self recognitionLocaleIdentifiers];
  firstObject = [recognitionLocaleIdentifiers firstObject];
  v12 = [v9 _referenceSubstringForTargetContentInfo:inputTargetContentInfo resultAffectedRange:resultAffectedRange targetContentLevel:v8 localeIdentifier:{level, firstObject}];

  return v12;
}

+ (id)_referenceSubstringForTargetContentInfo:(id)info resultAffectedRange:(_NSRange)range targetContentLevel:(int64_t)level localeIdentifier:(id)identifier
{
  length = range.length;
  location = range.location;
  infoCopy = info;
  identifierCopy = identifier;
  referenceSubstring = [infoCopy referenceSubstring];
  v14 = referenceSubstring;
  switch(level)
  {
    case 2:
      v21 = referenceSubstring;
      goto LABEL_12;
    case 1:
      v20 = 0x7FFFFFFFFFFFFFFFLL;
      if (location == 0x7FFFFFFFFFFFFFFFLL || [infoCopy referenceSubstringRange] == 0x7FFFFFFFFFFFFFFFLL || location < objc_msgSend(infoCopy, "referenceSubstringRange"))
      {
        length = 0;
      }

      else
      {
        referenceSubstringRange = [infoCopy referenceSubstringRange];
        if (location + length <= referenceSubstringRange + v25)
        {
          v20 = location - [infoCopy referenceSubstringRange];
        }

        else
        {
          length = 0;
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      selfCopy2 = self;
      v16 = v14;
      v17 = v20;
      v18 = length;
      v19 = 10;
      goto LABEL_10;
    case 0:
      selfCopy2 = self;
      v16 = v14;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
      v18 = 0;
      v19 = 0;
LABEL_10:
      v21 = [selfCopy2 _minimalReferenceString:v16 rangeOfInterest:v17 tokenSearchDistance:v18 localeIdentifier:{v19, identifierCopy}];
LABEL_12:
      v22 = v21;
      goto LABEL_14;
  }

  v22 = &stru_1F476BD20;
LABEL_14:

  return v22;
}

+ (id)_mutableDictionaryRepresentationForResultQueryItem:(id)item detailLevel:(int64_t)level
{
  v77 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  correctionResult = [itemCopy correctionResult];
  textResult = [correctionResult textResult];
  itemIdentifier = [itemCopy itemIdentifier];
  [dictionary setObject:itemIdentifier forKeyedSubscript:@"itemIdentifier"];

  itemStableIdentifier = [itemCopy itemStableIdentifier];
  [dictionary setObject:itemStableIdentifier forKeyedSubscript:@"itemStableIdentifier"];

  if (correctionResult)
  {
    inputTarget = [correctionResult inputTarget];
    inputTargetIdentifier = [inputTarget inputTargetIdentifier];
    [dictionary setObject:inputTargetIdentifier forKeyedSubscript:@"inputTargetIdentifier"];

    v79.location = [correctionResult affectedRange];
    v13 = NSStringFromRange(v79);
    [dictionary setObject:v13 forKeyedSubscript:@"affectedRange"];

    v14 = _PKDescriptionForCHCorrectionType([correctionResult resultType]);
    [dictionary setObject:v14 forKeyedSubscript:@"resultType"];

    v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(correctionResult, "isCharacterLevel")}];
    [dictionary setObject:v15 forKeyedSubscript:@"isCharacterLevel"];

    recognizerDebugDescription = [textResult recognizerDebugDescription];
    [dictionary setObject:recognizerDebugDescription forKeyedSubscript:@"recognizerInfo"];

    error = [correctionResult error];

    if (error)
    {
      error2 = [correctionResult error];
      localizedDescription = [error2 localizedDescription];
      [dictionary setObject:localizedDescription forKeyedSubscript:@"error"];
    }

    if (textResult)
    {
      levelCopy = level;
      v56 = correctionResult;
      v57 = itemCopy;
      topTranscription = [textResult topTranscription];
      v21 = topTranscription;
      if (topTranscription)
      {
        v22 = topTranscription;
      }

      else
      {
        v22 = &stru_1F476BD20;
      }

      v58 = dictionary;
      [dictionary setObject:v22 forKeyedSubscript:@"topTranscription"];

      v61 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(textResult, "tokenColumnCount")}];
      transcriptionPaths = [textResult transcriptionPaths];
      firstObject = [transcriptionPaths firstObject];

      if ([textResult tokenColumnCount] >= 1)
      {
        v24 = 0;
        v59 = textResult;
        do
        {
          v25 = textResult;
          [textResult tokenRowsAtColumnIndex:v24];
          v63 = v62 = v24;
          v26 = [v63 objectAtIndexedSubscript:{objc_msgSend(firstObject, "indexAtPosition:", v24)}];
          string = [MEMORY[0x1E696AD60] string];
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

                string2 = [v34 string];
                v37 = string2;
                if (string2)
                {
                  v38 = string2;
                }

                else
                {
                  v38 = &stru_1F476BD20;
                }

                v39 = v38;

                [string appendFormat:@"%@%@", v35, v39];
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
          firstObject2 = [v28 firstObject];
          if (firstObject2)
          {
            v42 = [v25 precedingSeparatorForToken:firstObject2];
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
          string3 = [MEMORY[0x1E696AD60] string];
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __91__PKTextInputDebugLogEntry__mutableDictionaryRepresentationForResultQueryItem_detailLevel___block_invoke;
          v66[3] = &unk_1E82DCBA8;
          v67 = string3;
          v48 = string3;
          [v46 enumerateRangesUsingBlock:v66];
          v75[0] = string;
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

          textResult = v59;
          v24 = v62 + 1;
        }

        while (v62 + 1 < [v59 tokenColumnCount]);
      }

      dictionary = v58;
      [v58 setObject:v61 forKeyedSubscript:@"tokenColumns"];
      correctionResult = v56;
      itemCopy = v57;
      if (levelCopy == 1)
      {
        v65 = 0;
        v51 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:textResult requiringSecureCoding:1 error:&v65];
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

  return dictionary;
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

  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  [v2 setTimeZone:localTimeZone];

  [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS Z"];

  return v2;
}

+ (id)_minimalReferenceString:(id)string rangeOfInterest:(_NSRange)interest tokenSearchDistance:(int64_t)distance localeIdentifier:(id)identifier
{
  length = interest.length;
  location = interest.location;
  stringCopy = string;
  identifierCopy = identifier;
  if (location == 0x7FFFFFFFFFFFFFFFLL || ![(__CFString *)stringCopy length])
  {
    v28 = [&stru_1F476BD20 stringByPaddingToLength:-[__CFString length](stringCopy withString:"length") startingAtIndex:{@"_", 0}];
  }

  else
  {
    if (![identifierCopy length] || (objc_msgSend(MEMORY[0x1E695DF58], "localeWithLocaleIdentifier:", identifierCopy), (currentLocale = objc_claimAutoreleasedReturnValue()) == 0))
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    }

    v13 = location - distance;
    v14 = (location - distance) & ~((location - distance) >> 63);
    v15 = location + length + distance;
    v16 = [(__CFString *)stringCopy length];
    if (v15 >= v16 - 1)
    {
      v17 = v16 - 1;
    }

    else
    {
      v17 = v15;
    }

    v18 = [(__CFString *)stringCopy length];
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
    v21 = CFStringTokenizerCreate(0, stringCopy, v36, 4uLL, currentLocale);
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

    v26 = [(__CFString *)stringCopy length];
    if (location == 0x7FFFFFFFFFFFFFFFLL || length + location > [(__CFString *)stringCopy length])
    {
      v27 = &stru_1F476BD20;
    }

    else
    {
      v27 = [(__CFString *)stringCopy substringWithRange:location, length];
      v26 = location;
    }

    v29 = [&stru_1F476BD20 stringByPaddingToLength:v26 withString:@"_" startingAtIndex:0];
    v30 = [v29 stringByAppendingString:v27];

    v31 = [v30 stringByPaddingToLength:-[__CFString length](stringCopy withString:"length") startingAtIndex:{@"_", 0}];

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