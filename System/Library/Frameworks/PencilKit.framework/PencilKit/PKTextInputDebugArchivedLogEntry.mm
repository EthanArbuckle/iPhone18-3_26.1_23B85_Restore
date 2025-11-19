@interface PKTextInputDebugArchivedLogEntry
- (BOOL)_loadInputDrawingFromDictionary:(id)a3 errorMessage:(id *)a4;
- (BOOL)_loadRecognitionResultFromDictionary:(id)a3;
- (BOOL)_loadTargetContentInfoFromDictionary:(id)a3 targets:(id)a4;
- (BOOL)_loadTextInputTargetsFromDictionaries:(id)a3;
- (PKTextInputDebugArchivedLogEntry)initWithDictionary:(id)a3 error:(id *)a4;
- (PKTextInputDebugArchivedLogEntry)initWithRecordingLogEntry:(id)a3 error:(id *)a4;
- (id)dictionaryRepresentationWithDetailLevel:(int64_t)a3 targetContentLevel:(int64_t)a4;
@end

@implementation PKTextInputDebugArchivedLogEntry

- (PKTextInputDebugArchivedLogEntry)initWithDictionary:(id)a3 error:(id *)a4
{
  v50[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v48.receiver = self;
  v48.super_class = PKTextInputDebugArchivedLogEntry;
  v7 = [(PKTextInputDebugArchivedLogEntry *)&v48 init];
  if (!v7)
  {
    v33 = 0;
    v11 = &stru_1F476BD20;
    if (!a4)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v8 = [v6 copy];
  logDictionary = v7->_logDictionary;
  v7->_logDictionary = v8;

  v10 = [v6 objectForKeyedSubscript:@"date"];
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = v10;
  v12 = [v6 objectForKeyedSubscript:@"date"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 objectForKeyedSubscript:@"inputDrawing"], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_25:

    v34 = @"The input dictionary is incomplete or corrupted.";
LABEL_26:

    v11 = v34;
    goto LABEL_27;
  }

  v14 = v13;
  v15 = [v6 objectForKeyedSubscript:@"inputDrawing"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 objectForKeyedSubscript:@"inputTargets"], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_24:

    goto LABEL_25;
  }

  v46 = v16;
  v17 = [v6 objectForKeyedSubscript:@"inputTargets"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 objectForKeyedSubscript:@"inputTargetContentInfo"], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  v44 = v18;
  v45 = [v6 objectForKeyedSubscript:@"inputTargetContentInfo"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 objectForKeyedSubscript:@"recognitionResult"], (v19 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_23;
  }

  v41 = v19;
  v43 = [v6 objectForKeyedSubscript:@"recognitionResult"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_21:
    v11 = @"The input dictionary is incomplete or corrupted.";
    goto LABEL_27;
  }

  v20 = [v6 objectForKeyedSubscript:@"date"];
  v21 = +[PKTextInputDebugLogEntry loggedDateFormatter];
  v22 = [v21 dateFromString:v20];
  [(PKTextInputDebugLogEntry *)v7 setEntryDate:v22];

  v23 = [(PKTextInputDebugLogEntry *)v7 entryDate];

  if (v23)
  {
    v24 = [(NSDictionary *)v7->_logDictionary objectForKeyedSubscript:@"inputDrawing"];
    v47 = &stru_1F476BD20;
    v25 = [(PKTextInputDebugArchivedLogEntry *)v7 _loadInputDrawingFromDictionary:v24 errorMessage:&v47];
    v11 = v47;

    if (!v25)
    {
      goto LABEL_27;
    }

    v26 = [(NSDictionary *)v7->_logDictionary objectForKeyedSubscript:@"inputTargets"];
    v27 = [(PKTextInputDebugArchivedLogEntry *)v7 _loadTextInputTargetsFromDictionaries:v26];

    if (v27)
    {
      v28 = [(NSDictionary *)v7->_logDictionary objectForKeyedSubscript:@"inputTargetContentInfo"];
      v29 = [(PKTextInputDebugLogEntry *)v7 inputTargets];
      v30 = [(PKTextInputDebugArchivedLogEntry *)v7 _loadTargetContentInfoFromDictionary:v28 targets:v29];

      if (v30)
      {
        v31 = [(NSDictionary *)v7->_logDictionary objectForKeyedSubscript:@"recognitionResult"];
        v32 = [(PKTextInputDebugArchivedLogEntry *)v7 _loadRecognitionResultFromDictionary:v31];

        if (v32)
        {
          v33 = 0;
          if (!a4)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        v34 = @"Failed to load recognition result.";
      }

      else
      {
        v34 = @"Failed to load target content info.";
      }
    }

    else
    {
      v34 = @"Failed to load text input targets.";
    }

    goto LABEL_26;
  }

  v11 = @"Failed to load entry date.";
LABEL_27:

  v35 = MEMORY[0x1E696ABC0];
  v36 = *MEMORY[0x1E696A250];
  v49 = *MEMORY[0x1E696A578];
  v50[0] = v11;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  v33 = [v35 errorWithDomain:v36 code:1 userInfo:v37];

  v7 = 0;
  if (a4)
  {
LABEL_28:
    v38 = v33;
    *a4 = v33;
  }

LABEL_29:
  v39 = v7;

  return v39;
}

- (PKTextInputDebugArchivedLogEntry)initWithRecordingLogEntry:(id)a3 error:(id *)a4
{
  v6 = [a3 dictionaryRepresentationWithTargetContentLevel:2];
  v7 = [(PKTextInputDebugArchivedLogEntry *)self initWithDictionary:v6 error:a4];

  return v7;
}

- (id)dictionaryRepresentationWithDetailLevel:(int64_t)a3 targetContentLevel:(int64_t)a4
{
  v7 = [(NSDictionary *)self->_logDictionary mutableCopy];
  v8 = v7;
  if (!a3)
  {
    [v7 removeObjectForKey:@"inputTargets"];
    v9 = MEMORY[0x1E696AD98];
    v10 = [(PKTextInputDebugLogEntry *)self inputTargets];
    v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    [v8 setObject:v11 forKeyedSubscript:@"inputTargetsCount"];

    v12 = [v8 objectForKeyedSubscript:@"recognitionResult"];
    v13 = [v12 mutableCopy];

    if (v13)
    {
      [v13 removeObjectForKey:@"tokenizedTextResultData"];
      [v8 setObject:v13 forKeyedSubscript:@"recognitionResult"];
    }

    v14 = [v8 objectForKeyedSubscript:@"inputDrawing"];
    v15 = [v14 mutableCopy];

    if (v15)
    {
      [v15 removeObjectForKey:@"drawingData"];
      [v8 setObject:v15 forKeyedSubscript:@"inputDrawing"];
    }

    v16 = [v8 objectForKeyedSubscript:@"inputTargetContentInfo"];
    v17 = [v16 mutableCopy];

    if (v17)
    {
      [v17 removeObjectForKey:@"characterRectsInReferenceSubstring"];
      [v8 setObject:v17 forKeyedSubscript:@"inputTargetContentInfo"];
    }
  }

  if (a4 != 2)
  {
    v18 = [v8 objectForKeyedSubscript:@"inputTargetContentInfo"];
    v19 = [v18 mutableCopy];

    if (v19)
    {
      v20 = [(PKTextInputDebugLogEntry *)self referenceSubstringWithTargetContentLevel:a4];
      [v19 setObject:v20 forKeyedSubscript:@"referenceSubstring"];
      [v8 setObject:v19 forKeyedSubscript:@"inputTargetContentInfo"];
    }
  }

  return v8;
}

- (BOOL)_loadInputDrawingFromDictionary:(id)a3 errorMessage:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"drawingData"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    v16 = @"Failed to load drawing data.";
    if (!a4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v19 = 0;
  v8 = [[PKDrawing alloc] initWithData:v7 error:&v19];
  v9 = v19;
  [(PKTextInputDebugLogEntry *)self setInputDrawing:v8];

  v10 = [(PKTextInputDebugLogEntry *)self inputDrawing];
  v11 = v10 != 0;

  if (v10)
  {

    v12 = [v6 objectForKeyedSubscript:@"containsInProgressStroke"];
    if (v12)
    {
      v13 = v12;
      v14 = [v6 objectForKeyedSubscript:@"containsInProgressStroke"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v16 = 0;
        v11 = 1;
        if (!a4)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    v9 = [v6 objectForKeyedSubscript:@"containsInProgressStroke"];
    -[PKTextInputDebugLogEntry setInputContainsInProgressStroke:](self, "setInputContainsInProgressStroke:", [v9 BOOLValue]);
    v16 = 0;
  }

  else
  {
    v16 = [v9 localizedDescription];
  }

  if (a4)
  {
LABEL_10:
    v17 = v16;
    *a4 = v16;
  }

LABEL_11:

  return v11;
}

- (BOOL)_loadTextInputTargetsFromDictionaries:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v4;
  v29 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v29)
  {
    v30 = *v32;
    v27 = self;
    obj = v6;
    while (2)
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v32 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_15;
        }

        v9 = [v8 objectForKeyedSubscript:@"identifier"];
        if (!v9)
        {
          goto LABEL_15;
        }

        v10 = v9;
        v11 = [v8 objectForKeyedSubscript:@"identifier"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v8 objectForKeyedSubscript:@"frame"], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
        {

LABEL_15:
          v25 = 0;
          v6 = obj;
          v24 = obj;
          goto LABEL_16;
        }

        v13 = v12;
        v14 = [v8 objectForKeyedSubscript:@"frame"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_15;
        }

        v16 = [v8 objectForKeyedSubscript:@"frame"];
        v37 = CGRectFromString(v16);
        x = v37.origin.x;
        y = v37.origin.y;
        width = v37.size.width;
        height = v37.size.height;

        v21 = objc_alloc(MEMORY[0x1E6997BD0]);
        v22 = [v8 objectForKeyedSubscript:@"identifier"];
        v23 = [v21 initWithIdentifier:v22 frame:{x, y, width, height}];

        [v5 addObject:v23];
      }

      v6 = obj;
      self = v27;
      v29 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

  v24 = [v5 copy];
  [(PKTextInputDebugLogEntry *)self setInputTargets:v24];
  v25 = 1;
LABEL_16:

  return v25;
}

