@interface AXOutputRequest
+ (id)addAttributesToAction:(id)action fromDictionary:(id)dictionary;
+ (id)processString:(id)string brailleString:(id)brailleString breakWords:(BOOL)words withLanguage:(id)language atIndex:(int64_t)index category:(id)category;
+ (id)processStringsAndLanguages:(id)languages brailleString:(id)string breakWords:(BOOL)words withLanguage:(id)language atIndex:(int64_t)index category:(id)category;
@end

@implementation AXOutputRequest

+ (id)processString:(id)string brailleString:(id)brailleString breakWords:(BOOL)words withLanguage:(id)language atIndex:(int64_t)index category:(id)category
{
  stringCopy = string;
  brailleStringCopy = brailleString;
  languageCopy = language;
  categoryCopy = category;
  v15 = objc_opt_new();
  if (stringCopy)
  {
    v25 = categoryCopy;
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    if ([stringCopy length] < 0x3E9)
    {
      v21 = 0;
    }

    else
    {
      v17 = 0;
      v18 = stringCopy;
      while (2)
      {
        v19 = 1000;
        while (([whitespaceAndNewlineCharacterSet characterIsMember:{objc_msgSend(v18, "characterAtIndex:", v19)}] & 1) == 0)
        {
          if (--v19 == -1)
          {
            v19 = [v18 length];
            if (v19 < 0)
            {
              stringCopy = v18;
              v21 = v17;
              goto LABEL_14;
            }

            break;
          }
        }

        v20 = [v18 substringToIndex:v19];
        v21 = [objc_allocWithZone(AXOutputAction) initWithString:v20 brailleString:brailleStringCopy];

        [v21 setWasDivided:1];
        [v21 setObject:languageCopy forVariant:15];
        [v15 addObject:v21];
        v22 = v19 + 1;
        if (v22 >= [v18 length])
        {

          stringCopy = v18;
        }

        else
        {
          stringCopy = [v18 substringFromIndex:v22];

          v18 = stringCopy;
          v17 = v21;
          if ([stringCopy length] > 0x3E8)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_14:
    if ([stringCopy length])
    {
      v23 = [objc_allocWithZone(AXOutputAction) initWithString:stringCopy brailleString:brailleStringCopy];

      [v23 setWasDivided:1];
      categoryCopy = v25;
      [v23 setObject:v25 forVariant:86];
      if ([languageCopy length])
      {
        [v23 setObject:languageCopy forVariant:15];
      }

      [v15 addObject:v23];
    }

    else
    {
      v23 = v21;
      categoryCopy = v25;
    }
  }

  return v15;
}

+ (id)processStringsAndLanguages:(id)languages brailleString:(id)string breakWords:(BOOL)words withLanguage:(id)language atIndex:(int64_t)index category:(id)category
{
  wordsCopy = words;
  v52 = *MEMORY[0x1E69E9840];
  languagesCopy = languages;
  stringCopy = string;
  languageCopy = language;
  categoryCopy = category;
  v15 = objc_opt_new();
  if (languagesCopy)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v35 = languagesCopy;
    obj = languagesCopy;
    v41 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v41)
    {
      v16 = *v47;
      v17 = MEMORY[0x1E695E118];
      v36 = *v47;
      indexCopy = index;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v47 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v46 + 1) + 8 * i);
          v20 = [v19 objectForKeyedSubscript:@"language"];

          null = [MEMORY[0x1E695DFB0] null];
          v22 = [(__CFString *)v20 isEqual:null];

          if ((v22 & 1) != 0 || !v20)
          {

            languageCopy = &stru_1EFE6D570;
          }

          else
          {
            languageCopy = v20;
          }

          v23 = [v19 objectForKeyedSubscript:@"string"];
          v24 = [AXOutputRequest processString:v23 brailleString:stringCopy breakWords:wordsCopy withLanguage:languageCopy atIndex:index category:categoryCopy];

          [v15 axSafelyAddObjectsFromArray:v24];
          v25 = [v19 objectForKeyedSubscript:@"skipsUnpronounceable"];
          bOOLValue = [v25 BOOLValue];

          if (bOOLValue)
          {
            v27 = v15;
            v28 = stringCopy;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v29 = v24;
            v30 = [v29 countByEnumeratingWithState:&v42 objects:v50 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v43;
              do
              {
                for (j = 0; j != v31; ++j)
                {
                  if (*v43 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  [*(*(&v42 + 1) + 8 * j) setObject:v17 forVariant:83];
                }

                v31 = [v29 countByEnumeratingWithState:&v42 objects:v50 count:16];
              }

              while (v31);
            }

            stringCopy = v28;
            v15 = v27;
            v16 = v36;
            index = indexCopy;
          }
        }

        v41 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v41);
    }

    languagesCopy = v35;
  }

  return v15;
}

