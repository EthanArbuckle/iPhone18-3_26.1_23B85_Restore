@interface PFAIPresentationHintCollector
- (PFAIPresentationHintCollector)init;
- (id)handleExtraIndexForTrailingParagraph:(id)paragraph textStorage:(id)storage;
- (id)lineBreaksForIdref:(id)idref fromIndexSet:(id)set;
- (id)repairedIndexesForHintCollection:(id)collection textStorage:(id)storage;
- (void)addHintCollection:(id)collection idref:(id)idref;
- (void)addLineBreakHint:(unint64_t)hint textStorage:(id)storage;
- (void)addStartHint:(unint64_t)hint withIdref:(id)idref textStorage:(id)storage;
- (void)dealloc;
- (void)processHintCollectionsWithStorage:(id)storage;
- (void)updateLastLineBreakHintWithIndex:(unint64_t)index textStorage:(id)storage;
@end

@implementation PFAIPresentationHintCollector

- (PFAIPresentationHintCollector)init
{
  v4.receiver = self;
  v4.super_class = PFAIPresentationHintCollector;
  v2 = [(PFAIPresentationHintCollector *)&v4 init];
  if (v2)
  {
    v2->mIdrefStart = objc_alloc_init(NSMutableDictionary);
    v2->mLineBreakIndexes = objc_alloc_init(NSMutableIndexSet);
    v2->mStartIndexes = objc_alloc_init(NSMutableIndexSet);
    v2->mLastLineBreakHint = 0x7FFFFFFFFFFFFFFFLL;
    v2->mHintCollections = objc_alloc_init(NSMutableArray);
    v2->mHintCollectionIdrefs = objc_alloc_init(TSUPointerKeyDictionary);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFAIPresentationHintCollector;
  [(PFAIPresentationHintCollector *)&v3 dealloc];
}

- (void)addStartHint:(unint64_t)hint withIdref:(id)idref textStorage:(id)storage
{
  self->mLastStartIdref = 0;
  if (idref)
  {
    self->mLastStartHintAdded = [(NSMutableIndexSet *)self->mStartIndexes containsIndex:hint]^ 1;
    if ((-[NSMutableIndexSet containsIndex:](self->mLineBreakIndexes, "containsIndex:", hint) & 1) != 0 || (v11 = -[NSMutableIndexSet containsIndex:](self->mStartIndexes, "containsIndex:", hint), !hint) || (v11 & 1) != 0 || ([storage characterAtIndex:hint - 1], (IsParagraphBreakingCharacter() & 1) == 0))
    {
      self->mLastStartHint = hint;
      self->mLastStartIdref = idref;
    }

    [(NSMutableIndexSet *)self->mStartIndexes addIndex:hint];
    mIdrefStart = self->mIdrefStart;
    v10 = [NSNumber numberWithUnsignedInteger:hint];

    [(NSMutableDictionary *)mIdrefStart setObject:v10 forKey:idref];
  }
}

- (void)addLineBreakHint:(unint64_t)hint textStorage:(id)storage
{
  self->mLastLineBreakHintAdded = [(NSMutableIndexSet *)self->mLineBreakIndexes containsIndex:?]^ 1;
  v7 = [(NSMutableIndexSet *)self->mLineBreakIndexes containsIndex:hint];
  if (!hint || (v7 & 1) != 0 || ([storage characterAtIndex:hint - 1], (IsParagraphBreakingCharacter() & 1) == 0))
  {
    self->mLastLineBreakHint = hint;
  }

  [(NSMutableIndexSet *)self->mLineBreakIndexes addIndex:hint];

  self->mLastStartIdref = 0;
  self->mLastStartHint = 0x7FFFFFFFFFFFFFFFLL;
}

- (id)lineBreaksForIdref:(id)idref fromIndexSet:(id)set
{
  v6 = [(NSMutableDictionary *)self->mIdrefStart objectForKey:idref];
  if (!v6)
  {
    return 0;
  }

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  v8 = objc_alloc_init(NSMutableIndexSet);
  for (i = -[NSMutableIndexSet indexGreaterThanIndex:](self->mStartIndexes, "indexGreaterThanIndex:", unsignedIntegerValue); unsignedIntegerValue < i; unsignedIntegerValue = [set indexGreaterThanIndex:unsignedIntegerValue])
  {
    [v8 addIndex:unsignedIntegerValue];
  }

  if (i != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 addIndex:i];
  }

  return v8;
}

