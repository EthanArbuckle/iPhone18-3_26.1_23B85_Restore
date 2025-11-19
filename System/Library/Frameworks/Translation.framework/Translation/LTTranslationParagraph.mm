@interface LTTranslationParagraph
@end

@implementation LTTranslationParagraph

void __45___LTTranslationParagraph_splitIntoSentences__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v9 = [v5 stringWithFormat:@"%zd", a3];
  v7 = [v6 range];
  [v4 addAttribute:v9 value:v6 range:{v7, v8}];
}

void __45___LTTranslationParagraph_splitIntoSentences__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45___LTTranslationParagraph_splitIntoSentences__block_invoke_3;
  v7[3] = &unk_278B6DA00;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = a4;
  [a2 enumerateKeysAndObjectsUsingBlock:v7];
}

void __45___LTTranslationParagraph_splitIntoSentences__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v26];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 range];
    [v7 range];
    if (v9 + v8 != *(a1 + 40))
    {
      __45___LTTranslationParagraph_splitIntoSentences__block_invoke_3_cold_1();
    }

    v10 = [v7 range];
    [v7 range];
    v12 = v11;
    v13 = *(a1 + 48);
    v14 = [_LTTranslationSpan alloc];
    v15 = [v5 identifier];
    v16 = [v5 shouldTranslate];
    v17 = [v5 metaInfoData];
    v18 = v12 + v13;
    v19 = v14;
    v20 = v15;
    v21 = v10;
    v22 = v16;
  }

  else
  {
    v23 = [_LTTranslationSpan alloc];
    v15 = [v5 identifier];
    v24 = [v5 shouldTranslate];
    v17 = [v5 metaInfoData];
    v21 = *(a1 + 40);
    v18 = *(a1 + 48);
    v19 = v23;
    v20 = v15;
    v22 = v24;
  }

  v25 = [(_LTTranslationSpan *)v19 initWithIdentifier:v20 range:v21 shouldTranslate:v18 metaInfoData:v22, v17];
  [*(a1 + 32) setObject:v25 forKeyedSubscript:v26];
}

@end