+ (id)addAttributesToAction:(id)action fromDictionary:(id)dictionary
{
  actionCopy = action;
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988DF8]];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = *MEMORY[0x1E695E4D0];
    v10 = actionCopy;
    v11 = 45;
  }

  else
  {
    v12 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988ED8]];
    bOOLValue2 = [v12 BOOLValue];

    if (bOOLValue2)
    {
      v9 = *MEMORY[0x1E695E4D0];
      v10 = actionCopy;
      v11 = 46;
    }

    else
    {
      v14 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6988F40]];
      bOOLValue3 = [v14 BOOLValue];

      if (bOOLValue3)
      {
        v9 = *MEMORY[0x1E695E4D0];
        v10 = actionCopy;
        v11 = 41;
      }

      else
      {
        v16 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6988F88]];
        bOOLValue4 = [v16 BOOLValue];

        if (bOOLValue4)
        {
          v9 = *MEMORY[0x1E695E4D0];
          v10 = actionCopy;
          v11 = 65;
        }

        else
        {
          v18 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988F00]];
          bOOLValue5 = [v18 BOOLValue];

          if (bOOLValue5)
          {
            v9 = *MEMORY[0x1E695E4D0];
            v10 = actionCopy;
            v11 = 44;
          }

          else
          {
            v20 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988E28]];
            bOOLValue6 = [v20 BOOLValue];

            if (!bOOLValue6)
            {
              v120 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988E08]];
              bOOLValue7 = [v120 BOOLValue];

              if (bOOLValue7)
              {
                string = [actionCopy string];
                lowercaseString = [string lowercaseString];
                [actionCopy setString:lowercaseString];
              }

              else
              {
                v124 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988E20]];
                bOOLValue8 = [v124 BOOLValue];

                if (bOOLValue8)
                {
                  v9 = *MEMORY[0x1E695E4D0];
                  v10 = actionCopy;
                  v11 = 47;
                  goto LABEL_13;
                }

                v126 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988E30]];
                bOOLValue9 = [v126 BOOLValue];

                if (bOOLValue9)
                {
                  v9 = *MEMORY[0x1E695E4D0];
                  v10 = actionCopy;
                  v11 = 48;
                  goto LABEL_13;
                }

                v128 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988E10]];
                bOOLValue10 = [v128 BOOLValue];

                if (bOOLValue10)
                {
                  v9 = *MEMORY[0x1E695E4D0];
                  v10 = actionCopy;
                  v11 = 49;
                  goto LABEL_13;
                }

                v130 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988F48]];
                bOOLValue11 = [v130 BOOLValue];

                if (bOOLValue11)
                {
                  v9 = *MEMORY[0x1E695E4D0];
                  v10 = actionCopy;
                  v11 = 51;
                  goto LABEL_13;
                }

                v132 = MEMORY[0x1E6988F18];
                v133 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988F18]];

                if (v133)
                {
                  string = [dictionaryCopy objectForKey:*v132];
                  v134 = actionCopy;
                  v135 = string;
                  v136 = 75;
                }

                else
                {
                  v137 = MEMORY[0x1E6988DD8];
                  v138 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988DD8]];

                  if (!v138)
                  {
                    v139 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988F08]];
                    bOOLValue12 = [v139 BOOLValue];

                    if (!bOOLValue12)
                    {
                      goto LABEL_14;
                    }

                    v9 = *MEMORY[0x1E695E4D0];
                    v10 = actionCopy;
                    v11 = 64;
                    goto LABEL_13;
                  }

                  string = [dictionaryCopy objectForKey:*v137];
                  v134 = actionCopy;
                  v135 = string;
                  v136 = 85;
                }

                [v134 setObject:v135 forVariant:v136];
              }

              goto LABEL_14;
            }

            v9 = *MEMORY[0x1E695E4D0];
            v10 = actionCopy;
            v11 = 60;
          }
        }
      }
    }
  }

LABEL_13:
  [v10 setObject:v9 forVariant:v11];
