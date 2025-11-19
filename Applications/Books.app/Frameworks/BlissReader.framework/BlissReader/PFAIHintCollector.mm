@interface PFAIHintCollector
- (PFAIHintCollector)initWithStorage:(id)a3;
- (id)lineBreaksForIdref:(id)a3 presentationId:(id)a4;
- (id)pHintCollectorForPresentationId:(id)a3;
- (void)addHintCollection:(id)a3 idref:(id)a4 presentationId:(id)a5;
- (void)addLineBreakHintWithPresentationId:(id)a3;
- (void)addStartHintWithIdref:(id)a3 presentationId:(id)a4;
- (void)dealloc;
- (void)processHintCollections;
- (void)updateLastLineBreakHint;
@end

@implementation PFAIHintCollector

- (PFAIHintCollector)initWithStorage:(id)a3
{
  v6.receiver = self;
  v6.super_class = PFAIHintCollector;
  v4 = [(PFAIHintCollector *)&v6 init];
  if (v4)
  {
    v4->mStorage = a3;
    v4->mPresentations = objc_alloc_init(NSMutableDictionary);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFAIHintCollector;
  [(PFAIHintCollector *)&v3 dealloc];
}

- (id)pHintCollectorForPresentationId:(id)a3
{
  v5 = [(NSMutableDictionary *)self->mPresentations objectForKey:?];
  if (!v5)
  {
    v5 = objc_alloc_init(PFAIPresentationHintCollector);
    [(NSMutableDictionary *)self->mPresentations setObject:v5 forKey:a3];
    v6 = v5;
  }

  return v5;
}

- (void)addStartHintWithIdref:(id)a3 presentationId:(id)a4
{
  v7 = [(TSWPStorage *)self->mStorage length];
  v8 = [(PFAIHintCollector *)self pHintCollectorForPresentationId:a4];
  mStorage = self->mStorage;

  [v8 addStartHint:v7 withIdref:a3 textStorage:mStorage];
}

- (void)addLineBreakHintWithPresentationId:(id)a3
{
  v5 = [(TSWPStorage *)self->mStorage length];
  v6 = [(PFAIHintCollector *)self pHintCollectorForPresentationId:a3];
  mStorage = self->mStorage;

  [v6 addLineBreakHint:v5 textStorage:mStorage];
}

- (id)lineBreaksForIdref:(id)a3 presentationId:(id)a4
{
  v5 = [(NSMutableDictionary *)self->mPresentations objectForKey:a4];

  return [v5 lineBreaksForIdref:a3];
}

- (void)addHintCollection:(id)a3 idref:(id)a4 presentationId:(id)a5
{
  v7 = [(NSMutableDictionary *)self->mPresentations objectForKey:a5];

  [v7 addHintCollection:a3 idref:a4];
}

- (void)processHintCollections
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->mPresentations objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) processHintCollectionsWithStorage:self->mStorage];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)updateLastLineBreakHint
{
  v3 = [(TSWPStorage *)self->mStorage length];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSMutableDictionary *)self->mPresentations objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) updateLastLineBreakHintWithIndex:v3 textStorage:self->mStorage];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end