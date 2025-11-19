@interface PFAIPresentationHintCollector
- (PFAIPresentationHintCollector)init;
- (id)handleExtraIndexForTrailingParagraph:(id)a3 textStorage:(id)a4;
- (id)lineBreaksForIdref:(id)a3 fromIndexSet:(id)a4;
- (id)repairedIndexesForHintCollection:(id)a3 textStorage:(id)a4;
- (void)addHintCollection:(id)a3 idref:(id)a4;
- (void)addLineBreakHint:(unint64_t)a3 textStorage:(id)a4;
- (void)addStartHint:(unint64_t)a3 withIdref:(id)a4 textStorage:(id)a5;
- (void)dealloc;
- (void)processHintCollectionsWithStorage:(id)a3;
- (void)updateLastLineBreakHintWithIndex:(unint64_t)a3 textStorage:(id)a4;
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

- (void)addStartHint:(unint64_t)a3 withIdref:(id)a4 textStorage:(id)a5
{
  self->mLastStartIdref = 0;
  if (a4)
  {
    self->mLastStartHintAdded = [(NSMutableIndexSet *)self->mStartIndexes containsIndex:a3]^ 1;
    if ((-[NSMutableIndexSet containsIndex:](self->mLineBreakIndexes, "containsIndex:", a3) & 1) != 0 || (v11 = -[NSMutableIndexSet containsIndex:](self->mStartIndexes, "containsIndex:", a3), !a3) || (v11 & 1) != 0 || ([a5 characterAtIndex:a3 - 1], (IsParagraphBreakingCharacter() & 1) == 0))
    {
      self->mLastStartHint = a3;
      self->mLastStartIdref = a4;
    }

    [(NSMutableIndexSet *)self->mStartIndexes addIndex:a3];
    mIdrefStart = self->mIdrefStart;
    v10 = [NSNumber numberWithUnsignedInteger:a3];

    [(NSMutableDictionary *)mIdrefStart setObject:v10 forKey:a4];
  }
}

- (void)addLineBreakHint:(unint64_t)a3 textStorage:(id)a4
{
  self->mLastLineBreakHintAdded = [(NSMutableIndexSet *)self->mLineBreakIndexes containsIndex:?]^ 1;
  v7 = [(NSMutableIndexSet *)self->mLineBreakIndexes containsIndex:a3];
  if (!a3 || (v7 & 1) != 0 || ([a4 characterAtIndex:a3 - 1], (IsParagraphBreakingCharacter() & 1) == 0))
  {
    self->mLastLineBreakHint = a3;
  }

  [(NSMutableIndexSet *)self->mLineBreakIndexes addIndex:a3];

  self->mLastStartIdref = 0;
  self->mLastStartHint = 0x7FFFFFFFFFFFFFFFLL;
}

- (id)lineBreaksForIdref:(id)a3 fromIndexSet:(id)a4
{
  v6 = [(NSMutableDictionary *)self->mIdrefStart objectForKey:a3];
  if (!v6)
  {
    return 0;
  }

  v7 = [v6 unsignedIntegerValue];
  v8 = objc_alloc_init(NSMutableIndexSet);
  for (i = -[NSMutableIndexSet indexGreaterThanIndex:](self->mStartIndexes, "indexGreaterThanIndex:", v7); v7 < i; v7 = [a4 indexGreaterThanIndex:v7])
  {
    [v8 addIndex:v7];
  }

  if (i != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 addIndex:i];
  }

  return v8;
}

- (void)updateLastLineBreakHintWithIndex:(unint64_t)a3 textStorage:(id)a4
{
  if (a3)
  {
    [a4 characterAtIndex:a3 - 1];
    if (IsParagraphBreakingCharacter())
    {
      mLastLineBreakHint = self->mLastLineBreakHint;
      if (mLastLineBreakHint != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (mLastLineBreakHint + 1 == a3)
        {
          if (self->mLastLineBreakHintAdded)
          {
            [(NSMutableIndexSet *)self->mLineBreakIndexes removeIndex:?];
          }

          [(NSMutableIndexSet *)self->mLineBreakIndexes addIndex:a3];
        }

        self->mLastLineBreakHint = 0x7FFFFFFFFFFFFFFFLL;
      }

      mLastStartHint = self->mLastStartHint;
      if (mLastStartHint != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (mLastStartHint + 1 == a3)
        {
          if (self->mLastStartHintAdded)
          {
            [(NSMutableIndexSet *)self->mStartIndexes removeIndex:?];
          }

          [(NSMutableIndexSet *)self->mStartIndexes addIndex:a3];
          [(NSMutableDictionary *)self->mIdrefStart setObject:[NSNumber forKey:"numberWithUnsignedInteger:" numberWithUnsignedInteger:a3], self->mLastStartIdref];
        }

        self->mLastStartHint = 0x7FFFFFFFFFFFFFFFLL;

        self->mLastStartIdref = 0;
      }
    }
  }
}

- (void)addHintCollection:(id)a3 idref:(id)a4
{
  if (a3 && a4)
  {
    [(NSMutableArray *)self->mHintCollections addObject:?];
    mHintCollectionIdrefs = self->mHintCollectionIdrefs;

    [(TSUPointerKeyDictionary *)mHintCollectionIdrefs setObject:a4 forUncopiedKey:a3];
  }
}

- (id)handleExtraIndexForTrailingParagraph:(id)a3 textStorage:(id)a4
{
  v6 = [a4 length];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    v8 = v6;
    if ([a3 containsIndex:v6])
    {
      v9 = v8 - 1;
      v10 = [a4 characterAtIndex:v9];
      v11 = [a4 characterAtIndex:v7];
      if (v11 <= 0xC && ((1 << v11) & 0x1420) != 0 && v10 == 160)
      {
        [a4 deleteRange:v9 undoTransaction:{1, 0}];
        v12 = [[NSMutableIndexSet alloc] initWithIndexSet:a3];
        [v12 removeIndex:{objc_msgSend(a3, "lastIndex")}];
        return v12;
      }
    }
  }

  return a3;
}

- (id)repairedIndexesForHintCollection:(id)a3 textStorage:(id)a4
{
  v7 = [(PFAIPresentationHintCollector *)self lineBreaksForIdref:[(TSUPointerKeyDictionary *)self->mHintCollectionIdrefs objectForKey:?] fromIndexSet:self->mLineBreakIndexes];
  v8 = [a3 hintsCount] + 1;
  if ([v7 count] == v8)
  {
    return v7;
  }

  return [(PFAIPresentationHintCollector *)self handleExtraIndexForTrailingParagraph:v7 textStorage:a4];
}

- (void)processHintCollectionsWithStorage:(id)a3
{
  if (a3)
  {
    -[NSMutableIndexSet addIndex:](self->mLineBreakIndexes, "addIndex:", [a3 length]);
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
          v11 = [(PFAIPresentationHintCollector *)self repairedIndexesForHintCollection:v10 textStorage:a3];
          if (v11)
          {
            [v10 applePubUpdateRangesWithLineBreakIndexes:v11 textStorage:a3];
          }
        }

        v7 = [(NSMutableArray *)mHintCollections countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

@end