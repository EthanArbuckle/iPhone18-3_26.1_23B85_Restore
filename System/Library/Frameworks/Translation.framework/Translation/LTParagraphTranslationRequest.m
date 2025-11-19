@interface LTParagraphTranslationRequest
@end

@implementation LTParagraphTranslationRequest

void __72___LTParagraphTranslationRequest__startTranslationWithTextService_done___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 text];
  v4 = [v3 length];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v7 text];
    [v5 appendString:v6];
  }
}

void __72___LTParagraphTranslationRequest__startTranslationWithTextService_done___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 16);
    if (v8)
    {
      (*(v8 + 16))(v8, v9, v5);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __54___LTParagraphTranslationRequest_translationParagraph__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 text];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 text];
    v7 = [v6 length];

    v8 = *(*(*(a1 + 48) + 8) + 24);
    v9 = [_LTTranslationSpan alloc];
    v10 = [v3 identifier];
    v11 = [(_LTTranslationSpan *)v9 initWithIdentifier:v10 range:v8, v7];

    -[_LTTranslationSpan setShouldTranslate:](v11, "setShouldTranslate:", [v3 shouldTranslate]);
    v12 = [v3 metaInfo];
    if (v12)
    {
      v13 = v12;
      v14 = MEMORY[0x277CCAAA0];
      v15 = [v3 metaInfo];
      LODWORD(v14) = [v14 isValidJSONObject:v15];

      if (v14)
      {
        v16 = MEMORY[0x277CCAAA0];
        v17 = [v3 metaInfo];
        v22 = 0;
        v18 = [v16 dataWithJSONObject:v17 options:0 error:&v22];
        v19 = v22;

        if (!v19)
        {
          [(_LTTranslationSpan *)v11 setMetaInfoData:v18];
        }
      }
    }

    [*(a1 + 32) addObject:v11];
    v20 = *(a1 + 40);
    v21 = [v3 text];
    [v20 appendString:v21];

    *(*(*(a1 + 48) + 8) + 24) += v7;
  }
}

@end