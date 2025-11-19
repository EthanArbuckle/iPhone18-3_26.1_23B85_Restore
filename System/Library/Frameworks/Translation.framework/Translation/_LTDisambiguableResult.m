@interface _LTDisambiguableResult
+ (BOOL)isGenderDisambiguationEnabled;
+ (id)combineResults:(id)a3 joinedWithString:(id)a4;
+ (id)combinedDisambiguableResultFromTranslationResults:(id)a3 joinedWithString:(id)a4;
- (BOOL)hasDisambiguationsOfType:(unint64_t)a3;
- (NSArray)observers;
- (NSString)description;
- (NSString)romanization;
- (NSString)sourceText;
- (NSString)targetText;
- (_LTDisambiguableResult)initWithCoder:(id)a3;
- (_LTDisambiguableResult)initWithDictionary:(id)a3;
- (_LTDisambiguableResult)initWithSentences:(id)a3;
- (_LTDisambiguableResult)initWithSentences:(id)a3 joinedWithString:(id)a4;
- (_LTDisambiguableResultDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)excludedTypesForDisambiguableSentence:(id)a3;
- (id)generateAttributedStringForLocation:(unint64_t)a3 withGlobalAttributes:(id)a4 attributeProvider:(id)a5;
- (id)sentenceWithUUID:(id)a3;
- (void)_commonInit;
- (void)_insertPrefix:(id)a3;
- (void)disambiguableSentence:(id)a3 didSelectNode:(id)a4 atIndex:(unint64_t)a5 withSelection:(id)a6;
@end

@implementation _LTDisambiguableResult

- (_LTDisambiguableResult)initWithDictionary:(id)a3
{
  v128 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 objectForKeyedSubscript:@"alternative_descriptions"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v6 objectForKeyedSubscript:@"engine_input"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = [v6 objectForKeyedSubscript:@"n_best_translated_phrases"];
      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {

        v12 = 0;
        goto LABEL_128;
      }

      v106 = [MEMORY[0x277CBEB18] array];
      if (![v9 count])
      {
        goto LABEL_107;
      }

      v10 = 0;
      v11 = 0x277CBE000uLL;
LABEL_14:
      v12 = [v9 objectAtIndexedSubscript:v10];
      v105 = v12;
      if (v12)
      {
        v13 = *(v11 + 2752);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = 0;
          goto LABEL_127;
        }

        v96 = v10;
        v14 = [(_LTDisambiguableResult *)v12 objectForKeyedSubscript:@"translated_tokens"];
        if (!v14)
        {
          goto LABEL_125;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_125;
        }

        v15 = [(_LTDisambiguableResult *)v12 objectForKeyedSubscript:@"meta_info_data"];
        if (!v15)
        {
          goto LABEL_124;
        }

        v16 = *(v11 + 2752);
        v109 = v15;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v15 = v109;
        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_124;
        }

        v18 = [v109 objectForKeyedSubscript:@"romanization"];
        if (v18)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }

        v98 = v19;

        v20 = [v109 objectForKeyedSubscript:@"selection_spans"];
        if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
LABEL_123:

          v15 = v109;
LABEL_124:

LABEL_125:
          v12 = 0;
