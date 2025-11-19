@interface AXSSDocumentTextRuleBasic
- (AXSSDocumentTextRuleBasic)init;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)issuesForWord:(id)a3 atRange:(_NSRange)a4 previousWord:(id)a5 previousWordRange:(_NSRange)a6 inText:(id)a7 ignoreRuleUntilIndex:(int64_t *)a8;
- (unint64_t)hash;
- (void)setAvoidWords:(id)a3;
@end

@implementation AXSSDocumentTextRuleBasic

- (void)setAvoidWords:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v17 = self;
  v6 = [(AXSSDocumentTextRuleBasic *)self avoidPhrases];
  if (v6)
  {
    v7 = [(AXSSDocumentTextRuleBasic *)self avoidPhrases];
    v8 = [v7 mutableCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v20 = 0;
        v21 = &v20;
        v22 = 0x2020000000;
        v23 = 0;
        v13 = [v12 length];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __43__AXSSDocumentTextRuleBasic_setAvoidWords___block_invoke;
        v19[3] = &unk_278BF0468;
        v19[4] = &v20;
        [v12 enumerateSubstringsInRange:0 options:v13 usingBlock:{3, v19}];
        if (v21[6] >= 2)
        {
          v14 = v8;
        }

        else
        {
          v14 = v5;
        }

        [v14 addObject:v12];
        _Block_object_dispose(&v20, 8);
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  avoidWords = v17->_avoidWords;
  v17->_avoidWords = v5;

  [(AXSSDocumentTextRuleBasic *)v17 setAvoidPhrases:v8];
  v16 = *MEMORY[0x277D85DE8];
}

- (id)issuesForWord:(id)a3 atRange:(_NSRange)a4 previousWord:(id)a5 previousWordRange:(_NSRange)a6 inText:(id)a7 ignoreRuleUntilIndex:(int64_t *)a8
{
  length = a4.length;
  location = a4.location;
  v68 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v47 = a5;
  v53 = a7;
  v48 = v11;
  if ([v11 length])
  {
    v12 = [v11 string];
    v13 = [(AXSSDocumentTextRuleBasic *)self caseSensitive];
    v14 = [(AXSSDocumentTextRuleBasic *)self avoidWords];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __110__AXSSDocumentTextRuleBasic_issuesForWord_atRange_previousWord_previousWordRange_inText_ignoreRuleUntilIndex___block_invoke;
    v63[3] = &unk_278BF0490;
    v46 = v12;
    v64 = v46;
    v65 = !v13;
    v50 = v65;
    v15 = [v14 indexOfObjectPassingTest:v63];

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
    }

    else
    {
      v16 = objc_opt_new();
      [v16 setOffendingText:v48];
      [v16 setRange:{location, length}];
      v18 = objc_opt_class();
      v19 = [(AXSSDocumentTextRuleBasic *)self suggestedWords];
      v20 = [v48 string];
      v21 = [v18 matchReplacementArrayCapitalization:v19 withSource:v20];
      [v16 setSuggestions:v21];

      v22 = MEMORY[0x277CCACA8];
      v23 = [v48 string];
      v24 = [v22 stringWithFormat:@"The term '%@' may not be the best choice. Consider one of the following terms.", v23];
      [v16 setNote:v24];

      [v16 setKind:4];
    }

    v25 = [(AXSSDocumentTextRuleBasic *)self avoidPhrases];
    v26 = [v25 count] == 0;

    if (!v26)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = [(AXSSDocumentTextRuleBasic *)self avoidPhrases];
      v27 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v27)
      {
        v52 = *v60;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v60 != v52)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v59 + 1) + 8 * i);
            v30 = [v29 length];
            if (v30 + location < [v53 length])
            {
              v31 = [v53 string];
              v32 = [v31 substringWithRange:{location, v30}];

              if (![v29 compare:v32 options:1])
              {
                v55 = 0;
                v56 = &v55;
                v57 = 0x2020000000;
                v58 = 0;
                v33 = [v53 string];
                v34 = [v53 length];
                v54[0] = MEMORY[0x277D85DD0];
                v54[1] = 3221225472;
                v54[2] = __110__AXSSDocumentTextRuleBasic_issuesForWord_atRange_previousWord_previousWordRange_inText_ignoreRuleUntilIndex___block_invoke_2;
                v54[3] = &unk_278BF04B8;
                v54[5] = location;
                v54[6] = v30;
                v54[4] = &v55;
                [v33 enumerateSubstringsInRange:location options:v34 - location usingBlock:{3, v54}];

                if (*(v56 + 24) == 1)
                {
                  v35 = [v53 string];
                  v36 = [v35 substringWithRange:{location, v30}];

                  if ([v29 compare:v36 options:v50])
                  {
                    v37 = v16;
                  }

                  else
                  {
                    v37 = objc_opt_new();

                    v38 = [v53 attributedSubstringFromRange:{location, v30}];
                    [v37 setOffendingText:v38];

                    [v37 setRange:{location, v30}];
                    v39 = objc_opt_class();
                    v40 = [(AXSSDocumentTextRuleBasic *)self suggestedWords];
                    v41 = [v48 string];
                    v42 = [v39 matchReplacementArrayCapitalization:v40 withSource:v41];
                    [v37 setSuggestions:v42];

                    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"The term '%@' may not be the best choice. Consider one of the following terms.", v29];
                    [v37 setNote:v43];

                    [v37 setKind:4];
                  }

                  v16 = v37;
                }

                _Block_object_dispose(&v55, 8);
              }
            }
          }

          v27 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
        }

        while (v27);
      }
    }

    [v16 setSeverity:{-[AXSSDocumentTextRule severity](self, "severity")}];
    if (v16)
    {
      v66 = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
    }

    else
    {
      v17 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  v44 = *MEMORY[0x277D85DE8];

  return v17;
}

