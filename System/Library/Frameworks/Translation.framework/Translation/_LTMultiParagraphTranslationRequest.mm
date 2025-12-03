@interface _LTMultiParagraphTranslationRequest
- (_LTMultiParagraphTranslationRequest)initWithText:(id)text localePair:(id)pair completionHandler:(id)handler;
- (void)_cleanUp;
- (void)_generateParagraphRequests;
@end

@implementation _LTMultiParagraphTranslationRequest

- (_LTMultiParagraphTranslationRequest)initWithText:(id)text localePair:(id)pair completionHandler:(id)handler
{
  textCopy = text;
  pairCopy = pair;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = _LTMultiParagraphTranslationRequest;
  v11 = [(_LTMultiParagraphTranslationRequest *)&v22 init];
  if (v11)
  {
    v12 = [textCopy copy];
    text = v11->_text;
    v11->_text = v12;

    objc_storeStrong(&v11->_localePair, pair);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    completedResultMap = v11->_completedResultMap;
    v11->_completedResultMap = dictionary;

    v16 = _Block_copy(handlerCopy);
    completionHandler = v11->_completionHandler;
    v11->_completionHandler = v16;

    v18 = dispatch_queue_create("com.apple.translation.MultiParagraphRequest", 0);
    queue = v11->_queue;
    v11->_queue = v18;

    [(_LTMultiParagraphTranslationRequest *)v11 _generateParagraphRequests];
    v20 = v11;
  }

  return v11;
}

- (void)_generateParagraphRequests
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:self->_text];
  paragraphs = [v3 paragraphs];
  if (![paragraphs count])
  {
    v21[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];

    paragraphs = v5;
  }

  v6 = dispatch_group_create();
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(paragraphs, "count")}];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65___LTMultiParagraphTranslationRequest__generateParagraphRequests__block_invoke;
  v16[3] = &unk_278B6D328;
  objc_copyWeak(&v19, &location);
  v8 = v6;
  v17 = v8;
  v9 = v7;
  v18 = v9;
  [paragraphs enumerateObjectsUsingBlock:v16];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65___LTMultiParagraphTranslationRequest__generateParagraphRequests__block_invoke_9;
  block[3] = &unk_278B6CD30;
  objc_copyWeak(&v15, &location);
  dispatch_group_notify(v8, queue, block);
  v11 = [v9 copy];
  paragraphRequests = self->_paragraphRequests;
  self->_paragraphRequests = v11;

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUp
{
  dispatch_assert_queue_V2(self->_queue);
  completedResultMap = self->_completedResultMap;

  [(NSMutableDictionary *)completedResultMap removeAllObjects];
}

@end