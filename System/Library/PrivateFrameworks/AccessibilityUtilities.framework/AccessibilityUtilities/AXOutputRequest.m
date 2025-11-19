@interface AXOutputRequest
+ (id)addAttributesToAction:(id)a3 fromDictionary:(id)a4;
+ (id)processString:(id)a3 brailleString:(id)a4 breakWords:(BOOL)a5 withLanguage:(id)a6 atIndex:(int64_t)a7 category:(id)a8;
+ (id)processStringsAndLanguages:(id)a3 brailleString:(id)a4 breakWords:(BOOL)a5 withLanguage:(id)a6 atIndex:(int64_t)a7 category:(id)a8;
@end

@implementation AXOutputRequest

+ (id)processString:(id)a3 brailleString:(id)a4 breakWords:(BOOL)a5 withLanguage:(id)a6 atIndex:(int64_t)a7 category:(id)a8
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a8;
  v15 = objc_opt_new();
  if (v11)
  {
    v25 = v14;
    v16 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    if ([v11 length] < 0x3E9)
    {
      v21 = 0;
    }

    else
    {
      v17 = 0;
      v18 = v11;
      while (2)
      {
        v19 = 1000;
        while (([v16 characterIsMember:{objc_msgSend(v18, "characterAtIndex:", v19)}] & 1) == 0)
        {
          if (--v19 == -1)
          {
            v19 = [v18 length];
            if (v19 < 0)
            {
              v11 = v18;
              v21 = v17;
              goto LABEL_14;
            }

            break;
          }
        }

        v20 = [v18 substringToIndex:v19];
        v21 = [objc_allocWithZone(AXOutputAction) initWithString:v20 brailleString:v12];

        [v21 setWasDivided:1];
        [v21 setObject:v13 forVariant:15];
        [v15 addObject:v21];
        v22 = v19 + 1;
        if (v22 >= [v18 length])
        {

          v11 = v18;
        }

        else
        {
          v11 = [v18 substringFromIndex:v22];

          v18 = v11;
          v17 = v21;
          if ([v11 length] > 0x3E8)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_14:
    if ([v11 length])
    {
      v23 = [objc_allocWithZone(AXOutputAction) initWithString:v11 brailleString:v12];

      [v23 setWasDivided:1];
      v14 = v25;
      [v23 setObject:v25 forVariant:86];
      if ([v13 length])
      {
        [v23 setObject:v13 forVariant:15];
      }

      [v15 addObject:v23];
    }

    else
    {
      v23 = v21;
      v14 = v25;
    }
  }

  return v15;
}

+ (id)processStringsAndLanguages:(id)a3 brailleString:(id)a4 breakWords:(BOOL)a5 withLanguage:(id)a6 atIndex:(int64_t)a7 category:(id)a8
{
  v39 = a5;
  v52 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v40 = a8;
  v15 = objc_opt_new();
  if (v12)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v35 = v12;
    obj = v12;
    v41 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v41)
    {
      v16 = *v47;
      v17 = MEMORY[0x1E695E118];
      v36 = *v47;
      v37 = a7;
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

          v21 = [MEMORY[0x1E695DFB0] null];
          v22 = [(__CFString *)v20 isEqual:v21];

          if ((v22 & 1) != 0 || !v20)
          {

            v14 = &stru_1EFE6D570;
          }

          else
          {
            v14 = v20;
          }

          v23 = [v19 objectForKeyedSubscript:@"string"];
          v24 = [AXOutputRequest processString:v23 brailleString:v13 breakWords:v39 withLanguage:v14 atIndex:a7 category:v40];

          [v15 axSafelyAddObjectsFromArray:v24];
          v25 = [v19 objectForKeyedSubscript:@"skipsUnpronounceable"];
          v26 = [v25 BOOLValue];

          if (v26)
          {
            v27 = v15;
            v28 = v13;
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

            v13 = v28;
            v15 = v27;
            v16 = v36;
            a7 = v37;
          }
        }

        v41 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v41);
    }

    v12 = v35;
  }

  return v15;
}

