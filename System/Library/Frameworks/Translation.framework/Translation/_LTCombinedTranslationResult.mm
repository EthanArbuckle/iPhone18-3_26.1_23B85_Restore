@interface _LTCombinedTranslationResult
+ (id)_translatedTextWithAttributesForResult:(id)result;
- (NSAttributedString)translatedText;
- (NSString)romanization;
- (_LTCombinedTranslationResult)initWithCoder:(id)coder;
- (_LTCombinedTranslationResult)initWithParagraphResults:(id)results localePair:(id)pair;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTCombinedTranslationResult

- (_LTCombinedTranslationResult)initWithParagraphResults:(id)results localePair:(id)pair
{
  v50 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  pairCopy = pair;
  v46.receiver = self;
  v46.super_class = _LTCombinedTranslationResult;
  v8 = [(_LTCombinedTranslationResult *)&v46 init];
  if (!v8)
  {
LABEL_19:
    v33 = 0;
    goto LABEL_31;
  }

  v9 = [resultsCopy copy];
  paragraphResults = v8->_paragraphResults;
  v8->_paragraphResults = v9;

  if (![(NSArray *)v8->_paragraphResults count])
  {
    v32 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [_LTCombinedTranslationResult initWithParagraphResults:v32 localePair:?];
    }

    goto LABEL_19;
  }

  v40 = pairCopy;
  targetLocale = [pairCopy targetLocale];
  firstObject = [(NSArray *)v8->_paragraphResults firstObject];
  route = [firstObject route];

  firstObject2 = [(NSArray *)v8->_paragraphResults firstObject];
  isFinal = [firstObject2 isFinal];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v15 = v8->_paragraphResults;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v43;
    v39 = resultsCopy;
LABEL_5:
    v19 = 0;
    while (1)
    {
      if (*v43 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v42 + 1) + 8 * v19);
      locale = [v20 locale];
      v22 = [locale isEqual:targetLocale];

      if ((v22 & 1) == 0)
      {
        v34 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [_LTCombinedTranslationResult initWithParagraphResults:v34 localePair:v20];
        }

        goto LABEL_26;
      }

      if ([v20 route] != route)
      {
        break;
      }

      if (isFinal != [v20 isFinal])
      {
        v36 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [(_LTCombinedTranslationResult *)isFinal initWithParagraphResults:v36 localePair:v20];
        }

LABEL_26:
        v33 = 0;
        resultsCopy = v39;
        pairCopy = v40;
        goto LABEL_30;
      }

      if (v17 == ++v19)
      {
        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v42 objects:v49 count:16];
        resultsCopy = v39;
        if (v17)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    v35 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [_LTCombinedTranslationResult initWithParagraphResults:v35 localePair:v20];
    }

    goto LABEL_26;
  }

LABEL_13:

  pairCopy = v40;
  v23 = [v40 copy];
  localePair = v8->_localePair;
  v8->_localePair = v23;

  v8->_route = route;
  v8->_isFinal = isFinal;
  v15 = [(NSArray *)v8->_paragraphResults _ltCompactMap:&__block_literal_global_0];
  v25 = [_LTDisambiguableResult combineResults:v15 joinedWithString:@"\n\n"];
  hasDisambiguations = [v25 hasDisambiguations];
  v27 = _LTOSLogDisambiguation();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
  if (hasDisambiguations)
  {
    if (v28)
    {
      v29 = v8->_paragraphResults;
      v30 = v27;
      v31 = [(NSArray *)v29 count];
      *buf = 134217984;
      v48 = v31;
      _os_log_impl(&dword_23AAF5000, v30, OS_LOG_TYPE_INFO, "Creating combined disambiguable result from %zu paragraphs since there are disambiguations somewhere", buf, 0xCu);
    }

    objc_storeStrong(&v8->_disambiguableResult, v25);
  }

  else if (v28)
  {
    *buf = 0;
    _os_log_impl(&dword_23AAF5000, v27, OS_LOG_TYPE_INFO, "Not creating combined disambiguable result for combined translation result since nothing in the result has disambiguations", buf, 2u);
  }

  v33 = v8;

LABEL_30:
LABEL_31:

  v37 = *MEMORY[0x277D85DE8];
  return v33;
}

