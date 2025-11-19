@interface AXFirstResponderValueChangeManager
+ (id)sharedInstance;
- (id)_handleApostropheIfNeeded:(id)a3;
- (id)_outputValueChangeForNewValue:(id)a3 oldValue:(id)a4 isFirstResponderValid:(BOOL)a5 selectedTextRange:(_NSRange)a6 oldSelectedTextRange:(_NSRange)a7 shouldEchoDeletion:(BOOL)a8 optionalValueChangeType:(unint64_t)a9 derivedValueChangeType:(unint64_t *)a10 didHitBorder:(BOOL *)a11 isBreakSpaceCharacter:(BOOL *)a12 isSingleInsert:(BOOL)a13 selectionDeleted:(BOOL)a14 feedbackType:(unint64_t)a15 textOperationOccurred:(BOOL *)a16 lastKeyboardKeyPress:(double)a17 isSingleCharacterInsertOrDelete:(BOOL *)a18 singleInsertDeleteAttString:(id *)a19 singleInsertDeleteString:(id *)a20 isSingleCharacterUpdate:(BOOL *)a21 wordRangeToFindMisspelled:(_NSRange *)a22 pasteOperationSucceeded:(BOOL *)a23 shouldOutputSingleCharactersOnly:(BOOL)a24 processApostrophes:(BOOL)a25;
- (id)outputValueChangeForNewValue:(id)a3 oldValue:(id)a4 isFirstResponderValid:(BOOL)a5 selectedTextRange:(_NSRange)a6 oldSelectedTextRange:(_NSRange)a7 shouldEchoDeletion:(BOOL)a8 optionalValueChangeType:(unint64_t)a9 derivedValueChangeType:(unint64_t *)a10 didHitBorder:(BOOL *)a11 isBreakSpaceCharacter:(BOOL *)a12 isSingleInsert:(BOOL)a13 selectionDeleted:(BOOL)a14 feedbackType:(unint64_t)a15 textOperationOccurred:(BOOL *)a16 lastKeyboardKeyPress:(double)a17 isSingleCharacterInsertOrDelete:(BOOL *)a18 singleInsertDeleteAttString:(id *)a19 singleInsertDeleteString:(id *)a20 isSingleCharacterUpdate:(BOOL *)a21 wordRangeToFindMisspelled:(_NSRange *)a22 pasteOperationSucceeded:(BOOL *)a23 processApostrophes:(BOOL)a24;
- (id)outputValueChangeForNewValue:(id)a3 oldValue:(id)a4 selectedTextRange:(_NSRange)a5 oldSelectedTextRange:(_NSRange)a6 shouldEchoDeletion:(BOOL)a7 isSingleInsert:(BOOL)a8 feedbackType:(unint64_t)a9 lastKeyboardKeyPress:(double)a10;
- (id)outputValueChangeForNewValue:(id)a3 oldValue:(id)a4 selectedTextRange:(_NSRange)a5 shouldEchoDeletion:(BOOL)a6 isSingleInsert:(BOOL)a7 feedbackType:(unint64_t)a8 lastKeyboardKeyPress:(double)a9;
- (id)outputValueChangeForNewValue:(id)a3 oldValue:(id)a4 selectedTextRange:(_NSRange)a5 shouldEchoDeletion:(BOOL)a6 isSingleInsert:(BOOL)a7 feedbackType:(unint64_t)a8 lastKeyboardKeyPress:(double)a9 shouldOutputSingleCharactersOnly:(BOOL)a10;
- (id)wordBreakSet;
- (void)_handleAttributedApostropheIfNeeded:(id)a3;
@end

@implementation AXFirstResponderValueChangeManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[AXFirstResponderValueChangeManager sharedInstance];
  }

  v3 = sharedInstance_SharedInstance;

  return v3;
}

uint64_t __52__AXFirstResponderValueChangeManager_sharedInstance__block_invoke()
{
  sharedInstance_SharedInstance = objc_alloc_init(AXFirstResponderValueChangeManager);

  return MEMORY[0x1EEE66BB8]();
}

- (id)outputValueChangeForNewValue:(id)a3 oldValue:(id)a4 selectedTextRange:(_NSRange)a5 shouldEchoDeletion:(BOOL)a6 isSingleInsert:(BOOL)a7 feedbackType:(unint64_t)a8 lastKeyboardKeyPress:(double)a9
{
  BYTE1(v10) = a7;
  LOBYTE(v10) = a6;
  return [(AXFirstResponderValueChangeManager *)self outputValueChangeForNewValue:a3 oldValue:a4 selectedTextRange:a5.location oldSelectedTextRange:a5.length shouldEchoDeletion:0x7FFFFFFFLL isSingleInsert:0 feedbackType:a9 lastKeyboardKeyPress:v10, a8];
}

