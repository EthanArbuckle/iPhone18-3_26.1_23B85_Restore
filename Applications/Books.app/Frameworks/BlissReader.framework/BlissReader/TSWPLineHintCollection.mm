@interface TSWPLineHintCollection
- (BOOL)applePubUpdateRangesWithLineBreakIndexes:(id)indexes textStorage:(id)storage;
- (TSWPLineHintCollection)initWithApplePubData:(id)data context:(id)context;
- (id)initForEmptyShapeWithPreviousRange:(_NSRange)range context:(id)context;
@end

@implementation TSWPLineHintCollection

- (TSWPLineHintCollection)initWithApplePubData:(id)data context:(id)context
{
  v21.receiver = self;
  v21.super_class = TSWPLineHintCollection;
  v5 = [(TSWPLineHintCollection *)&v21 initWithContext:context];
  if (v5)
  {
    bytes = [data bytes];
    v7 = [data length];
    v8 = OBJC_IVAR___TSWPLineHintCollection_mHintsCount;
    v9 = OBJC_IVAR___TSWPLineHintCollection_mHasColumnIndices;
    *(v5 + OBJC_IVAR___TSWPLineHintCollection_mHintsCount) = 0;
    if (v7 < 9 || *bytes != 73 || bytes[1] != 66 || bytes[2] != 76 || bytes[3] != 70 || (v10 = bytes[4], (v10 & 0xF0) != 0x10) || (v11 = v7 - 8, v12 = bytes[5], v13 = (v7 - 8) / v12, (v7 - 8) % v12))
    {
      v14 = 0;
LABEL_10:
      *(v5 + v9) = v14;
      *(v5 + OBJC_IVAR___TSWPLineHintCollection_mHints) = 0;

      return 0;
    }

    v16 = v10 & 0xF;
    v14 = v16 != 0;
    v17 = malloc_type_calloc((v7 - 8) / v12, 0x38uLL, 0x10000405AA1D1E9uLL);
    if (!v17)
    {
      goto LABEL_10;
    }

    if (v11 >= v12)
    {
      v18 = 0;
      v19 = (v17 + 24);
      v20 = (bytes + 12);
      do
      {
        *(v19 - 3) = *(v20 - 1);
        *(v19 - 2) = *v20;
        *(v19 - 1) = v20[1];
        *v19 = v20[2];
        *(v19 + 6) = v20[3];
        ++v18;
        v19 += 7;
        v20 = (v20 + v12);
      }

      while (v18 < v13);
    }

    *(v5 + v8) = v13;
    *(v5 + v9) = v16 != 0;
    *(v5 + OBJC_IVAR___TSWPLineHintCollection_mHints) = v17;
  }

  return v5;
}

- (id)initForEmptyShapeWithPreviousRange:(_NSRange)range context:(id)context
{
  length = range.length;
  location = range.location;
  v10.receiver = self;
  v10.super_class = TSWPLineHintCollection;
  v6 = [(TSWPLineHintCollection *)&v10 initWithContext:context];
  v7 = v6;
  if (v6)
  {
    *(v6 + OBJC_IVAR___TSWPLineHintCollection_mHintsCount) = 1;
    v8 = malloc_type_calloc(1uLL, 0x38uLL, 0x10000405AA1D1E9uLL);
    *(v7 + OBJC_IVAR___TSWPLineHintCollection_mHints) = v8;
    *v8 = 0u;
    v8[1] = 0u;
    *(v8 + 4) = location + length;
    *(v8 + 5) = 0;
    *(v8 + 12) = 0;
    *(v7 + OBJC_IVAR___TSWPLineHintCollection_mValid) = 1;
  }

  return v7;
}

- (BOOL)applePubUpdateRangesWithLineBreakIndexes:(id)indexes textStorage:(id)storage
{
  v6 = [storage length];
  firstIndex = [indexes firstIndex];
  v8 = 0;
  v9 = OBJC_IVAR___TSWPLineHintCollection_mHintsCount;
  v10 = firstIndex != 0x7FFFFFFFFFFFFFFFLL;
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL && *(self + OBJC_IVAR___TSWPLineHintCollection_mHintsCount))
  {
    v11 = firstIndex;
    v12 = 0;
    v8 = 0;
    v10 = 1;
    while (1)
    {
      v13 = [indexes indexGreaterThanIndex:v11];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL || v13 > v6)
      {
        break;
      }

      if (v13 <= v11)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        v10 = 0;
        break;
      }

      v14 = *(self + OBJC_IVAR___TSWPLineHintCollection_mHints) + v12;
      *(v14 + 32) = v11;
      *(v14 + 40) = v13 - v11;
      ++v8;
      v12 += 56;
      v11 = v13;
      if (v8 >= *(self + v9))
      {
        v10 = 1;
        break;
      }
    }
  }

  v15 = [indexes count];
  v16 = *(self + v9);
  if (v8 == v16 && v15 == (v16 + 1))
  {
    result = v10;
  }

  else
  {
    result = 0;
  }

  *(self + OBJC_IVAR___TSWPLineHintCollection_mValid) = result;
  return result;
}

@end