LABEL_14:
  v22 = *MEMORY[0x1E6988D38];
  v23 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988D38]];

  if (v23)
  {
    v24 = [dictionaryCopy objectForKey:v22];
    [actionCopy setObject:v24 forVariant:78];

    [actionCopy setObject:MEMORY[0x1E695E118] forVariant:54];
  }

  v25 = *MEMORY[0x1E6988D58];
  v26 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988D58]];

  if (v26)
  {
    v27 = [dictionaryCopy objectForKey:v25];
    [actionCopy setObject:v27 forVariant:79];
  }

  v28 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988E90]];
  bOOLValue13 = [v28 BOOLValue];

  if (bOOLValue13)
  {
    [actionCopy setObject:*MEMORY[0x1E695E4D0] forVariant:52];
  }

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*MEMORY[0x1E6989060]];
  v31 = [dictionaryCopy objectForKey:v30];
  bOOLValue14 = [v31 BOOLValue];

  if (bOOLValue14)
  {
    [actionCopy setObject:*MEMORY[0x1E695E4D0] forVariant:53];
  }

  v33 = MEMORY[0x1E6988E60];
  v34 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988E60]];

  if (v34)
  {
    v35 = [dictionaryCopy objectForKey:*v33];
    [actionCopy setObject:v35 forVariant:62];
  }

  v36 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988EF8]];
  bOOLValue15 = [v36 BOOLValue];

  if (bOOLValue15)
  {
    [actionCopy setObject:*MEMORY[0x1E695E4D0] forVariant:55];
  }

  v38 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988EC0]];
  bOOLValue16 = [v38 BOOLValue];

  if (bOOLValue16)
  {
    [actionCopy setObject:*MEMORY[0x1E695E4D0] forVariant:56];
  }

  v40 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988E68]];
  bOOLValue17 = [v40 BOOLValue];

  if (bOOLValue17)
  {
    [actionCopy setObject:*MEMORY[0x1E695E4D0] forVariant:66];
  }

  v42 = MEMORY[0x1E6988E88];
  v43 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988E88]];

  if (v43)
  {
    goto LABEL_31;
  }

  v108 = *MEMORY[0x1E6988D30];
  v109 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988D30]];

  if (v109)
  {
    v44 = [dictionaryCopy objectForKey:v108];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v44 length])
    {
      goto LABEL_33;
    }

    v110 = AXLanguageConvertToCanonicalForm(v44);

    v44 = v110;
LABEL_32:
    [actionCopy setObject:v44 forVariant:15];
LABEL_33:

    goto LABEL_34;
  }

  v42 = MEMORY[0x1E6988DB8];
  v113 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988DB8]];

  if (v113 || (v42 = MEMORY[0x1E6988ED0], [dictionaryCopy objectForKey:*MEMORY[0x1E6988ED0]], v114 = objc_claimAutoreleasedReturnValue(), v114, v114))
  {
LABEL_31:
    v44 = [dictionaryCopy objectForKey:*v42];
    goto LABEL_32;
  }

LABEL_34:
  v45 = MEMORY[0x1E6988EE0];
  v46 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988EE0]];

  if (v46)
  {
    v47 = [dictionaryCopy objectForKey:*v45];
    [actionCopy setObject:v47 forVariant:16];
  }

  v48 = MEMORY[0x1E6988E18];
  v49 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988E18]];

  if (v49)
  {
    v50 = [dictionaryCopy objectForKey:*v48];
    [actionCopy setObject:v50 forVariant:77];
  }

  v51 = MEMORY[0x1E6988F78];
  v52 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988F78]];
  bOOLValue18 = [v52 BOOLValue];

  v54 = MEMORY[0x1E6988F80];
  if (bOOLValue18)
  {
    v55 = *v51;
LABEL_42:
    v58 = actionCopy;
    v59 = 30;
LABEL_43:
    [v58 setObject:v55 forVariant:v59];
    goto LABEL_44;
  }

  v56 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988F80]];
  bOOLValue19 = [v56 BOOLValue];

  if (bOOLValue19)
  {
    v55 = *v54;
    goto LABEL_42;
  }

  v111 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988F70]];
  bOOLValue20 = [v111 BOOLValue];

  if (bOOLValue20)
  {
    v55 = *MEMORY[0x1E695E4D0];
    v58 = actionCopy;
    v59 = 31;
    goto LABEL_43;
  }

  v115 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988E70]];
  bOOLValue21 = [v115 BOOLValue];

  if (bOOLValue21)
  {
    v55 = *MEMORY[0x1E695E4D0];
    v58 = actionCopy;
    v59 = 70;
    goto LABEL_43;
  }

  v117 = *MEMORY[0x1E6988DA0];
  v118 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988DA0]];

  if (v118)
  {
    v119 = [dictionaryCopy objectForKey:v117];
    [actionCopy setObject:v119 forVariant:88];
  }

LABEL_44:
  v60 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988EA8]];
  if ([v60 BOOLValue])
  {
  }

  else
  {
    v61 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988D50]];
    bOOLValue22 = [v61 BOOLValue];

    if (!bOOLValue22)
    {
      goto LABEL_48;
    }
  }

  [actionCopy setObject:*MEMORY[0x1E695E4D0] forVariant:28];