+ (id)addAttributesToAction:(id)a3 fromDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKey:*MEMORY[0x1E6988DF8]];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = *MEMORY[0x1E695E4D0];
    v10 = v5;
    v11 = 45;
  }

  else
  {
    v12 = [v6 objectForKey:*MEMORY[0x1E6988ED8]];
    v13 = [v12 BOOLValue];

    if (v13)
    {
      v9 = *MEMORY[0x1E695E4D0];
      v10 = v5;
      v11 = 46;
    }

    else
    {
      v14 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6988F40]];
      v15 = [v14 BOOLValue];

      if (v15)
      {
        v9 = *MEMORY[0x1E695E4D0];
        v10 = v5;
        v11 = 41;
      }

      else
      {
        v16 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6988F88]];
        v17 = [v16 BOOLValue];

        if (v17)
        {
          v9 = *MEMORY[0x1E695E4D0];
          v10 = v5;
          v11 = 65;
        }

        else
        {
          v18 = [v6 objectForKey:*MEMORY[0x1E6988F00]];
          v19 = [v18 BOOLValue];

          if (v19)
          {
            v9 = *MEMORY[0x1E695E4D0];
            v10 = v5;
            v11 = 44;
          }

          else
          {
            v20 = [v6 objectForKey:*MEMORY[0x1E6988E28]];
            v21 = [v20 BOOLValue];

            if (!v21)
            {
              v120 = [v6 objectForKey:*MEMORY[0x1E6988E08]];
              v121 = [v120 BOOLValue];

              if (v121)
              {
                v122 = [v5 string];
                v123 = [v122 lowercaseString];
                [v5 setString:v123];
              }

              else
              {
                v124 = [v6 objectForKey:*MEMORY[0x1E6988E20]];
                v125 = [v124 BOOLValue];

                if (v125)
                {
                  v9 = *MEMORY[0x1E695E4D0];
                  v10 = v5;
                  v11 = 47;
                  goto LABEL_13;
                }

                v126 = [v6 objectForKey:*MEMORY[0x1E6988E30]];
                v127 = [v126 BOOLValue];

                if (v127)
                {
                  v9 = *MEMORY[0x1E695E4D0];
                  v10 = v5;
                  v11 = 48;
                  goto LABEL_13;
                }

                v128 = [v6 objectForKey:*MEMORY[0x1E6988E10]];
                v129 = [v128 BOOLValue];

                if (v129)
                {
                  v9 = *MEMORY[0x1E695E4D0];
                  v10 = v5;
                  v11 = 49;
                  goto LABEL_13;
                }

                v130 = [v6 objectForKey:*MEMORY[0x1E6988F48]];
                v131 = [v130 BOOLValue];

                if (v131)
                {
                  v9 = *MEMORY[0x1E695E4D0];
                  v10 = v5;
                  v11 = 51;
                  goto LABEL_13;
                }

                v132 = MEMORY[0x1E6988F18];
                v133 = [v6 objectForKey:*MEMORY[0x1E6988F18]];

                if (v133)
                {
                  v122 = [v6 objectForKey:*v132];
                  v134 = v5;
                  v135 = v122;
                  v136 = 75;
                }

                else
                {
                  v137 = MEMORY[0x1E6988DD8];
                  v138 = [v6 objectForKey:*MEMORY[0x1E6988DD8]];

                  if (!v138)
                  {
                    v139 = [v6 objectForKey:*MEMORY[0x1E6988F08]];
                    v140 = [v139 BOOLValue];

                    if (!v140)
                    {
                      goto LABEL_14;
                    }

                    v9 = *MEMORY[0x1E695E4D0];
                    v10 = v5;
                    v11 = 64;
                    goto LABEL_13;
                  }

                  v122 = [v6 objectForKey:*v137];
                  v134 = v5;
                  v135 = v122;
                  v136 = 85;
                }

                [v134 setObject:v135 forVariant:v136];
              }

              goto LABEL_14;
            }

            v9 = *MEMORY[0x1E695E4D0];
            v10 = v5;
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
  v23 = [v6 objectForKey:*MEMORY[0x1E6988D38]];

  if (v23)
  {
    v24 = [v6 objectForKey:v22];
    [v5 setObject:v24 forVariant:78];

    [v5 setObject:MEMORY[0x1E695E118] forVariant:54];
  }

  v25 = *MEMORY[0x1E6988D58];
  v26 = [v6 objectForKey:*MEMORY[0x1E6988D58]];

  if (v26)
  {
    v27 = [v6 objectForKey:v25];
    [v5 setObject:v27 forVariant:79];
  }

  v28 = [v6 objectForKey:*MEMORY[0x1E6988E90]];
  v29 = [v28 BOOLValue];

  if (v29)
  {
    [v5 setObject:*MEMORY[0x1E695E4D0] forVariant:52];
  }

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*MEMORY[0x1E6989060]];
  v31 = [v6 objectForKey:v30];
  v32 = [v31 BOOLValue];

  if (v32)
  {
    [v5 setObject:*MEMORY[0x1E695E4D0] forVariant:53];
  }

  v33 = MEMORY[0x1E6988E60];
  v34 = [v6 objectForKey:*MEMORY[0x1E6988E60]];

  if (v34)
  {
    v35 = [v6 objectForKey:*v33];
    [v5 setObject:v35 forVariant:62];
  }

  v36 = [v6 objectForKey:*MEMORY[0x1E6988EF8]];
  v37 = [v36 BOOLValue];

  if (v37)
  {
    [v5 setObject:*MEMORY[0x1E695E4D0] forVariant:55];
  }

  v38 = [v6 objectForKey:*MEMORY[0x1E6988EC0]];
  v39 = [v38 BOOLValue];

  if (v39)
  {
    [v5 setObject:*MEMORY[0x1E695E4D0] forVariant:56];
  }

  v40 = [v6 objectForKey:*MEMORY[0x1E6988E68]];
  v41 = [v40 BOOLValue];

  if (v41)
  {
    [v5 setObject:*MEMORY[0x1E695E4D0] forVariant:66];
  }

  v42 = MEMORY[0x1E6988E88];
  v43 = [v6 objectForKey:*MEMORY[0x1E6988E88]];

  if (v43)
  {
    goto LABEL_31;
  }

  v108 = *MEMORY[0x1E6988D30];
  v109 = [v6 objectForKey:*MEMORY[0x1E6988D30]];

  if (v109)
  {
    v44 = [v6 objectForKey:v108];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v44 length])
    {
      goto LABEL_33;
    }

    v110 = AXLanguageConvertToCanonicalForm(v44);

    v44 = v110;