- (BOOL)_loadTargetContentInfoFromDictionary:(id)a3 targets:(id)a4
{
  v152 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"targetIdentifier"];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"targetIdentifier"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_169:
      goto LABEL_170;
    }

    v138 = v9;
  }

  v10 = [v6 objectForKeyedSubscript:@"textContentLength"];
  if (!v10 || ([v6 objectForKeyedSubscript:@"textContentLength"], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), count = v11, (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [v6 objectForKeyedSubscript:@"elementType"];
    if (v13)
    {
      v14 = [v6 objectForKeyedSubscript:@"elementType"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        isKindOfClass = 0;
LABEL_88:

LABEL_89:
        if (!v10)
        {
          goto LABEL_91;
        }

        goto LABEL_90;
      }

      v134 = v14;
    }

    v15 = [v6 objectForKeyedSubscript:@"referenceSubstring"];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      v18 = [v6 objectForKeyedSubscript:@"referenceSubstring"];
      objc_opt_class();
      v132 = v18;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        isKindOfClass = 0;
        v16 = v17;
LABEL_86:

LABEL_87:
        v14 = v134;
        if (!v13)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      v16 = v17;
    }

    v136 = [v6 objectForKeyedSubscript:@"referenceSubstringRange"];
    if (v136)
    {
      v19 = [v6 objectForKeyedSubscript:@"referenceSubstringRange"];
      objc_opt_class();
      v128 = v19;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        isKindOfClass = 0;
LABEL_84:

LABEL_85:
        if (!v16)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      }
    }

    v130 = [v6 objectForKeyedSubscript:@"strokeCoveredTextRange"];
    if (v130)
    {
      v20 = [v6 objectForKeyedSubscript:@"strokeCoveredTextRange"];
      objc_opt_class();
      v124 = v20;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        isKindOfClass = 0;
LABEL_82:

LABEL_83:
        if (!v136)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      }
    }

    v126 = [v6 objectForKeyedSubscript:@"selectedTextRange"];
    if (v126)
    {
      v21 = [v6 objectForKeyedSubscript:@"selectedTextRange"];
      objc_opt_class();
      v120 = v21;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        isKindOfClass = 0;
LABEL_80:

LABEL_81:
        if (!v130)
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }
    }

    v122 = [v6 objectForKeyedSubscript:@"activePreviewRange"];
    if (v122)
    {
      v22 = [v6 objectForKeyedSubscript:@"activePreviewRange"];
      objc_opt_class();
      v116 = v22;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        isKindOfClass = 0;
LABEL_78:

LABEL_79:
        if (!v126)
        {
          goto LABEL_81;
        }

        goto LABEL_80;
      }
    }

    v118 = [v6 objectForKeyedSubscript:@"lastCharacterLevelPosition"];
    if (v118)
    {
      v23 = [v6 objectForKeyedSubscript:@"lastCharacterLevelPosition"];
      objc_opt_class();
      v113 = v23;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        isKindOfClass = 0;
LABEL_76:

LABEL_77:
        if (!v122)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      }
    }

    v115 = [v6 objectForKeyedSubscript:@"contentType"];
    if (v115)
    {
      v24 = [v6 objectForKeyedSubscript:@"contentType"];
      objc_opt_class();
      v110 = v24;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        isKindOfClass = 0;
LABEL_74:

LABEL_75:
        if (!v118)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      }
    }

    v112 = [v6 objectForKeyedSubscript:@"autocapitalization"];
    if (v112)
    {
      v25 = [v6 objectForKeyedSubscript:@"autocapitalization"];
      objc_opt_class();
      v107 = v25;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        isKindOfClass = 0;
LABEL_72:

LABEL_73:
        if (!v115)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }
    }

    v109 = [v6 objectForKeyedSubscript:@"autocorrection"];
    if (v109)
    {
      v26 = [v6 objectForKeyedSubscript:@"autocorrection"];
      objc_opt_class();
      v103 = v26;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        isKindOfClass = 0;
LABEL_70:

LABEL_71:
        if (!v112)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }
    }

    v105 = [v6 objectForKeyedSubscript:@"characterRectsInReferenceSubstring"];
    if (v105)
    {
      v27 = [v6 objectForKeyedSubscript:@"characterRectsInReferenceSubstring"];
      objc_opt_class();
      v99 = v27;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        isKindOfClass = 0;
LABEL_68:

LABEL_69:
        if (!v109)
        {
          goto LABEL_71;
        }

        goto LABEL_70;
      }
    }

    v101 = [v6 objectForKeyedSubscript:@"referenceSubstringLogContentLevel"];
    if (v101)
    {
      v28 = [v6 objectForKeyedSubscript:@"referenceSubstringLogContentLevel"];
      objc_opt_class();
      v98 = v28;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        isKindOfClass = 0;
LABEL_66:

LABEL_67:
        if (!v105)
        {
          goto LABEL_69;
        }

        goto LABEL_68;
      }
    }

    v29 = [v6 objectForKeyedSubscript:@"isCursorStrong"];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
      v32 = [v6 objectForKeyedSubscript:@"isCursorStrong"];
      objc_opt_class();
      v96 = v32;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        isKindOfClass = 0;
        v30 = v31;