LABEL_126:

          goto LABEL_127;
        }

        v99 = [MEMORY[0x277CBEB18] array];
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        obj = v20;
        v102 = [obj countByEnumeratingWithState:&v120 objects:v127 count:16];
        if (!v102)
        {
          goto LABEL_106;
        }

        v103 = *v121;
        v107 = v14;
        while (1)
        {
          v21 = 0;
          do
          {
            if (*v121 != v103)
            {
              objc_enumerationMutation(obj);
            }

            v108 = v21;
            v22 = *(*(&v120 + 1) + 8 * v21);
            if (!v22)
            {
              goto LABEL_122;
            }

            v23 = *(v11 + 2752);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_122;
            }

            v119 = 0;
            v110 = v22;
            v24 = [v22 objectForKeyedSubscript:@"source"];
            v25 = rangeFromDictionary(v24, &v119);
            v27 = v26;

            if (v119)
            {
              goto LABEL_111;
            }

            v28 = [v8 lt_codeUnitsRangeFromCodePointsRange:{v25, v27}];
            v100 = v29;
            v101 = v28;
            if (v28 == 0x7FFFFFFFFFFFFFFFLL)
            {
LABEL_38:
              v14 = v107;
              v36 = v110;
              goto LABEL_39;
            }

            v30 = [v110 objectForKeyedSubscript:@"projection"];
            v31 = rangeFromDictionary(v30, &v119);
            v33 = v32;

            if (v119)
            {
LABEL_111:
              v14 = v107;
              v22 = v110;
LABEL_122:

              v20 = obj;
              goto LABEL_123;
            }

            v34 = [v107 lt_codeUnitsRangeFromCodePointsRange:{v31, v33}];
            if (v34 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_38;
            }

            v90 = v35;
            v91 = v34;
            v37 = [MEMORY[0x277CBEB18] array];
            v22 = v110;
            v38 = [v110 objectForKeyedSubscript:@"alternatives"];
            if (!v38 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
LABEL_121:

              v14 = v107;
              goto LABEL_122;
            }

            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v93 = v38;
            v39 = v38;
            v40 = [v39 countByEnumeratingWithState:&v115 objects:v126 count:16];
            if (!v40)
            {
              goto LABEL_104;
            }

            v41 = *v116;
            v94 = v37;
            v95 = v9;
            v92 = v39;
            v88 = *v116;
            do
            {
              v87 = v40;
              v42 = 0;
              do
              {
                if (*v116 != v41)
                {
                  v43 = v42;
                  objc_enumerationMutation(v39);
                  v42 = v43;
                }

                v89 = v42;
                v97 = *(*(&v115 + 1) + 8 * v42);
                if (!v97)
                {
                  goto LABEL_120;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_120;
                }

                v113 = 0u;
                v114 = 0u;
                v111 = 0u;
                v112 = 0u;
                v44 = [&unk_284DC9858 countByEnumeratingWithState:&v111 objects:v125 count:16];
                if (v44)
                {
                  v45 = v44;
                  v46 = *v112;
LABEL_52:
                  v47 = 0;
                  while (1)
                  {
                    if (*v112 != v46)
                    {
                      objc_enumerationMutation(&unk_284DC9858);
                    }

                    v48 = *(*(&v111 + 1) + 8 * v47);
                    if (!v48)
                    {
                      goto LABEL_119;
                    }

                    objc_opt_class();
                    v49 = objc_opt_isKindOfClass();

                    v22 = v110;
                    if ((v49 & 1) == 0)
                    {
                      goto LABEL_120;
                    }

                    if (v45 == ++v47)
                    {
                      v45 = [&unk_284DC9858 countByEnumeratingWithState:&v111 objects:v125 count:16];
                      if (v45)
                      {
                        goto LABEL_52;
                      }

                      break;
                    }
                  }
                }

                v50 = [v97 objectForKeyedSubscript:@"alternative_description_index"];
                if (v50)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v51 = v50;
                  }

                  else
                  {
                    v51 = 0;
                  }
                }

                else
                {
                  v51 = 0;
                }

                v48 = v51;

                v52 = [v97 objectForKeyedSubscript:@"translation_phrase_index"];
                if (v52)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v53 = v52;
                  }

                  else
                  {
                    v53 = 0;
                  }
                }

                else
                {
                  v53 = 0;
                }

                v54 = v53;

                v55 = [v97 objectForKeyedSubscript:@"selection_span_index"];
                if (v55)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v56 = v55;
                  }

                  else
                  {
                    v56 = 0;
                  }
                }

                else
                {
                  v56 = 0;
                }

                v57 = v56;

                if (!v48 || !v54 || !v57)
                {
                  goto LABEL_118;
                }

                v58 = [v48 unsignedIntegerValue];
                v84 = [v54 unsignedIntegerValue];
                v83 = [v57 unsignedIntegerValue];
                v59 = [v7 objectAtIndexedSubscript:v58];
                if (!v59)
                {
                  v64 = 0;
LABEL_117:

LABEL_118:
LABEL_119:

                  v22 = v110;
LABEL_120:

                  v37 = v94;
                  v9 = v95;
                  v38 = v93;
                  goto LABEL_121;
                }

                v85 = v57;
                v86 = v54;
                objc_opt_class();
                v9 = v95;
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v64 = v59;
LABEL_116:
                  v57 = v85;
                  v54 = v86;
                  goto LABEL_117;
                }

                v60 = genderPayloadValueForDescription(v59, @"gender");
                v61 = genderPayloadValueForDescription(v59, @"default_gender");
                v81 = v59;
                v82 = v60;
                if (v60 && v61)
                {
                  v62 = v61;
                  v63 = +[_LTUnvalidatedEdgeInfo genderEdgeInfoWithTargetPhraseIndex:targetLinkIndex:gender:defaultGender:](_LTUnvalidatedEdgeInfo, "genderEdgeInfoWithTargetPhraseIndex:targetLinkIndex:gender:defaultGender:", v84, v83, [v60 unsignedIntegerValue], objc_msgSend(v61, "unsignedIntegerValue"));
                  v37 = v94;
                  [v94 addObject:v63];
                  goto LABEL_100;
                }

                v80 = v61;
                v64 = v59;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v65 = v64;
                }

                else
                {
                  v65 = 0;
                }

                v66 = v65;
                if (v66)
                {
                  v79 = v66;
                  v67 = [v66 objectForKeyedSubscript:@"type"];
                  v37 = v94;
                  if (!v67)
                  {
                    v69 = 0;
                    v78 = 0;
                    goto LABEL_94;
                  }

                  v68 = v67;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v78 = v68;
                    if ([v68 isEqualToString:@"meaning"])
                    {
                      v69 = [v79 objectForKeyedSubscript:@"payload"];
                      if (v69)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v63 = [v69 objectForKeyedSubscript:@"definition"];
                          goto LABEL_96;
                        }
                      }

