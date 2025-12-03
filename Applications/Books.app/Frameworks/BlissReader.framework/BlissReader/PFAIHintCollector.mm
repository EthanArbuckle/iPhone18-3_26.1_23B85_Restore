@interface PFAIHintCollector
- (PFAIHintCollector)initWithStorage:(id)storage;
- (id)lineBreaksForIdref:(id)idref presentationId:(id)id;
- (id)pHintCollectorForPresentationId:(id)id;
- (void)addHintCollection:(id)collection idref:(id)idref presentationId:(id)id;
- (void)addLineBreakHintWithPresentationId:(id)id;
- (void)addStartHintWithIdref:(id)idref presentationId:(id)id;
- (void)dealloc;
- (void)processHintCollections;
- (void)updateLastLineBreakHint;
@end

@implementation PFAIHintCollector

- (PFAIHintCollector)initWithStorage:(id)storage
{
  v6.receiver = self;
  v6.super_class = PFAIHintCollector;
  v4 = [(PFAIHintCollector *)&v6 init];
  if (v4)
  {
    v4->mStorage = storage;
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

- (id)pHintCollectorForPresentationId:(id)id
{
  v5 = [(NSMutableDictionary *)self->mPresentations objectForKey:?];
  if (!v5)
  {
    v5 = objc_alloc_init(PFAIPresentationHintCollector);
    [(NSMutableDictionary *)self->mPresentations setObject:v5 forKey:id];
    v6 = v5;
  }

  return v5;
}

- (void)addStartHintWithIdref:(id)idref presentationId:(id)id
{
  v7 = [(TSWPStorage *)self->mStorage length];
  v8 = [(PFAIHintCollector *)self pHintCollectorForPresentationId:id];
  mStorage = self->mStorage;

  [v8 addStartHint:v7 withIdref:idref textStorage:mStorage];
}

- (void)addLineBreakHintWithPresentationId:(id)id
{
  v5 = [(TSWPStorage *)self->mStorage length];
  v6 = [(PFAIHintCollector *)self pHintCollectorForPresentationId:id];
  mStorage = self->mStorage;

  [v6 addLineBreakHint:v5 textStorage:mStorage];
}

- (id)lineBreaksForIdref:(id)idref presentationId:(id)id
{
  v5 = [(NSMutableDictionary *)self->mPresentations objectForKey:id];

  return [v5 lineBreaksForIdref:idref];
}

- (void)addHintCollection:(id)collection idref:(id)idref presentationId:(id)id
{
  v7 = [(NSMutableDictionary *)self->mPresentations objectForKey:id];

  [v7 addHintCollection:collection idref:idref];
}

- (void)processHintCollections
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->mPresentations objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v8 + 1) + 8 * v7) processHintCollectionsWithStorage:self->mStorage];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  objectEnumerator = [(NSMutableDictionary *)self->mPresentations objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v9 + 1) + 8 * v8) updateLastLineBreakHintWithIndex:v3 textStorage:self->mStorage];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end