LABEL_32:
    [v5 setObject:v44 forVariant:15];
LABEL_33:

    goto LABEL_34;
  }

  v42 = MEMORY[0x1E6988DB8];
  v113 = [v6 objectForKey:*MEMORY[0x1E6988DB8]];

  if (v113 || (v42 = MEMORY[0x1E6988ED0], [v6 objectForKey:*MEMORY[0x1E6988ED0]], v114 = objc_claimAutoreleasedReturnValue(), v114, v114))
  {
LABEL_31:
    v44 = [v6 objectForKey:*v42];
    goto LABEL_32;
  }

LABEL_34:
  v45 = MEMORY[0x1E6988EE0];
  v46 = [v6 objectForKey:*MEMORY[0x1E6988EE0]];

  if (v46)
  {
    v47 = [v6 objectForKey:*v45];
    [v5 setObject:v47 forVariant:16];
  }

  v48 = MEMORY[0x1E6988E18];
  v49 = [v6 objectForKey:*MEMORY[0x1E6988E18]];

  if (v49)
  {
    v50 = [v6 objectForKey:*v48];
    [v5 setObject:v50 forVariant:77];
  }

  v51 = MEMORY[0x1E6988F78];
  v52 = [v6 objectForKey:*MEMORY[0x1E6988F78]];
  v53 = [v52 BOOLValue];

  v54 = MEMORY[0x1E6988F80];
  if (v53)
  {
    v55 = *v51;
LABEL_42:
    v58 = v5;
    v59 = 30;
LABEL_43:
    [v58 setObject:v55 forVariant:v59];
    goto LABEL_44;
  }

  v56 = [v6 objectForKey:*MEMORY[0x1E6988F80]];
  v57 = [v56 BOOLValue];

  if (v57)
  {
    v55 = *v54;
    goto LABEL_42;
  }

  v111 = [v6 objectForKey:*MEMORY[0x1E6988F70]];
  v112 = [v111 BOOLValue];

  if (v112)
  {
    v55 = *MEMORY[0x1E695E4D0];
    v58 = v5;
    v59 = 31;
    goto LABEL_43;
  }

  v115 = [v6 objectForKey:*MEMORY[0x1E6988E70]];
  v116 = [v115 BOOLValue];

  if (v116)
  {
    v55 = *MEMORY[0x1E695E4D0];
    v58 = v5;
    v59 = 70;
    goto LABEL_43;
  }

  v117 = *MEMORY[0x1E6988DA0];
  v118 = [v6 objectForKey:*MEMORY[0x1E6988DA0]];

  if (v118)
  {
    v119 = [v6 objectForKey:v117];
    [v5 setObject:v119 forVariant:88];
  }