LABEL_94:
                      v63 = 0;
LABEL_96:

                      v37 = v94;
                    }

                    else
                    {
                      v63 = 0;
                    }

                    v66 = v79;
                    goto LABEL_98;
                  }

                  v69 = v68;
                  v63 = 0;
                  v78 = 0;
                  goto LABEL_96;
                }

                v63 = 0;
                v37 = v94;
LABEL_98:

                if (!v63)
                {

                  goto LABEL_116;
                }

                v70 = [_LTUnvalidatedEdgeInfo meaningEdgeInfoWithTargetPhraseIndex:v84 targetLinkIndex:v83 meaningDescription:v63];
                [v37 addObject:v70];

                v62 = v80;
LABEL_100:

                v41 = v88;
                v42 = v89 + 1;
                v22 = v110;
                v39 = v92;
              }

              while (v89 + 1 != v87);
              v40 = [v92 countByEnumeratingWithState:&v115 objects:v126 count:16];
              v41 = v88;
            }

            while (v40);
LABEL_104:

            v71 = [[_LTDisambiguationLinkConfiguration alloc] initWithSourceRange:v101 targetRange:v100 unvalidatedAdjacencyList:v91, v90, v37];
            [v99 addObject:v71];

            v36 = v110;
            v14 = v107;
LABEL_39:

            v21 = v108 + 1;
            v11 = 0x277CBE000;
          }

          while (v108 + 1 != v102);
          v72 = [obj countByEnumeratingWithState:&v120 objects:v127 count:16];
          v102 = v72;
          if (!v72)
          {
LABEL_106:

            v73 = [[_LTDisambiguationNode alloc] initWithText:v14 links:v99 romanization:v98];
            [v106 addObject:v73];

            v10 = v96 + 1;
            if (v96 + 1 >= [v9 count])
            {
LABEL_107:
              v74 = [[_LTDisambiguableSentence alloc] initWithSourceText:v8 targetPhrases:v106 selectedPhraseIndex:0];
              v75 = [_LTDisambiguableResult alloc];
              v105 = v74;
              v124 = v74;
              v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v124 count:1];
              v12 = [(_LTDisambiguableResult *)v75 initWithSentences:v14];
              goto LABEL_126;
            }

            goto LABEL_14;
          }
        }
      }