LABEL_48:
  v63 = MEMORY[0x1E6988DC0];
  v64 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6988DC0]];

  if (v64)
  {
    v65 = [dictionaryCopy objectForKeyedSubscript:*v63];
    [actionCopy setObject:v65 forVariant:42];
  }

  v66 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988EB0]];
  rangeOfString = [actionCopy rangeOfString];
  if (v66)
  {
    v69 = rangeOfString;
    v70 = v68;
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v141[0] = MEMORY[0x1E69E9820];
    v141[1] = 3221225472;
    v141[2] = __56__AXOutputRequest_addAttributesToAction_fromDictionary___block_invoke;
    v141[3] = &unk_1E71EB020;
    v143 = v69;
    v144 = v70;
    v72 = indexSet;
    v142 = v72;
    [v66 enumerateRangesUsingBlock:v141];
    [actionCopy setObject:v72 forVariant:29];
  }

  v73 = MEMORY[0x1E6988FA0];
  v74 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988FA0]];

  if (v74)
  {
    v75 = [dictionaryCopy objectForKey:*v73];
    [actionCopy setString:v75];

    [actionCopy setObject:MEMORY[0x1E695E118] forVariant:54];
  }

  v76 = MEMORY[0x1E6988E58];
  v77 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988E58]];
  bOOLValue23 = [v77 BOOLValue];

  if ((bOOLValue23 & 1) != 0 || (v76 = MEMORY[0x1E6988EB8], [dictionaryCopy objectForKey:*MEMORY[0x1E6988EB8]], v79 = objc_claimAutoreleasedReturnValue(), v80 = objc_msgSend(v79, "BOOLValue"), v79, v80))
  {
    [actionCopy setObject:*v76 forVariant:32];
  }

  v81 = *MEMORY[0x1E6988D40];
  v82 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988D40]];

  if (v82)
  {
    v83 = [dictionaryCopy objectForKey:v81];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v83 floatValue];
      v85 = v84;
      if (v85 > 2.0)
      {
        v85 = 2.0;
      }

      v86 = fmax(v85, 0.0);
      *&v86 = v86;
      v87 = [MEMORY[0x1E696AD98] numberWithFloat:v86];
      [actionCopy setObject:v87 forVariant:32];
    }
  }

  v88 = *MEMORY[0x1E6988D48];
  v89 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988D48]];

  if (v89)
  {
    v90 = [dictionaryCopy objectForKey:v88];
    if ([v90 BOOLValue])
    {
      v91 = v51;
    }

    else
    {
      v91 = v54;
    }

    [actionCopy setObject:*v91 forVariant:30];
  }

  v92 = MEMORY[0x1E6988F68];
  v93 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988F68]];

  if (v93)
  {
    v94 = [dictionaryCopy objectForKey:*v92];
    [actionCopy setObject:v94 forVariant:71];
  }

  v95 = MEMORY[0x1E6988DF0];
  v96 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988DF0]];

  if (v96)
  {
    v97 = [dictionaryCopy objectForKey:*v95];
    [actionCopy setObject:v97 forVariant:72];
  }

  v98 = MEMORY[0x1E6988DE8];
  v99 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988DE8]];

  if (v99)
  {
    v100 = [dictionaryCopy objectForKey:*v98];
    [actionCopy setObject:v100 forVariant:73];
  }

  v101 = MEMORY[0x1E6988F10];
  v102 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988F10]];
  bOOLValue24 = [v102 BOOLValue];

  if (bOOLValue24)
  {
    [actionCopy setObject:*v101 forVariant:32];
  }

  v104 = [dictionaryCopy objectForKey:*MEMORY[0x1E6988DD0]];
  bOOLValue25 = [v104 BOOLValue];

  if (bOOLValue25)
  {
    [actionCopy setObject:*MEMORY[0x1E695E4D0] forVariant:61];
  }

  v106 = actionCopy;

  return actionCopy;
}

NSUInteger __56__AXOutputRequest_addAttributesToAction_fromDictionary___block_invoke(uint64_t a1, NSRange range2)
{
  length = range2.length;
  location = range2.location;
  v10.location = range2.location;
  v10.length = length;
  v6 = NSIntersectionRange(*(a1 + 40), v10);
  result = v6.location;
  if (v6.length)
  {
    v7 = *(a1 + 32);
    v8 = location - *(a1 + 40);

    return [v7 addIndexesInRange:{v8, length}];
  }

  return result;
}

@end