- (NSAttributedString)translatedText
{
  disambiguableResult = [(_LTCombinedTranslationResult *)self disambiguableResult];
  if (disambiguableResult && (v4 = disambiguableResult, v5 = +[_LTDisambiguableResult isGenderDisambiguationEnabled], v4, v5))
  {
    v6 = objc_alloc(MEMORY[0x277CCA898]);
    disambiguableResult2 = [(_LTCombinedTranslationResult *)self disambiguableResult];
    targetText = [disambiguableResult2 targetText];
    v9 = [v6 initWithString:targetText];
  }

  else
  {
    paragraphResults = self->_paragraphResults;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46___LTCombinedTranslationResult_translatedText__block_invoke;
    v13[3] = &unk_278B6C918;
    v13[4] = self;
    v11 = [(NSArray *)paragraphResults _ltCompactMap:v13];
    v9 = [MEMORY[0x277CCA898] lt_attributedStringByJoiningComponents:v11 withString:@"\n\n"];
  }

  return v9;
}

- (NSString)romanization
{
  disambiguableResult = [(_LTCombinedTranslationResult *)self disambiguableResult];

  if (disambiguableResult)
  {
    disambiguableResult2 = [(_LTCombinedTranslationResult *)self disambiguableResult];
    romanization = [disambiguableResult2 romanization];
LABEL_5:
    v7 = romanization;
    goto LABEL_6;
  }

  disambiguableResult2 = [(NSArray *)self->_paragraphResults _ltCompactMap:&__block_literal_global_6];
  v6 = [(NSArray *)self->_paragraphResults count];
  if (v6 == [disambiguableResult2 count])
  {
    romanization = [disambiguableResult2 componentsJoinedByString:@"\n\n"];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

+ (id)_translatedTextWithAttributesForResult:(id)result
{
  v72 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  alignments = [resultCopy alignments];
  v5 = [alignments count];

  translations = [resultCopy translations];
  v7 = [translations count];

  v10 = v5 == 1 && v7 == 1 || v5 == 0;
  translations2 = [resultCopy translations];
  firstObject = [translations2 firstObject];

  sanitizedFormattedString = [firstObject sanitizedFormattedString];
  v14 = sanitizedFormattedString;
  if (sanitizedFormattedString)
  {
    v15 = sanitizedFormattedString;
  }

  else
  {
    formattedString = [firstObject formattedString];
    v17 = formattedString;
    v18 = &stru_284DBB9B8;
    if (formattedString)
    {
      v18 = formattedString;
    }

    v15 = v18;
  }

  v19 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v15];
  v55 = firstObject;
  v56 = resultCopy;
  v54 = v15;
  if (!v10)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    alignments2 = [resultCopy alignments];
    v21 = [alignments2 countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v63;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v63 != v23)
          {
            objc_enumerationMutation(alignments2);
          }

          v25 = *(*(&v62 + 1) + 8 * i);
          sourceAttributes = [v25 sourceAttributes];
          v27 = [sourceAttributes objectForKeyedSubscript:@"CTAdaptiveImageProvider"];

          if (!v27)
          {
            v28 = _LTOSLogTranslationEngine();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v32 = v28;
              targetRange = [v25 targetRange];
              [v25 targetRange];
              *buf = 134218240;
              v68 = targetRange;
              v69 = 2048;
              v70 = v34;
              _os_log_debug_impl(&dword_23AAF5000, v32, OS_LOG_TYPE_DEBUG, "Adding attributes for range (%zu, %zu)", buf, 0x16u);
            }

            sourceAttributes2 = [v25 sourceAttributes];
            targetRange2 = [v25 targetRange];
            [v19 addAttributes:sourceAttributes2 range:{targetRange2, v31}];
          }
        }

        v22 = [alignments2 countByEnumeratingWithState:&v62 objects:v71 count:16];
      }

      while (v22);
    }

    v35 = _LTOSLogTranslationEngine();
    firstObject = v55;
    resultCopy = v56;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      +[_LTCombinedTranslationResult _translatedTextWithAttributesForResult:];
    }
  }

  replacementInfos = [resultCopy replacementInfos];
  if ([replacementInfos count])
  {
    v37 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [(_LTCombinedTranslationResult *)v37 _translatedTextWithAttributesForResult:replacementInfos];
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v53 = replacementInfos;
    obj = replacementInfos;
    v38 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v59;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v59 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v58 + 1) + 8 * j);
          placeholderString = [v42 placeholderString];
          string = [v19 string];
          v45 = [string rangeOfString:placeholderString];
          v47 = v46;

          if (v45 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v48 = _LTOSLogTranslationEngine();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              [(_LTCombinedTranslationResult *)buf _translatedTextWithAttributesForResult:v48];
            }
          }

          else
          {
            sourceAttributes3 = [v42 sourceAttributes];
            [v19 addAttributes:sourceAttributes3 range:{v45, v47}];

            originalSubstring = [v42 originalSubstring];
            [v19 replaceCharactersInRange:v45 withString:{v47, originalSubstring}];
          }
        }

        v39 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v39);
    }

    firstObject = v55;
    resultCopy = v56;
    replacementInfos = v53;
    v15 = v54;
  }

  v51 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  paragraphResults = self->_paragraphResults;
  coderCopy = coder;
  [coderCopy encodeObject:paragraphResults forKey:@"paragraphResults"];
  [coderCopy encodeObject:self->_disambiguableResult forKey:@"disambiguableResult"];
  [coderCopy encodeObject:self->_localePair forKey:@"localePair"];
  [coderCopy encodeInteger:self->_route forKey:@"route"];
  [coderCopy encodeBool:self->_isFinal forKey:@"isFinal"];
  [coderCopy encodeBool:self->_endOfUtterance forKey:@"endOfUtterance"];
}