- (id)outputValueChangeForNewValue:(id)a3 oldValue:(id)a4 selectedTextRange:(_NSRange)a5 shouldEchoDeletion:(BOOL)a6 isSingleInsert:(BOOL)a7 feedbackType:(unint64_t)a8 lastKeyboardKeyPress:(double)a9 shouldOutputSingleCharactersOnly:(BOOL)a10
{
  BYTE1(v13) = 1;
  LOBYTE(v13) = a10;
  LOWORD(v12) = a7;
  LOBYTE(v11) = a6;
  return [(AXFirstResponderValueChangeManager *)self _outputValueChangeForNewValue:a3 oldValue:a4 isFirstResponderValid:1 selectedTextRange:a5.location oldSelectedTextRange:a5.length shouldEchoDeletion:a9 optionalValueChangeType:0x7FFFFFFFLL derivedValueChangeType:0 didHitBorder:v11 isBreakSpaceCharacter:0 isSingleInsert:0 selectionDeleted:0 feedbackType:0 textOperationOccurred:v12 lastKeyboardKeyPress:a8 isSingleCharacterInsertOrDelete:0 singleInsertDeleteAttString:0 singleInsertDeleteString:0 isSingleCharacterUpdate:0 wordRangeToFindMisspelled:0 pasteOperationSucceeded:0 shouldOutputSingleCharactersOnly:0 processApostrophes:v13];
}

- (id)outputValueChangeForNewValue:(id)a3 oldValue:(id)a4 selectedTextRange:(_NSRange)a5 oldSelectedTextRange:(_NSRange)a6 shouldEchoDeletion:(BOOL)a7 isSingleInsert:(BOOL)a8 feedbackType:(unint64_t)a9 lastKeyboardKeyPress:(double)a10
{
  LOBYTE(v13) = 1;
  LOWORD(v12) = a8;
  LOBYTE(v11) = a7;
  return [(AXFirstResponderValueChangeManager *)self outputValueChangeForNewValue:a3 oldValue:a4 isFirstResponderValid:1 selectedTextRange:a5.location oldSelectedTextRange:a5.length shouldEchoDeletion:a10 optionalValueChangeType:a6.location derivedValueChangeType:a6.length didHitBorder:v11 isBreakSpaceCharacter:0 isSingleInsert:0 selectionDeleted:0 feedbackType:0 textOperationOccurred:v12 lastKeyboardKeyPress:a9 isSingleCharacterInsertOrDelete:0 singleInsertDeleteAttString:0 singleInsertDeleteString:0 isSingleCharacterUpdate:0 wordRangeToFindMisspelled:0 pasteOperationSucceeded:0 processApostrophes:0, v13];
}

- (id)outputValueChangeForNewValue:(id)a3 oldValue:(id)a4 isFirstResponderValid:(BOOL)a5 selectedTextRange:(_NSRange)a6 oldSelectedTextRange:(_NSRange)a7 shouldEchoDeletion:(BOOL)a8 optionalValueChangeType:(unint64_t)a9 derivedValueChangeType:(unint64_t *)a10 didHitBorder:(BOOL *)a11 isBreakSpaceCharacter:(BOOL *)a12 isSingleInsert:(BOOL)a13 selectionDeleted:(BOOL)a14 feedbackType:(unint64_t)a15 textOperationOccurred:(BOOL *)a16 lastKeyboardKeyPress:(double)a17 isSingleCharacterInsertOrDelete:(BOOL *)a18 singleInsertDeleteAttString:(id *)a19 singleInsertDeleteString:(id *)a20 isSingleCharacterUpdate:(BOOL *)a21 wordRangeToFindMisspelled:(_NSRange *)a22 pasteOperationSucceeded:(BOOL *)a23 processApostrophes:(BOOL)a24
{
  BYTE1(v27) = a24;
  LOBYTE(v27) = 0;
  LOWORD(v26) = __PAIR16__(a14, a13);
  LOBYTE(v25) = a8;
  return [(AXFirstResponderValueChangeManager *)self _outputValueChangeForNewValue:a3 oldValue:a4 isFirstResponderValid:a5 selectedTextRange:a6.location oldSelectedTextRange:a6.length shouldEchoDeletion:a17 optionalValueChangeType:a7.location derivedValueChangeType:a7.length didHitBorder:v25 isBreakSpaceCharacter:a9 isSingleInsert:a10 selectionDeleted:a11 feedbackType:a12 textOperationOccurred:v26 lastKeyboardKeyPress:a15 isSingleCharacterInsertOrDelete:a16 singleInsertDeleteAttString:a18 singleInsertDeleteString:a19 isSingleCharacterUpdate:a20 wordRangeToFindMisspelled:a21 pasteOperationSucceeded:a22 shouldOutputSingleCharactersOnly:a23 processApostrophes:v27];
}

