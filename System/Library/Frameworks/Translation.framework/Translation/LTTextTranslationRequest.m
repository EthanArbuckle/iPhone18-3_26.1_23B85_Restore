@interface LTTextTranslationRequest
@end

@implementation LTTextTranslationRequest

void __88___LTTextTranslationRequest__replaceAdaptiveImageGlyphsIfNeededForText_requestUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 string];
  [v2 addObject:v3];
}

void __88___LTTextTranslationRequest__replaceAdaptiveImageGlyphsIfNeededForText_requestUniqueID___block_invoke_231(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = *(a1 + 32);
    ++*(*(*(a1 + 64) + 8) + 24);
    v8 = [v7 objectAtIndexedSubscript:?];
    v9 = *(*(*(a1 + 64) + 8) + 24);
    if (v9 >= [*(a1 + 32) count])
    {
      v10 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __88___LTTextTranslationRequest__replaceAdaptiveImageGlyphsIfNeededForText_requestUniqueID___block_invoke_231_cold_1();
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    v11 = [v8 length];
    v12 = [_LTGenmojiReplacementInfo alloc];
    v13 = *(a1 + 40);
    v14 = [*(a1 + 48) attributedSubstringFromRange:{a3, a4}];
    v15 = [v14 string];
    v16 = [(_LTGenmojiReplacementInfo *)v12 initWithOriginalRange:a3 replacementRange:a4 requestID:a3 originalSubstring:v11 placeholderString:v13, v15, v8];

    v17 = [*(a1 + 48) attributesAtIndex:a3 effectiveRange:0];
    [(_LTGenmojiReplacementInfo *)v16 setSourceAttributes:v17];

    [*(a1 + 48) replaceCharactersInRange:a3 withString:{a4, v8}];
    [*(*(a1 + 56) + 176) addReplacementInfo:v16];
  }
}

void __54___LTTextTranslationRequest__paragraphRequestForText___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", *(*(*(a1 + 64) + 8) + 24)];
  v9 = [*(a1 + 32) string];
  v10 = [v9 substringWithRange:{a3, a4}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [*(a1 + 40) ignoringAttributes];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    LOBYTE(v15) = 1;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [v7 objectForKeyedSubscript:*(*(&v22 + 1) + 8 * i)];

        v15 = (v17 == 0) & v15;
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  else
  {
    v15 = 1;
  }

  v18 = [[_LTTranslationRange alloc] initWithIdentifier:v8 text:v10 shouldTranslate:v15];
  [*(a1 + 48) addObject:v18];
  v19 = *(a1 + 40);
  v20 = [*(a1 + 56) uniqueID];
  [v19 _saveAttributes:v7 forRequestUniqueID:v20 alignmentIdentifier:v8];

  ++*(*(*(a1 + 64) + 8) + 24);
  v21 = *MEMORY[0x277D85DE8];
}

void __63___LTTextTranslationRequest__startTranslationWithService_done___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_23AAF5000, v8, OS_LOG_TYPE_INFO, "Received paragraph translation result", v9, 2u);
    }

    [WeakRetained _handleParagraphResponse:v5 error:v6];
  }
}

id __59___LTTextTranslationRequest__constructFinalParagraphResult__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _addAlignmentAttributesToResult:v5 requestIdentifier:v4];

  return v5;
}

void __88___LTTextTranslationRequest__replaceAdaptiveImageGlyphsIfNeededForText_requestUniqueID___block_invoke_231_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end