- (_LTCombinedTranslationResult)initWithCoder:(id)coder
{
  v23[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = _LTCombinedTranslationResult;
  v5 = [(_LTCombinedTranslationResult *)&v21 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"paragraphResults"];
    paragraphResults = v5->_paragraphResults;
    v5->_paragraphResults = v9;

    v11 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v13 = [v11 setWithArray:v12];

    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"disambiguableResult"];
    disambiguableResult = v5->_disambiguableResult;
    v5->_disambiguableResult = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localePair"];
    localePair = v5->_localePair;
    v5->_localePair = v16;

    v5->_route = [coderCopy decodeIntegerForKey:@"route"];
    v5->_isFinal = [coderCopy decodeBoolForKey:@"isFinal"];
    v5->_endOfUtterance = [coderCopy decodeBoolForKey:@"endOfUtterance"];
    v18 = v5;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)initWithParagraphResults:(void *)a1 localePair:(void *)a2 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 locale];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_23AAF5000, v5, v6, "Not creating _LTCombinedTranslationResult instance because a translation result is locale %{public}@ instead of expected locale %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)initWithParagraphResults:(void *)a1 localePair:(void *)a2 .cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 route];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_23AAF5000, v4, v5, "Not creating _LTCombinedTranslationResult instance because a translation result has route %zd, which is mismatched from other results with route %zd", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)initWithParagraphResults:(void *)a3 localePair:.cold.3(char a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a1 & 1;
  v5 = a2;
  v7[0] = 67109376;
  v7[1] = [a3 isFinal];
  v8 = 1024;
  v9 = v4;
  _os_log_error_impl(&dword_23AAF5000, v5, OS_LOG_TYPE_ERROR, "Not creating _LTCombinedTranslationResult instance because a translation result has isFinal %{BOOL}i, which is mismatched from other results with isFinal %{BOOL}i", v7, 0xEu);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_translatedTextWithAttributesForResult:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_23AAF5000, v0, OS_LOG_TYPE_DEBUG, "Translation with attributes added %{sensitive}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)_translatedTextWithAttributesForResult:(void *)a1 .cold.2(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 count];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_23AAF5000, v3, OS_LOG_TYPE_DEBUG, "Removing placeholder emoji for genmoji text in %zu places", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)_translatedTextWithAttributesForResult:(os_log_t)log .cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23AAF5000, log, OS_LOG_TYPE_ERROR, "Can't find placeholder emoji for putting back genmoji", buf, 2u);
}

@end