- (id)_outputValueChangeForNewValue:(id)a3 oldValue:(id)a4 isFirstResponderValid:(BOOL)a5 selectedTextRange:(_NSRange)a6 oldSelectedTextRange:(_NSRange)a7 shouldEchoDeletion:(BOOL)a8 optionalValueChangeType:(unint64_t)a9 derivedValueChangeType:(unint64_t *)a10 didHitBorder:(BOOL *)a11 isBreakSpaceCharacter:(BOOL *)a12 isSingleInsert:(BOOL)a13 selectionDeleted:(BOOL)a14 feedbackType:(unint64_t)a15 textOperationOccurred:(BOOL *)a16 lastKeyboardKeyPress:(double)a17 isSingleCharacterInsertOrDelete:(BOOL *)a18 singleInsertDeleteAttString:(id *)a19 singleInsertDeleteString:(id *)a20 isSingleCharacterUpdate:(BOOL *)a21 wordRangeToFindMisspelled:(_NSRange *)a22 pasteOperationSucceeded:(BOOL *)a23 shouldOutputSingleCharactersOnly:(BOOL)a24 processApostrophes:(BOOL)a25
{
  location = a6.location;
  v27 = a5;
  v185 = a3;
  v29 = a4;
  if (a16)
  {
    v178 = *a16;
  }

  else
  {
    v178 = 0;
  }

  v183 = [MEMORY[0x1E6988D60] string];
  v30 = [MEMORY[0x1E696AEC0] string];
  v31 = [v29 length];
  v32 = [v185 length];
  v182 = v29;
  v184 = v30;
  if ([v185 isAXAttributedString])
  {
    v188 = 0;
    v189 = 0;
    v33 = [v185 attributesAtIndex:0 effectiveRange:&v188];
    v34 = [v33 objectForKey:*MEMORY[0x1E6988EF8]];
    v35 = [v34 BOOLValue];

    if (v35)
    {
      v36 = [AXValueChangeUtilities phoneNumberWithoutFormattingCharacters:v29];
      v37 = [v36 length];

      v38 = [AXValueChangeUtilities phoneNumberWithoutFormattingCharacters:v185];
      v39 = [v38 length];

      if (v37 <= v39)
      {
        if (v39 <= v37)
        {
          v173 = 0;
          v40 = &stru_1EFE6D570;
          goto LABEL_102;
        }

        v40 = [AXValueChangeUtilities handleValueChangeForPhoneDeletionWithOldString:v185 newString:v29];
        v41 = 1;
      }

      else
      {
        v40 = [AXValueChangeUtilities handleValueChangeForPhoneDeletionWithOldString:v29 newString:v185];
        v41 = 2;
      }

      v173 = v41;
LABEL_102:
      v51 = [(__CFString *)v40 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1EFE6D570];

LABEL_103:
      v176 = 0;
      v54 = 0;
LABEL_104:
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      goto LABEL_105;
    }

    v30 = v184;
  }

  v42 = a9 != 2 && v31 <= v32;
  v43 = !v42;
  if (a9 == 1 || !v43 || !a8)
  {
    v46 = a9 == 1 || v31 < v32;
    if (a9 != 2 && v46)
    {
      v170 = a7.location;
      v171 = v31 - v32;
      v47 = location - 1;
      if (location == 0x80000000 || (v48 = location - 1, v47 > [v185 length]))
      {
        v48 = [AXValueChangeUtilities findLocationOfDifferenceInOldString:v185 withNewString:v29];
      }

      v175 = [(AXFirstResponderValueChangeManager *)self wordBreakSet];
      v49 = v32 - v31;
      if (v32 - v31 >= 0)
      {
        v50 = v32 - v31;
      }

      else
      {
        v50 = v31 - v32;
      }

      if (v50 >= 2 && !a13 && !a14)
      {
        if (v48 < v32)
        {
          v51 = &stru_1EFE6D570;
          v52 = v48;
          while (([v175 characterIsMember:{objc_msgSend(v185, "characterAtIndex:", v52)}] & 1) == 0)
          {
            if (v32 == ++v52)
            {
              v53 = 0;
              v172 = 0;
              v52 = v32;
              goto LABEL_119;
            }
          }

          v115 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v53 = [v115 characterIsMember:{objc_msgSend(v185, "characterAtIndex:", v52)}] ^ 1;

          v172 = 0;
          goto LABEL_118;
        }

        goto LABEL_77;
      }

      if (!a13 && !a14)
      {
LABEL_77:
        v53 = 0;
        v172 = 0;
LABEL_117:
        v52 = v48;
LABEL_118:
        v51 = &stru_1EFE6D570;
        goto LABEL_119;
      }

      if ((v48 & 0x8000000000000000) != 0 || v48 >= [v185 length])
      {
        v53 = 0;
        v172 = 0;
        v178 = 0;
        goto LABEL_117;
      }

      v187 = [v185 characterAtIndex:v48];
      v181 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithCharacters:&v187 length:1];
      v79 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v80 = [v79 characterIsMember:v187];

      if (v80)
      {
        if (!v48)
        {
          goto LABEL_283;
        }

        v81 = [v185 rangeOfComposedCharacterSequenceAtIndex:v48 - 1];
        v83 = [v185 substringWithRange:{v81, v82}];
        if ([v83 length] == 1)
        {
          v80 = [v175 characterIsMember:{objc_msgSend(v83, "characterAtIndex:", 0)}];
        }

        else
        {
          v80 = 0;
        }

        v47 = location - 1;
      }

      if ((a15 & 0xFFFFFFFFFFFFFFFDLL) != 1 && !v80)
      {
        v172 = 0;
        v51 = &stru_1EFE6D570;
        v152 = v181;
LABEL_289:

        v53 = 0;
        v178 = 0;
        v52 = v48;
LABEL_119:
        if (v52 < v32 || v32 <= 0)
        {
          v90 = v52;
        }

        else
        {
          v90 = v32 - 1;
        }

        if (v90 < [v185 length] && v90 < objc_msgSend(v29, "length"))
        {
          v91 = [v185 length];
          if (v91 < [v29 length] && objc_msgSend(v185, "characterAtIndex:", v90) == 8230 && objc_msgSend(v29, "characterAtIndex:", v90) == 46)
          {

            v92 = 0;
            v58 = 0;
            v57 = 0;
            v180 = 0x7FFFFFFFLL;
            v51 = @"…";
LABEL_153:
            v56 = v172;
            goto LABEL_156;
          }
        }

        if ((v90 & 0x8000000000000000) == 0 && v90 < [v185 length])
        {
          v93 = [v175 characterIsMember:{objc_msgSend(v185, "characterAtIndex:", v90)}];
          v94 = v171 >= 0 ? v171 : -v171;
          if (v93 && v94 == 1)
          {
            if (v90)
            {
              v95 = 0;
              v96 = 0;
              v180 = 0x7FFFFFFFLL;
              v97 = v90;
              while (1)
              {
                v98 = [v175 characterIsMember:{objc_msgSend(v185, "characterAtIndex:", --v97)}];
                if (v98 && v95 == 0)
                {
                  break;
                }

                if (v98 & v96)
                {
                  goto LABEL_147;
                }

                v96 |= v98 ^ 1;
                ++v95;
                if (v97 <= 0)
                {
                  goto LABEL_146;
                }
              }

              v92 = 0;
              v58 = 0;
              v57 = 0;
              goto LABEL_153;
            }

LABEL_146:
            v97 = -1;
LABEL_147:
            if ((a15 & 0xFFFFFFFFFFFFFFFELL) == 2)
            {
              v57 = v90 - (v97 & ~(v97 >> 63));
              v180 = v97 & ~(v97 >> 63);
              v100 = [v185 substringWithRange:?];

              if (!v100)
              {
                v51 = 0;
                v56 = v172;
                v131 = v175;
LABEL_262:
                v146 = [(__CFString *)v51 length];
                if (v146)
                {
                  v147 = v146;
                  v148 = 0;
                  while (([v131 characterIsMember:{-[__CFString characterAtIndex:](v51, "characterAtIndex:", v148)}] & 1) != 0)
                  {
                    if (v147 == ++v148)
                    {
                      goto LABEL_266;
                    }
                  }

                  goto LABEL_325;
                }

LABEL_266:

                goto LABEL_267;
              }

              if ([v185 isAXAttributedString])
              {
                v101 = [v185 attributeValueForKey:*MEMORY[0x1E6988D98]];
              }

              else
              {
                v101 = 0;
              }

              v132 = [(__CFString *)v100 stringByTrimmingEmptySpaceEdges];
              v133 = [v101 length];
              v134 = v133 - [v132 length];
              v135 = [v183 string];
              if ([v135 length] == 1)
              {
                v136 = [v183 string];
                [v136 stringByTrimmingEmptySpaceEdges];
                v138 = v137 = v134;
                v139 = [v138 isEqualToString:&stru_1EFE6D570];

                v134 = v137;
                v140 = v139 ^ 1;
              }

              else
              {
                v140 = 1;
              }

              v56 = v172;

              if ((v134 & 0x8000000000000000) != 0 || v134 >= [v101 length] || (objc_msgSend(v101, "substringFromIndex:", v134), v141 = objc_claimAutoreleasedReturnValue(), v142 = objc_msgSend(v141, "isEqualToString:", v132), v141, v140 & 1 | ((v142 & 1) == 0)))
              {
                v131 = v175;
              }

              else
              {
                v131 = v175;
                if (location - a7.location >= 2)
                {
                  v143 = +[AXSettings sharedInstance];
                  v144 = [v143 voiceOverInlineTextCompletionInsertionFeedback];

                  v145 = [MEMORY[0x1E6988D60] axAttributedStringWithString:v101];
                  if ((v144 & 2) != 0)
                  {
                    if ((v144 & 8) != 0)
                    {
LABEL_258:
                      [v145 setAttribute:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6988E58]];
                      if ((v144 & 2) == 0)
                      {
                        goto LABEL_306;
                      }

                      goto LABEL_305;
                    }
                  }

                  else
                  {

                    v100 = 0;
                    if ((v144 & 8) != 0)
                    {
                      goto LABEL_258;
                    }
                  }

                  if ((v144 & 2) == 0)
                  {
LABEL_306:

                    v56 = v172;
                    goto LABEL_261;
                  }

LABEL_305:
                  v163 = v145;

                  v100 = v163;
                  goto LABEL_306;
                }
              }

LABEL_261:

              v51 = v100;
              goto LABEL_262;
            }

LABEL_152:
            v92 = 0;
            v58 = 0;
            v57 = 0;
            v180 = 0x7FFFFFFFLL;
            goto LABEL_153;
          }
        }

        if (a13)
        {
          goto LABEL_152;
        }

        v102 = v47;
        v56 = v172;
        if ([(__CFString *)v51 length])
        {
LABEL_155:
          v92 = 0;
          v58 = 0;
          v57 = 0;
          v180 = 0x7FFFFFFFLL;
          goto LABEL_156;
        }

        if (v178)
        {
          if (v48 + v49 <= [v185 length])
          {
            v114 = [v185 substringWithRange:{v48, v49}];

            v92 = 0;
            v57 = 0;
            v58 = 1;
            v180 = 0x7FFFFFFFLL;
            v51 = v114;
            goto LABEL_156;
          }

          goto LABEL_155;
        }

        if (a15 - 1 > 2 || [(__CFString *)v51 length]&& CFAbsoluteTimeGetCurrent() - a17 >= 0.5)
        {
          if ((v53 & 1) == 0)
          {

            if ((v90 & 0x8000000000000000) == 0 && v90 < [v185 length])
            {
              v58 = 0;
              v92 = 0;
              v180 = 0x7FFFFFFFLL;
              v51 = &stru_1EFE6D570;
              v57 = 0;
              if (![v175 characterIsMember:{objc_msgSend(v185, "characterAtIndex:", v90)}] || (v171 & 0x8000000000000000) == 0)
              {
LABEL_156:
                if ([(__CFString *)v51 length]== 1)
                {
                  v103 = 1;
                }

                else
                {
                  v103 = v92;
                }

                v173 = v103;
                if ([(__CFString *)v51 length])
                {
                  v104 = v175;
                  v54 = ([(__CFString *)v51 isEqualToString:@" "]& 1) != 0 || [(__CFString *)v51 characterAtIndex:0]== 160;
                }

                else
                {
                  v54 = 0;
                  v104 = v175;
                }

                v176 = 0;
                v55 = 0;
                goto LABEL_166;
              }

              v118 = 0;
              v119 = v90;
              while (1)
              {
                v42 = v119-- < 1;
                if (v42)
                {
                  break;
                }

                v120 = [v175 characterIsMember:{objc_msgSend(v185, "characterAtIndex:", v119)}];
                v121 = v120 & v118;
                v118 |= v120 ^ 1;
                if (v121 == 1)
                {
                  goto LABEL_324;
                }
              }

              v119 = -1;
LABEL_324:
              v57 = v90 - (v119 & ~(v119 >> 63));
              v180 = v119 & ~(v119 >> 63);
              v51 = [v185 substringWithRange:?];
LABEL_325:
              v92 = 0;
              v58 = 0;
              goto LABEL_156;
            }

LABEL_267:
            v92 = 0;
            v58 = 0;
            v57 = 0;
            v180 = 0x7FFFFFFFLL;
            v51 = &stru_1EFE6D570;
            goto LABEL_156;
          }

          goto LABEL_155;
        }

        if (!v49 && location && location == a7.location)
        {
          v49 = 1;
        }

        else
        {
          if (a7.location != 0x7FFFFFFF)
          {
LABEL_295:
            if (v49 >= 1 && v170 + v49 <= [v185 length])
            {
              v160 = [v185 substringWithRange:{v170, v49}];

              v51 = v160;
            }

            if ([(__CFString *)v51 isEqualToString:&stru_1EFE6D570])
            {
              v161 = v170 + 1;
              if ((v170 + 1) < 0 || v161 >= [v185 length])
              {
                v162 = 0;
              }

              else
              {
                v162 = [v185 substringFromIndex:v161];
              }
            }

            else
            {
              v162 = v51;
            }

            if ([(__CFString *)v162 isAXAttributedString])
            {
              v164 = [(__CFString *)v162 attributeValueForKey:*MEMORY[0x1E6988DA0]];
              v165 = [(__CFString *)v162 isEqualToString:v164];

              if (v165)
              {
                v166 = +[AXSettings sharedInstance];
                v167 = [v166 voiceOverInlineTextCompletionAppearanceFeedback];

                if ((v167 & 2) == 0)
                {

                  v51 = 0;
                }

                v56 = v172;
                if ((v167 & 8) != 0)
                {
                  [(__CFString *)v162 setAttribute:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6988EB8]];
                }

                if ((v167 & 2) != 0)
                {
                  v168 = v162;

                  v51 = v168;
                }
              }

              else
              {
                v56 = v172;
              }
            }

            goto LABEL_318;
          }

          v102 = location - v49;
          if (location < v49)
          {
LABEL_318:
            v58 = 0;
            v57 = 0;
            v180 = 0x7FFFFFFFLL;
            goto LABEL_319;
          }
        }

        v170 = v102;
        if (v102 == 0x7FFFFFFF)
        {
          v180 = 0x7FFFFFFFLL;
          v58 = 0;
          v57 = 0;
LABEL_319:
          v92 = 1;
          goto LABEL_156;
        }

        goto LABEL_295;
      }

