@interface _LTParagraphTranslationRequest
- (id)translationParagraph;
- (void)_startTranslationWithTextService:(id)a3 done:(id)a4;
- (void)_translationFailedWithError:(id)a3;
@end

@implementation _LTParagraphTranslationRequest

- (void)_startTranslationWithTextService:(id)a3 done:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (*&self->_text == 0)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [v15 localizedStringForKey:@"INVALID_REQUEST_NO_RANGES_OR_TEXT_ERROR_DESCRIPTION" value:&stru_284DBB9B8 table:0];
    v17 = [v14 lt_invalidRequestErrorWithDescription:v16];

    [(_LTParagraphTranslationRequest *)self _translationFailedWithError:v17];
    v7[2](v7);
  }

  else
  {
    v17 = self->_text;
    if (self->_ranges)
    {
      v8 = [MEMORY[0x277CCAB68] string];
      ranges = self->_ranges;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __72___LTParagraphTranslationRequest__startTranslationWithTextService_done___block_invoke;
      v22[3] = &unk_278B6D350;
      v10 = v8;
      v23 = v10;
      [(NSArray *)ranges enumerateObjectsUsingBlock:v22];
      v11 = v10;

      v17 = v11;
    }

    v12 = [(_LTTranslationRequest *)self requestContext];
    v13 = [(_LTParagraphTranslationRequest *)self translationParagraph];
    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __72___LTParagraphTranslationRequest__startTranslationWithTextService_done___block_invoke_2;
    v18[3] = &unk_278B6D378;
    objc_copyWeak(&v20, &location);
    v19 = v7;
    [v6 translate:v13 withContext:v12 completion:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

- (void)_translationFailedWithError:(id)a3
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 0, a3);
  }
}

- (id)translationParagraph
{
  v3 = self->_text;
  v4 = [MEMORY[0x277CBEB18] array];
  ranges = self->_ranges;
  if (ranges && [(NSArray *)ranges count])
  {
    v6 = [MEMORY[0x277CCAB68] string];
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v18[3] = 0;
    v7 = self->_ranges;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54___LTParagraphTranslationRequest_translationParagraph__block_invoke;
    v14[3] = &unk_278B6D3A0;
    v17 = v18;
    v15 = v4;
    v8 = v6;
    v16 = v8;
    [(NSArray *)v7 enumerateObjectsUsingBlock:v14];
    v9 = v8;

    _Block_object_dispose(v18, 8);
    v3 = v9;
  }

  v10 = [_LTTranslationParagraph alloc];
  v11 = [(_LTTranslationRequest *)self uniqueID];
  v12 = [(_LTTranslationParagraph *)v10 initWithIdentifier:v11 text:v3 spans:v4 isFinal:[(_LTTranslationRequest *)self isFinal]];

  return v12;
}

@end