LABEL_44:
  v60 = [v6 objectForKey:*MEMORY[0x1E6988EA8]];
  if ([v60 BOOLValue])
  {
  }

  else
  {
    v61 = [v6 objectForKey:*MEMORY[0x1E6988D50]];
    v62 = [v61 BOOLValue];

    if (!v62)
    {
      goto LABEL_48;
    }
  }

  [v5 setObject:*MEMORY[0x1E695E4D0] forVariant:28];
LABEL_48:
  v63 = MEMORY[0x1E6988DC0];
  v64 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6988DC0]];

  if (v64)
  {
    v65 = [v6 objectForKeyedSubscript:*v63];
    [v5 setObject:v65 forVariant:42];
  }

  v66 = [v6 objectForKey:*MEMORY[0x1E6988EB0]];
  v67 = [v5 rangeOfString];
  if (v66)
  {
    v69 = v67;
    v70 = v68;
    v71 = [MEMORY[0x1E696AD50] indexSet];
    v141[0] = MEMORY[0x1E69E9820];
    v141[1] = 3221225472;
    v141[2] = __56__AXOutputRequest_addAttributesToAction_fromDictionary___block_invoke;
    v141[3] = &unk_1E71EB020;
    v143 = v69;
    v144 = v70;
    v72 = v71;
    v142 = v72;
    [v66 enumerateRangesUsingBlock:v141];
    [v5 setObject:v72 forVariant:29];
  }

  v73 = MEMORY[0x1E6988FA0];
  v74 = [v6 objectForKey:*MEMORY[0x1E6988FA0]];

  if (v74)
  {
    v75 = [v6 objectForKey:*v73];
    [v5 setString:v75];

    [v5 setObject:MEMORY[0x1E695E118] forVariant:54];
  }

  v76 = MEMORY[0x1E6988E58];
  v77 = [v6 objectForKey:*MEMORY[0x1E6988E58]];
  v78 = [v77 BOOLValue];

  if ((v78 & 1) != 0 || (v76 = MEMORY[0x1E6988EB8], [v6 objectForKey:*MEMORY[0x1E6988EB8]], v79 = objc_claimAutoreleasedReturnValue(), v80 = objc_msgSend(v79, "BOOLValue"), v79, v80))
  {
    [v5 setObject:*v76 forVariant:32];
  }

  v81 = *MEMORY[0x1E6988D40];
  v82 = [v6 objectForKey:*MEMORY[0x1E6988D40]];

  if (v82)
  {
    v83 = [v6 objectForKey:v81];
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
      [v5 setObject:v87 forVariant:32];
    }
  }

  v88 = *MEMORY[0x1E6988D48];
  v89 = [v6 objectForKey:*MEMORY[0x1E6988D48]];

  if (v89)
  {
    v90 = [v6 objectForKey:v88];
    if ([v90 BOOLValue])
    {
      v91 = v51;
    }

    else
    {
      v91 = v54;
    }

    [v5 setObject:*v91 forVariant:30];
  }

  v92 = MEMORY[0x1E6988F68];
  v93 = [v6 objectForKey:*MEMORY[0x1E6988F68]];

  if (v93)
  {
    v94 = [v6 objectForKey:*v92];
    [v5 setObject:v94 forVariant:71];
  }

  v95 = MEMORY[0x1E6988DF0];
  v96 = [v6 objectForKey:*MEMORY[0x1E6988DF0]];

  if (v96)
  {
    v97 = [v6 objectForKey:*v95];
    [v5 setObject:v97 forVariant:72];
  }

  v98 = MEMORY[0x1E6988DE8];
  v99 = [v6 objectForKey:*MEMORY[0x1E6988DE8]];

  if (v99)
  {
    v100 = [v6 objectForKey:*v98];
    [v5 setObject:v100 forVariant:73];
  }

  v101 = MEMORY[0x1E6988F10];
  v102 = [v6 objectForKey:*MEMORY[0x1E6988F10]];
  v103 = [v102 BOOLValue];

  if (v103)
  {
    [v5 setObject:*v101 forVariant:32];
  }

  v104 = [v6 objectForKey:*MEMORY[0x1E6988DD0]];
  v105 = [v104 BOOLValue];

  if (v105)
  {
    [v5 setObject:*MEMORY[0x1E695E4D0] forVariant:61];
  }

  v106 = v5;

  return v5;
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