LABEL_283:
      if ([v185 isAXAttributedString])
      {
        v179 = v47;
        v188 = 0;
        v189 = 0;
        v153 = [v185 attributesAtIndex:v48 effectiveRange:&v188];
        v186[0] = 0;
        v186[1] = 0;
        v154 = MEMORY[0x1E6988E98];
        v174 = [v185 attribute:*MEMORY[0x1E6988E98] atIndex:v48 effectiveRange:v186];
        if (v174 && v48 != v186[0])
        {
          v155 = [v153 mutableCopy];
          [v155 removeObjectForKey:*v154];
          [v155 removeObjectForKey:*MEMORY[0x1E6988EA0]];
          v156 = [v155 copy];

          v153 = v156;
        }

        v47 = v179;
        v152 = v181;
        v157 = [MEMORY[0x1E6988D60] axAttributedStringWithString:v181];
        [v157 setAttributes:v153];
        v158 = v157;

        v51 = v158;
        v172 = 1;
        v183 = v51;
      }

      else
      {
        v152 = v181;
        v159 = [v181 copy];

        v51 = v159;
        v172 = 1;
        v184 = v51;
      }

      goto LABEL_289;
    }

    v59 = [v29 isEqualToString:v185];
    if ((a15 & 0xFFFFFFFFFFFFFFFDLL) == 1 && v59 && v32 == 1 && location != a7.location)
    {
      v60 = location - 1;
      if (location == 0x80000000 || v60 > [v185 length])
      {
        v60 = [AXValueChangeUtilities findLocationOfDifferenceInOldString:v185 withNewString:v29];
      }

      if ((v60 & 0x8000000000000000) == 0 && v60 < [v185 length])
      {
        LOWORD(v186[0]) = [v185 characterAtIndex:v60];
        v61 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithCharacters:v186 length:1];
        if ([v185 isAXAttributedString])
        {
          v188 = 0;
          v189 = 0;
          v62 = [v185 attributesAtIndex:v60 effectiveRange:&v188];
          v63 = [MEMORY[0x1E6988D60] axAttributedStringWithString:v61];
          [v63 setAttributes:v62];
          v51 = v63;

          v183 = v51;
        }

        else
        {
          v117 = [v61 copy];

          v51 = v117;
          v184 = v51;
        }

        v176 = 0;
        v54 = 0;
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v173 = 0;
        v55 = 1;
        goto LABEL_105;
      }

      v176 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v173 = 0;
      v180 = 0x7FFFFFFFLL;
      v51 = &stru_1EFE6D570;
      goto LABEL_166;
    }

    v73 = [v29 isEqualToString:v185];
    v57 = 0;
    if (v32 > 0)
    {
      v74 = v73;
    }

    else
    {
      v74 = 0;
    }

    v51 = &stru_1EFE6D570;
    v180 = 0x7FFFFFFFLL;
    if ((a15 & 0xFFFFFFFFFFFFFFFDLL) != 1 || v74 || v31 != v32 || v32 < 1)
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v176 = 0;
      v58 = 0;
      goto LABEL_113;
    }

    v57 = 0;
    v180 = 0x7FFFFFFFLL;
    if (!location || location == 0x7FFFFFFF)
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v176 = 0;
      v58 = 0;