LABEL_127:

LABEL_128:
    }

    else
    {

      v12 = 0;
    }
  }

  else
  {

    v12 = 0;
  }

  v76 = *MEMORY[0x277D85DE8];
  return v12;
}

- (_LTDisambiguableResult)initWithSentences:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _LTDisambiguableResult;
  v5 = [(_LTDisambiguableResult *)&v12 init];
  if (!v5)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  if (![v4 count])
  {
    v9 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_23AAF5000, v9, OS_LOG_TYPE_INFO, "Not creating disambiguable result because there's no sentences to create it with", v11, 2u);
    }

    goto LABEL_6;
  }

  v6 = [v4 copy];
  sentences = v5->_sentences;
  v5->_sentences = v6;

  [(_LTDisambiguableResult *)v5 _commonInit];
  v8 = v5;
LABEL_7:

  return v8;
}

- (_LTDisambiguableResult)initWithSentences:(id)a3 joinedWithString:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CBEB18];
  v8 = a3;
  v9 = [[v7 alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __61___LTDisambiguableResult_initWithSentences_joinedWithString___block_invoke;
  v17 = &unk_278B6C960;
  v18 = v6;
  v19 = v9;
  v10 = v9;
  v11 = v6;
  [v8 enumerateObjectsUsingBlock:&v14];

  v12 = [(_LTDisambiguableResult *)self initWithSentences:v10, v14, v15, v16, v17];
  return v12;
}

+ (id)combineResults:(id)a3 joinedWithString:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __58___LTDisambiguableResult_combineResults_joinedWithString___block_invoke;
  v22 = &unk_278B6C988;
  v23 = v7;
  v9 = v8;
  v24 = v9;
  v10 = v7;
  [v6 enumerateObjectsUsingBlock:&v19];
  v11 = [a1 alloc];
  v12 = [v11 initWithSentences:{v9, v19, v20, v21, v22}];
  v13 = _LTOSLogDisambiguation();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v16 = v13;
    v17 = [v6 count];
    v18 = [v9 count];
    *buf = 134218498;
    v26 = v17;
    v27 = 2048;
    v28 = v18;
    v29 = 2114;
    v30 = v12;
    _os_log_debug_impl(&dword_23AAF5000, v16, OS_LOG_TYPE_DEBUG, "Combined %zu disambiguationResults with total of %zu sentences into combined disambiguationResult: %{public}@", buf, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)combinedDisambiguableResultFromTranslationResults:(id)a3 joinedWithString:(id)a4
{
  v4 = a3;
  v5 = [v4 _ltCompactMap:&__block_literal_global_1];
  v6 = [v5 count];
  if (v6 == [v4 count])
  {
    v7 = [_LTDisambiguableResult combineResults:v5 joinedWithString:@" "];
    v8 = [v7 hasDisambiguations];
    v9 = _LTOSLogDisambiguation();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(_LTDisambiguableResult *)v7 combinedDisambiguableResultFromTranslationResults:v10 joinedWithString:v4];
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_23AAF5000, v10, OS_LOG_TYPE_INFO, "Combined paragraph disambiguableResult has no disambiguations, but returning it anyway since it may be later combined with other disambiguable results", v13, 2u);
    }
  }

  else
  {
    v11 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(_LTDisambiguableResult *)v11 combinedDisambiguableResultFromTranslationResults:v5 joinedWithString:v4];
    }

    v7 = 0;
  }

  return v7;
}