void *__110__AXSSDocumentTextRuleBasic_issuesForWord_atRange_previousWord_previousWordRange_inText_ignoreRuleUntilIndex___block_invoke_2(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = result[6] + result[5];
  if (a3 + a4 == v7)
  {
    *(*(result[4] + 8) + 24) = 1;
    *a7 = 1;
    v7 = result[6] + result[5];
  }

  if (v7 < a3 + a4)
  {
    *a7 = 1;
  }

  return result;
}

- (AXSSDocumentTextRuleBasic)init
{
  v5.receiver = self;
  v5.super_class = AXSSDocumentTextRuleBasic;
  v2 = [(AXSSDocumentTextRuleBasic *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXSSDocumentTextRule *)v2 setGranularity:1];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(AXSSDocumentTextRuleBasic *)self avoidWords];
  v4 = [v3 hash];
  v5 = [(AXSSDocumentTextRuleBasic *)self avoidPhrases];
  v6 = [v5 hash] ^ v4;
  v7 = [(AXSSDocumentTextRuleBasic *)self suggestedWords];
  v8 = [v7 hash];
  v9 = [(AXSSDocumentTextRuleBasic *)self note];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(AXSSDocumentTextRuleBasic *)self caseSensitive];

  return v10 ^ v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = AXSSDocumentTextRuleBasic;
  v4 = [(AXSSDocumentTextRule *)&v10 copyWithZone:a3];
  v5 = [(AXSSDocumentTextRuleBasic *)self avoidWords];
  [v4 setAvoidWords:v5];

  v6 = [(AXSSDocumentTextRuleBasic *)self avoidPhrases];
  [v4 setAvoidPhrases:v6];

  v7 = [(AXSSDocumentTextRuleBasic *)self suggestedWords];
  [v4 setSuggestedWords:v7];

  v8 = [(AXSSDocumentTextRuleBasic *)self note];
  [v4 setNote:v8];

  [v4 setCaseSensitive:{-[AXSSDocumentTextRuleBasic caseSensitive](self, "caseSensitive")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = v4;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v19.receiver = v5, v19.super_class = AXSSDocumentTextRuleBasic, [(AXSSDocumentTextRule *)&v19 isEqual:v6]) && (v7 = [(AXSSDocumentTextRuleBasic *)v5 caseSensitive], v7 == [(AXSSDocumentTextRuleBasic *)v6 caseSensitive]))
    {
      v10 = [(AXSSDocumentTextRuleBasic *)v5 avoidWords];
      v11 = [(AXSSDocumentTextRuleBasic *)v6 avoidWords];
      if (v10 | v11 && ![v10 isEqual:v11])
      {
        v8 = 0;
      }

      else
      {
        v12 = [(AXSSDocumentTextRuleBasic *)v5 avoidPhrases];
        v13 = [(AXSSDocumentTextRuleBasic *)v6 avoidPhrases];
        if (v12 | v13 && ![v12 isEqual:v13])
        {
          v8 = 0;
        }

        else
        {
          v14 = [(AXSSDocumentTextRuleBasic *)v5 suggestedWords];
          v15 = [(AXSSDocumentTextRuleBasic *)v6 suggestedWords];
          if (v14 | v15 && ![v14 isEqual:v15])
          {
            v8 = 0;
          }

          else
          {
            v18 = v12;
            v16 = [(AXSSDocumentTextRuleBasic *)v5 note];
            v17 = [(AXSSDocumentTextRuleBasic *)v6 note];
            if (v16 | v17)
            {
              v8 = [v16 isEqual:v17];
            }

            else
            {
              v8 = 1;
            }

            v12 = v18;
          }
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end