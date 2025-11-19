@interface PDFTextSearchAggregator
- (PDFTextSearchAggregator)initWithSearchString:(id)a3 aggregator:(id)a4;
- (void)foundResults:(id)a3 forPage:(id)a4;
@end

@implementation PDFTextSearchAggregator

- (PDFTextSearchAggregator)initWithSearchString:(id)a3 aggregator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PDFTextSearchAggregator;
  v9 = [(PDFTextSearchAggregator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_searchString, a3);
    objc_storeStrong(&v10->_aggregator, a4);
    v10->_isActive = 1;
  }

  return v10;
}

- (void)foundResults:(id)a3 forPage:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        v10 = [PDFTextRange textRangeFromSelection:*(*(&v11 + 1) + 8 * v9)];
        if (v10)
        {
          [(UITextSearchAggregator *)self->_aggregator foundRange:v10 forSearchString:self->_searchString inDocument:0];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end