- (void)updateLastLineBreakHintWithIndex:(unint64_t)index textStorage:(id)storage
{
  if (index)
  {
    [storage characterAtIndex:index - 1];
    if (IsParagraphBreakingCharacter())
    {
      mLastLineBreakHint = self->mLastLineBreakHint;
      if (mLastLineBreakHint != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (mLastLineBreakHint + 1 == index)
        {
          if (self->mLastLineBreakHintAdded)
          {
            [(NSMutableIndexSet *)self->mLineBreakIndexes removeIndex:?];
          }

          [(NSMutableIndexSet *)self->mLineBreakIndexes addIndex:index];
        }

        self->mLastLineBreakHint = 0x7FFFFFFFFFFFFFFFLL;
      }

      mLastStartHint = self->mLastStartHint;
      if (mLastStartHint != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (mLastStartHint + 1 == index)
        {
          if (self->mLastStartHintAdded)
          {
            [(NSMutableIndexSet *)self->mStartIndexes removeIndex:?];
          }

          [(NSMutableIndexSet *)self->mStartIndexes addIndex:index];
          [(NSMutableDictionary *)self->mIdrefStart setObject:[NSNumber forKey:"numberWithUnsignedInteger:" numberWithUnsignedInteger:index], self->mLastStartIdref];
        }

        self->mLastStartHint = 0x7FFFFFFFFFFFFFFFLL;

        self->mLastStartIdref = 0;
      }
    }
  }
}

- (void)addHintCollection:(id)collection idref:(id)idref
{
  if (collection && idref)
  {
    [(NSMutableArray *)self->mHintCollections addObject:?];
    mHintCollectionIdrefs = self->mHintCollectionIdrefs;

    [(TSUPointerKeyDictionary *)mHintCollectionIdrefs setObject:idref forUncopiedKey:collection];
  }
}

- (id)handleExtraIndexForTrailingParagraph:(id)paragraph textStorage:(id)storage
{
  v6 = [storage length];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    v8 = v6;
    if ([paragraph containsIndex:v6])
    {
      v9 = v8 - 1;
      v10 = [storage characterAtIndex:v9];
      v11 = [storage characterAtIndex:v7];
      if (v11 <= 0xC && ((1 << v11) & 0x1420) != 0 && v10 == 160)
      {
        [storage deleteRange:v9 undoTransaction:{1, 0}];
        v12 = [[NSMutableIndexSet alloc] initWithIndexSet:paragraph];
        [v12 removeIndex:{objc_msgSend(paragraph, "lastIndex")}];
        return v12;
      }
    }
  }

  return paragraph;
}

- (id)repairedIndexesForHintCollection:(id)collection textStorage:(id)storage
{
  v7 = [(PFAIPresentationHintCollector *)self lineBreaksForIdref:[(TSUPointerKeyDictionary *)self->mHintCollectionIdrefs objectForKey:?] fromIndexSet:self->mLineBreakIndexes];
  v8 = [collection hintsCount] + 1;
  if ([v7 count] == v8)
  {
    return v7;
  }

  return [(PFAIPresentationHintCollector *)self handleExtraIndexForTrailingParagraph:v7 textStorage:storage];
}

- (void)processHintCollectionsWithStorage:(id)storage
{
  if (storage)
  {
    -[NSMutableIndexSet addIndex:](self->mLineBreakIndexes, "addIndex:", [storage length]);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    mHintCollections = self->mHintCollections;
    v6 = [(NSMutableArray *)mHintCollections countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(mHintCollections);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = [(PFAIPresentationHintCollector *)self repairedIndexesForHintCollection:v10 textStorage:storage];
          if (v11)
          {
            [v10 applePubUpdateRangesWithLineBreakIndexes:v11 textStorage:storage];
          }
        }

        v7 = [(NSMutableArray *)mHintCollections countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

@end