LABEL_64:

LABEL_65:
        if (!v101)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      v30 = v31;
    }

    v97 = [v6 objectForKeyedSubscript:@"containsCommittedStrokes"];
    if (v97)
    {
      v33 = [v6 objectForKeyedSubscript:@"containsCommittedStrokes"];
      objc_opt_class();
      v94 = v33;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        isKindOfClass = 0;
LABEL_62:

LABEL_63:
        if (!v30)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }
    }

    v95 = [v6 objectForKeyedSubscript:@"isSingleLine"];
    if (!v95 || ([v6 objectForKeyedSubscript:@"isSingleLine"], v34 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v93 = v34, (objc_opt_isKindOfClass() & 1) != 0))
    {
      v36 = [v6 objectForKeyedSubscript:@"protectedCharacterIndexes"];
      if (v36)
      {
        v37 = v36;
        v92 = [v6 objectForKeyedSubscript:@"protectedCharacterIndexes"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }

      else
      {
        isKindOfClass = 1;
      }

      v35 = v95;
      if (!v95)
      {
LABEL_61:
        if (!v97)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }
    }

    else
    {
      isKindOfClass = 0;
      v35 = v95;
    }

    goto LABEL_61;
  }

  isKindOfClass = 0;
LABEL_90:

LABEL_91:
  if (v8)
  {
  }

  if (isKindOfClass)
  {
    v8 = [v6 objectForKeyedSubscript:@"targetIdentifier"];
    if (v8)
    {
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v38 = v7;
      v39 = [v38 countByEnumeratingWithState:&v146 objects:v151 count:16];
      if (v39)
      {
        v40 = v39;
        v137 = v7;
        v139 = self;
        v41 = *v147;
LABEL_97:
        v42 = 0;
        while (1)
        {
          if (*v147 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v146 + 1) + 8 * v42);
          v44 = [v43 inputTargetIdentifier];
          v45 = [v44 isEqualToNumber:v8];

          if (v45)
          {
            break;
          }

          if (v40 == ++v42)
          {
            v40 = [v38 countByEnumeratingWithState:&v146 objects:v151 count:16];
            if (v40)
            {
              goto LABEL_97;
            }

            v7 = v137;
            self = v139;
            goto LABEL_168;
          }
        }

        v46 = v43;

        v7 = v137;
        self = v139;
        if (!v46)
        {
          goto LABEL_169;
        }

        v47 = objc_alloc_init(MEMORY[0x1E6997B68]);
        [v47 setTextInputTarget:v46];
        v48 = [v6 objectForKeyedSubscript:@"contentType"];
        v133 = v46;
        if ([v48 isEqualToString:@"Default"])
        {
          v129 = 0;
        }

        else
        {
          if ([v48 isEqualToString:@"Digits"])
          {
            v49 = 1;
          }

          else if ([v48 isEqualToString:@"Phone"])
          {
            v49 = 2;
          }

          else if ([v48 isEqualToString:@"Username"])
          {
            v49 = 3;
          }

          else if ([v48 isEqualToString:@"EmailAddress"])
          {
            v49 = 4;
          }

          else if ([v48 isEqualToString:@"URL"])
          {
            v49 = 5;
          }

          else if ([v48 isEqualToString:@"ASCII"])
          {
            v49 = 6;
          }

          else if ([v48 isEqualToString:@"Equation"])
          {
            v49 = 7;
          }

          else
          {
            v49 = 0;
          }

          v129 = v49;
        }

        v50 = [v6 objectForKeyedSubscript:@"autocapitalization"];
        v51 = [&unk_1F47C2338 objectForKeyedSubscript:v50];
        v52 = v51;
        if (v51)
        {
          v127 = [v51 integerValue];
        }

        else
        {
          v127 = 1;
        }

        v53 = [v6 objectForKeyedSubscript:@"autocorrection"];
        v54 = [&unk_1F47C2360 objectForKeyedSubscript:v53];
        v55 = v54;
        if (v54)
        {
          v125 = [v54 integerValue];
        }

        else
        {
          v125 = 0;
        }

        v56 = [v6 objectForKeyedSubscript:@"textContentLength"];
        v121 = [v56 integerValue];

        v57 = [v6 objectForKeyedSubscript:@"referenceSubstring"];
        v58 = v57;
        v59 = &stru_1F476BD20;
        if (v57)
        {
          v59 = v57;
        }

        v123 = v59;

        v60 = [v6 objectForKeyedSubscript:@"referenceSubstringRange"];
        if (v60)
        {
          v61 = [v6 objectForKeyedSubscript:@"referenceSubstringRange"];
          v62 = NSRangeFromString(v61);
          location = v62.location;

          counta = v62.length;
          length = v62.length;
        }

        else
        {
          counta = 0;
          length = 0;
          location = 0x7FFFFFFFFFFFFFFFLL;
        }

        v63 = [v6 objectForKeyedSubscript:@"selectedTextRange"];
        if (v63)
        {
          v64 = [v6 objectForKeyedSubscript:@"selectedTextRange"];
          v114 = NSRangeFromString(v64);
        }

        else
        {
          v114.location = 0x7FFFFFFFFFFFFFFFLL;
          v114.length = 0;
        }

        v65 = [v6 objectForKeyedSubscript:@"strokeCoveredTextRange"];
        if (v65)
        {
          v66 = [v6 objectForKeyedSubscript:@"strokeCoveredTextRange"];
          v111 = NSRangeFromString(v66);
        }

        else
        {
          v111.location = 0x7FFFFFFFFFFFFFFFLL;
          v111.length = 0;
        }

        v67 = [v6 objectForKeyedSubscript:@"activePreviewRange"];
        if (v67)
        {
          v68 = [v6 objectForKeyedSubscript:@"activePreviewRange"];
          v108 = NSRangeFromString(v68);
        }

        else
        {
          v108.location = 0x7FFFFFFFFFFFFFFFLL;
          v108.length = 0;
        }

        v69 = [v6 objectForKeyedSubscript:@"lastCharacterLevelPosition"];
        if (v69)
        {
          v70 = [v6 objectForKeyedSubscript:@"lastCharacterLevelPosition"];
          v106 = [v70 integerValue];
        }

        else
        {
          v106 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v71 = [v6 objectForKeyedSubscript:@"isCursorStrong"];
        if (v71)
        {
          v72 = [v6 objectForKeyedSubscript:@"isCursorStrong"];
          v104 = [v72 BOOLValue];
        }

        else
        {
          v104 = 1;
        }

        v73 = [v6 objectForKeyedSubscript:@"containsCommittedStrokes"];
        if (v73)
        {
          v74 = [v6 objectForKeyedSubscript:@"containsCommittedStrokes"];
          v102 = [v74 BOOLValue];
        }

        else
        {
          v102 = 0;
        }

        v75 = [v6 objectForKeyedSubscript:@"isSingleLine"];
        v131 = v47;
        if (v75)
        {
          v76 = [v6 objectForKeyedSubscript:@"isSingleLine"];
          v100 = [v76 BOOLValue];
        }

        else
        {
          v100 = 1;
        }

        v135 = malloc_type_calloc(counta, 0x20uLL, 0x1000040E0EAB150uLL);
        v142 = 0u;
        v143 = 0u;
        v144 = 0u;
        v145 = 0u;
        v77 = [v6 objectForKeyedSubscript:@"characterRectsInReferenceSubstring"];
        v78 = [v77 countByEnumeratingWithState:&v142 objects:v150 count:16];
        if (v78)
        {
          v79 = v78;
          v80 = 0;
          v81 = *v143;
LABEL_157:
          v82 = 0;
          v83 = v135 + 32 * v80 + 16;
          while (1)
          {
            if (*v143 != v81)
            {
              objc_enumerationMutation(v77);
            }

            v84 = *(*(&v142 + 1) + v82);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || v80 >= counta)
            {
              break;
            }

            *(v83 - 16) = CGRectFromString(v84);
            v83 += 32;
            ++v80;
            v82 += 8;
            if (!--v79)
            {
              v79 = [v77 countByEnumeratingWithState:&v142 objects:v150 count:16];
              if (v79)
              {
                goto LABEL_157;
              }

              break;
            }
          }
        }

        v85 = [v6 objectForKeyedSubscript:@"protectedCharacterIndexes"];
        if (v85)
        {
          v86 = v131;
          [v131 setProtectedCharacterIndexes:v85];
        }

        else
        {
          v87 = [MEMORY[0x1E696AC90] indexSet];
          v86 = v131;
          [v131 setProtectedCharacterIndexes:v87];
        }

        v7 = v137;
        self = v139;

        [v86 setReferenceSubstring:v123 range:location characterRects:{length, v135}];
        [v86 setTextContentLength:v121];
        [v86 setStrokeCoveredTextRange:{v111.location, v111.length}];
        [v86 setSelectedTextRange:{v114.location, v114.length}];
        [v86 setActivePreviewRange:{v108.location, v108.length}];
        [v86 setContentType:v129];
        [v86 setAutoCapitalizationMode:v127];
        [v86 setAutoCorrectionMode:v125];
        [v86 setIsSingleLine:v100];
        [v86 setIsCursorStrong:v104];
        [v86 setLastCharacterLevelPosition:v106];
        [v86 setContainsCommittedStrokes:v102];
        free(v135);
        v88 = [v86 copy];
        [(PKTextInputDebugLogEntry *)v139 setInputTargetContentInfo:v88];

        v38 = v133;
      }

LABEL_168:
    }

    goto LABEL_169;
  }