- (id)sentenceWithUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    sentences = self->_sentences;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43___LTDisambiguableResult_sentenceWithUUID___block_invoke;
    v9[3] = &unk_278B6C9B0;
    v10 = v4;
    v7 = [(NSArray *)sentences lt_firstObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)targetText
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_sentences;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) targetText];
        [v3 appendString:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSString)sourceText
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_sentences;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) sourceText];
        [v3 appendString:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSString)romanization
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->_sentences _ltCompactMap:&__block_literal_global_9];
  v4 = [(NSArray *)self->_sentences count];
  if (v4 == [v3 count])
  {
    v5 = [v3 componentsJoinedByString:&stru_284DBB9B8];
  }

  else
  {
    v6 = _LTOSLogRomanization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = [v3 count];
      v9 = [(NSArray *)self->_sentences count];
      v12 = 134218240;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&dword_23AAF5000, v7, OS_LOG_TYPE_INFO, "Not returning romanization for disambiguable result since only %zu out of %zu sentences had romanization", &v12, 0x16u);
    }

    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)generateAttributedStringForLocation:(unint64_t)a3 withGlobalAttributes:(id)a4 attributeProvider:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v21 = WeakRetained;
  if (objc_opt_respondsToSelector())
  {
    v11 = [WeakRetained excludedTypesForResult:{self, WeakRetained}];
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(_LTDisambiguableResult *)self sentences];
  v13 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [*(*(&v23 + 1) + 8 * i) _generateAttributedStringForLocation:a3 result:self excludedTypes:v11 globalAttributes:v8 attributeProvider:{v9, v21}];
        [v12 appendAttributedString:v17];
      }

      v14 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = [v12 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)hasDisambiguationsOfType:(unint64_t)a3
{
  sentences = self->_sentences;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51___LTDisambiguableResult_hasDisambiguationsOfType___block_invoke;
  v5[3] = &__block_descriptor_40_e34_B16__0___LTDisambiguableSentence_8l;
  v5[4] = a3;
  return [(NSArray *)sentences lt_hasObjectPassingTest:v5];
}

+ (BOOL)isGenderDisambiguationEnabled
{
  if (isGenderDisambiguationEnabled_onceToken != -1)
  {
    +[_LTDisambiguableResult isGenderDisambiguationEnabled];
  }

  return isGenderDisambiguationEnabled_isGenderDisambiguationEnabled;
}

- (NSArray)observers
{
  v2 = [(NSHashTable *)self->_observers allObjects];
  v3 = [v2 copy];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSArray *)self->_sentences count];
  [(_LTDisambiguableResult *)self hasDisambiguations];
  v7 = NSStringFromBOOL();
  v8 = [v3 stringWithFormat:@"<%@: %p number of sentences: %zu; hasDisambiguations: %@>", v5, self, v6, v7];;

  return v8;
}

- (void)_insertPrefix:(id)a3
{
  sentences = self->_sentences;
  v4 = a3;
  v5 = [(NSArray *)sentences firstObject];
  [v5 _insertPrefix:v4];
}

- (void)disambiguableSentence:(id)a3 didSelectNode:(id)a4 atIndex:(unint64_t)a5 withSelection:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 disambiguableResult:self didChangeResultForSentence:v8 withSelection:v9];
  }

  v19 = v8;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [(NSHashTable *)self->_observers allObjects];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 disambiguableResultDidUpdate:self];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)excludedTypesForDisambiguableSentence:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained excludedTypesForResult:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_LTDisambiguableResult)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _LTDisambiguableResult;
  v5 = [(_LTDisambiguableResult *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"sentences"];
    sentences = v5->_sentences;
    v5->_sentences = v9;

    [(_LTDisambiguableResult *)v5 _commonInit];
    v11 = v5;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(MEMORY[0x277CBEA60] "allocWithZone:{"initWithArray:copyItems:", self->_sentences, 1}")];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithSentences:", v4}];

  return v5;
}

- (void)_commonInit
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  observers = self->_observers;
  self->_observers = v3;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_sentences;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setDelegate:{self, v11}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (_LTDisambiguableResultDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)combinedDisambiguableResultFromTranslationResults:(void *)a3 joinedWithString:.cold.1(void *a1, void *a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a1;
  [a2 count];
  [a3 count];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_23AAF5000, v5, OS_LOG_TYPE_ERROR, "Unable to create combined paragraph disambiguableResult from array of translationResults because only %zu out of %zu translationResults had disambiguableResults set", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)combinedDisambiguableResultFromTranslationResults:(void *)a3 joinedWithString:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a2;
  [a3 count];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_23AAF5000, v4, OS_LOG_TYPE_DEBUG, "Created combined disambiguation result: %{public}@; from %zu individual translation results", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end