LABEL_113:
      v173 = 0;
      goto LABEL_166;
    }

    if ([v182 length] >= location)
    {
      v116 = [v182 substringToIndex:location];
    }

    else
    {
      v116 = 0;
    }

    if ([v185 length] >= location)
    {
      v125 = [v185 substringToIndex:location];
    }

    else
    {
      v125 = 0;
    }

    v126 = location - 1;
    if ([v116 length] >= location - 1)
    {
      v127 = [v116 substringFromIndex:location - 1];
      v128 = [v116 substringToIndex:location - 1];
    }

    else
    {
      v127 = 0;
      v128 = 0;
    }

    if ([v125 length] >= v126)
    {
      v129 = [v125 substringFromIndex:location - 1];
      v130 = [v125 substringToIndex:location - 1];
    }

    else
    {
      v129 = 0;
      v130 = 0;
    }

    if ([v128 length] && objc_msgSend(v130, "length") && objc_msgSend(v127, "length") && objc_msgSend(v129, "length") && objc_msgSend(v128, "isEqualToString:", v130) && (objc_msgSend(v127, "isEqualToString:", v129) & 1) == 0)
    {
      v169 = v129;
    }

    else
    {
      if (![v127 length] || !objc_msgSend(v129, "length") || (objc_msgSend(v127, "isEqualToString:", v129) & 1) != 0)
      {
        v173 = 0;
LABEL_241:

        goto LABEL_103;
      }

      if ((v126 & 0x8000000000000000) == 0)
      {
        v126 = location;
        while (1)
        {
          v149 = v126 - 1;
          if ([v185 length] >= (v126 - 1) && objc_msgSend(v182, "length") >= v149)
          {
            v150 = [v185 characterAtIndex:v126 - 1];
            if (v150 == [v182 characterAtIndex:v126 - 1])
            {
              break;
            }
          }

          --v126;
          if (v149 <= 0)
          {
            v126 = -1;
            break;
          }
        }
      }

      if ([v185 length] < location || (v151 = v126 & ~(v126 >> 63), objc_msgSend(v185, "length") < v151))
      {
        v173 = 0;
        v51 = &stru_1EFE6D570;
        goto LABEL_241;
      }

      v169 = [v185 substringWithRange:{v126 & ~(v126 >> 63), location - v151}];
    }

    v51 = v169;
    v173 = 1;
    goto LABEL_241;
  }

  if (a9 == 2)
  {
    if (v27)
    {
      v44 = location;
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = [AXValueChangeUtilities findLocationOfDifferenceInOldString:v29 withNewString:v185];
  }

  if (v44 >= v31)
  {
    v176 = 0;
    v51 = &stru_1EFE6D570;
  }

  else
  {
    v51 = &stru_1EFE6D570;
    if ([&stru_1EFE6D570 length])
    {
      v176 = 0;
    }

    else
    {
      v75 = [v185 isEqualToString:v29];
      if (v44)
      {
        v76 = 0;
      }

      else
      {
        v76 = v75;
      }

      v176 = v76;
      if (v31 <= v32)
      {
        v77 = v75 ^ 1u;
      }

      else
      {
        v77 = v31 - v32;
      }

      if (v31 == v32)
      {
        v78 = v75 ^ 1u;
      }

      else
      {
        v78 = v77;
      }

      if (v78 + v44 <= [v29 length])
      {
        v51 = [v29 substringWithRange:{v44, v78}];
      }
    }
  }

  v54 = [(__CFString *)v51 length]&& (([(__CFString *)v51 isEqualToString:@" "]& 1) != 0 || [(__CFString *)v51 characterAtIndex:0]== 160);
  if ([(__CFString *)v51 length])
  {
LABEL_55:
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v173 = 2;
LABEL_105:
    v180 = 0x7FFFFFFFLL;
    goto LABEL_166;
  }

  v57 = 0;
  v55 = 0;
  if (v31 >= 1 && v32 >= 1)
  {
    if (v31 != v32)
    {
      if (v31 - v32 == 1)
      {
        [v182 substringFromIndex:{objc_msgSend(v182, "length") - 1}];
        v85 = v84 = v54;
        v86 = [v85 decomposedStringWithCanonicalMapping];

        [v86 rangeOfComposedCharacterSequenceAtIndex:0];
        v88 = [v86 substringFromIndex:v87 - 1];

        v55 = 0;
        v57 = 0;
        v58 = 0;
        v173 = 2;
        v180 = 0x7FFFFFFFLL;
        v51 = v88;
        v54 = v84;
        v56 = 0;
        goto LABEL_166;
      }

      goto LABEL_55;
    }

    v64 = v54;
    v65 = [v182 substringFromIndex:{objc_msgSend(v182, "length") - 1}];
    v66 = [v65 decomposedStringWithCanonicalMapping];

    v67 = [v185 substringFromIndex:{objc_msgSend(v185, "length") - 1}];
    v68 = [v67 decomposedStringWithCanonicalMapping];

    [v66 rangeOfComposedCharacterSequenceAtIndex:0];
    v70 = v69;
    [v68 rangeOfComposedCharacterSequenceAtIndex:0];
    if (v70 <= v71)
    {
      if ([v182 isEqualToString:v185])
      {
        v173 = 2;
LABEL_246:
        v54 = v64;

        goto LABEL_104;
      }

      v122 = [v182 substringWithRange:{0, objc_msgSend(v182, "length") - 1}];
      v123 = [v185 substringWithRange:{0, objc_msgSend(v185, "length") - 1}];
      if ([v123 isEqualToString:v122])
      {
        v124 = v68;

        v173 = 1;
        v51 = v124;
      }

      else
      {
        v173 = 2;
      }

      v72 = v51;

      v51 = v122;
    }

    else
    {
      v72 = [v66 substringFromIndex:v70 - 1];
      v173 = 2;
    }

    v51 = v72;
    goto LABEL_246;
  }

  v173 = 2;
  v180 = 0x7FFFFFFFLL;
  v56 = 0;
  v58 = 0;
LABEL_166:
  if (a24 && (AXLanguageIsSpeakableEmojiString() & 1) == 0)
  {
    [(__CFString *)v51 rangeOfComposedCharacterSequenceAtIndex:0];
    if (v105 < [(__CFString *)v51 length])
    {

      v51 = 0;
    }
  }

  if (a25)
  {
    [(AXFirstResponderValueChangeManager *)self _handleApostropheIfNeeded:v51];
    v106 = v58;
    v108 = v107 = v54;

    v109 = [(AXFirstResponderValueChangeManager *)self _handleApostropheIfNeeded:v184];

    [(AXFirstResponderValueChangeManager *)self _handleAttributedApostropheIfNeeded:v183];
    v51 = v108;
    v54 = v107;
    v58 = v106;
    v184 = v109;
  }

  if (a11)
  {
    *a11 = v176;
  }

  if (a12)
  {
    *a12 = v54;
  }

  if (a16)
  {
    *a16 = v178;
  }

  if (a18)
  {
    *a18 = v56;
  }

  if (a21)
  {
    *a21 = v55;
  }

  if (a19)
  {
    v110 = v183;
    *a19 = v183;
  }

  if (a20)
  {
    v111 = v184;
    *a20 = v184;
  }

  if (a22)
  {
    a22->location = v180;
    a22->length = v57;
  }

  if (a23)
  {
    *a23 = v58;
  }

  if (a10)
  {
    *a10 = v173;
  }

  v112 = v51;

  return v51;
}

- (id)_handleApostropheIfNeeded:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"‘"])
  {
    v10 = @"typing.feedback.opening.single.quotation.mark";
  }

  else
  {
    if (![v3 isEqualToString:@"’"])
    {
      goto LABEL_6;
    }

    v10 = @"typing.feedback.closing.single.quotation.mark";
  }

  v11 = AXParameterizedLocalizedString(1, v10, v4, v5, v6, v7, v8, v9, v13);

  v3 = v11;
LABEL_6:

  return v3;
}

- (void)_handleAttributedApostropheIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [v4 string];
  [v4 replaceString:{-[AXFirstResponderValueChangeManager _handleApostropheIfNeeded:](self, "_handleApostropheIfNeeded:", v5)}];
}

- (id)wordBreakSet
{
  v2 = [MEMORY[0x1E696AB08] wordBreakCharacterSet];
  v3 = [v2 mutableCopy];

  [v3 removeCharactersInString:@"'’"];

  return v3;
}

@end