LABEL_170:
  v89 = [(PKTextInputDebugLogEntry *)self inputTargetContentInfo];
  v90 = v89 != 0;

  return v90;
}

- (BOOL)_loadRecognitionResultFromDictionary:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"recognitionLocale"];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v4 objectForKeyedSubscript:@"recognitionLocale"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v4 objectForKeyedSubscript:@"recognitionLocales"], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v4 objectForKeyedSubscript:@"recognitionLocales"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_9;
  }

  v11 = [v4 objectForKeyedSubscript:@"committedText"];
  if (!v11)
  {
LABEL_13:
    v15 = [v4 objectForKeyedSubscript:@"topTranscription"];
    v66 = v11;
    if (v15)
    {
      v16 = [v4 objectForKeyedSubscript:@"topTranscription"];
      objc_opt_class();
      v64 = v16;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = 1;
        v11 = v66;
LABEL_48:

LABEL_49:
        v12 = v65;
        if (!v11)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }
    }

    v18 = [v4 objectForKeyedSubscript:@"committedTokenColumnCount"];
    if (v18)
    {
      v19 = [v4 objectForKeyedSubscript:@"committedTokenColumnCount"];
      objc_opt_class();
      v61 = v19;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = 1;
LABEL_46:

LABEL_47:
        v11 = v66;
        if (!v15)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }
    }

    v62 = [v4 objectForKeyedSubscript:@"commitReason"];
    v63 = v18;
    if (v62)
    {
      v20 = [v4 objectForKeyedSubscript:@"commitReason"];
      objc_opt_class();
      v57 = v20;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = 1;
        v21 = v62;
LABEL_44:

LABEL_45:
        v18 = v63;
        if (!v63)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    v60 = [v4 objectForKeyedSubscript:@"tokenizedTextResultData"];
    if (v60)
    {
      v22 = [v4 objectForKeyedSubscript:@"tokenizedTextResultData"];
      objc_opt_class();
      v56 = v22;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = v60;
        v58 = 1;
        v21 = v62;
LABEL_42:

LABEL_43:
        v17 = v58;
        if (!v21)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }
    }

    v24 = [v4 objectForKeyedSubscript:@"affectedRange"];
    if (v24)
    {
      v54 = v15;
      v25 = [v4 objectForKeyedSubscript:@"affectedRange"];
      objc_opt_class();
      v53 = v25;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v58 = 1;
        v21 = v62;
        v15 = v54;
LABEL_40:

LABEL_41:
        v23 = v60;
        if (!v60)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      v15 = v54;
    }

    v59 = [v4 objectForKeyedSubscript:@"recognitionDuration"];
    v55 = v24;
    if (!v59 || ([v4 objectForKeyedSubscript:@"recognitionDuration"], v54 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v28 = [v4 objectForKeyedSubscript:@"resultType"];
      if (v28)
      {
        v29 = v28;
        v52 = [v4 objectForKeyedSubscript:@"resultType"];
        objc_opt_class();
        v30 = objc_opt_isKindOfClass() ^ 1;

        v26 = v30;
      }

      else
      {
        v26 = 0;
      }

      v21 = v62;
      v27 = v59;
      if (!v59)
      {
        v58 = v26;
LABEL_39:
        v24 = v55;
        if (!v55)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v26 = 1;
      v21 = v62;
      v27 = v59;
    }

    v58 = v26;

    goto LABEL_39;
  }

  v12 = [v4 objectForKeyedSubscript:@"committedText"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v65 = v12;
    goto LABEL_13;
  }

  v17 = 1;
LABEL_50:

LABEL_51:
  if (v17)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  [v4 objectForKeyedSubscript:@"recognitionLocales"];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v6 = v71 = 0u;
  v31 = [v6 countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v69;
    while (2)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v69 != v33)
        {
          objc_enumerationMutation(v6);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          goto LABEL_10;
        }
      }

      v32 = [v6 countByEnumeratingWithState:&v68 objects:v75 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  [(PKTextInputDebugLogEntry *)self setRecognitionLocaleIdentifiers:v6];
  if (![v6 count])
  {
    v35 = [v4 objectForKeyedSubscript:@"recognitionLocale"];
    v36 = v35;
    if (v35)
    {
      v74 = v35;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
      [(PKTextInputDebugLogEntry *)self setRecognitionLocaleIdentifiers:v37];
    }
  }

  v38 = [v4 objectForKeyedSubscript:@"committedText"];
  [(PKTextInputDebugLogEntry *)self setResultCommittedText:v38];

  v39 = [v4 objectForKeyedSubscript:@"topTranscription"];
  [(PKTextInputDebugLogEntry *)self setResultTopTranscription:v39];

  v40 = [v4 objectForKeyedSubscript:@"committedTokenColumnCount"];
  -[PKTextInputDebugLogEntry setResultCommittedTokenColumnCount:](self, "setResultCommittedTokenColumnCount:", [v40 integerValue]);

  v41 = [v4 objectForKeyedSubscript:@"commitReason"];
  [(PKTextInputDebugLogEntry *)self setResultCommitReason:v41];

  v42 = [v4 objectForKeyedSubscript:@"affectedRange"];
  if (v42)
  {
    v43 = [v4 objectForKeyedSubscript:@"affectedRange"];
    v44 = NSRangeFromString(v43);
    [(PKTextInputDebugLogEntry *)self setResultAffectedRange:v44.location, v44.length];
  }

  else
  {
    [(PKTextInputDebugLogEntry *)self setResultAffectedRange:0x7FFFFFFFFFFFFFFFLL, 0];
  }

  v45 = [v4 objectForKeyedSubscript:@"resultType"];
  [(PKTextInputDebugLogEntry *)self setResultTypeDescription:v45];

  v46 = [v4 objectForKeyedSubscript:@"recognitionDuration"];
  [v46 doubleValue];
  [(PKTextInputDebugLogEntry *)self setResultRecognitionDuration:?];

  v47 = [v4 objectForKeyedSubscript:@"tokenizedTextResultData"];
  if (v47)
  {
    v67 = 0;
    v48 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v47 error:&v67];
    v49 = v67;
    [(PKTextInputDebugLogEntry *)self setTokenizedTextResult:v48];

    v50 = [(PKTextInputDebugLogEntry *)self tokenizedTextResult];

    if (!v50)
    {
      v51 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v73 = v49;
        _os_log_error_impl(&dword_1C7CCA000, v51, OS_LOG_TYPE_ERROR, "Error unarchiving CHTokenizedTextResult: %@", buf, 0xCu);
      }
    }
  }

  v13 = 1;
LABEL_12:

  return v13;
}

@end