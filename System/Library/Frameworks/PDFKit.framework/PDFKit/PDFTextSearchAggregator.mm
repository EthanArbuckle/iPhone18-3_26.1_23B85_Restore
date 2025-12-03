@interface PDFTextSearchAggregator
- (PDFTextSearchAggregator)initWithSearchString:(id)string aggregator:(id)aggregator;
- (void)foundResults:(id)results forPage:(id)page;
@end

@implementation PDFTextSearchAggregator

- (PDFTextSearchAggregator)initWithSearchString:(id)string aggregator:(id)aggregator
{
  stringCopy = string;
  aggregatorCopy = aggregator;
  v12.receiver = self;
  v12.super_class = PDFTextSearchAggregator;
  v9 = [(PDFTextSearchAggregator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_searchString, string);
    objc_storeStrong(&v10->_aggregator, aggregator);
    v10->_isActive = 1;
  }

  return v10;
}

- (void)foundResults:(id)results forPage:(id)page
{
  v16 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [resultsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(resultsCopy);
        }

        v10 = [PDFTextRange textRangeFromSelection:*(*(&v11 + 1) + 8 * v9)];
        if (v10)
        {
          [(UITextSearchAggregator *)self->_aggregator foundRange:v10 forSearchString:self->_searchString inDocument:0];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [resultsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end