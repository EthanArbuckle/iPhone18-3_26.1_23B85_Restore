@interface THModelSearchResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResult:(id)a3;
- (BOOL)isTextResult;
- (THModelSearchResult)initWithTerm:(id)a3 annotation:(id)a4 pageNumber:(unint64_t)a5 displayPageNumber:(id)a6 occurrenceIndex:(unint64_t)a7 context:(id)a8;
- (THModelSearchResult)initWithTerm:(id)a3 rank:(int)a4 cfi:(id)a5 pageNumber:(unint64_t)a6 displayPageNumber:(id)a7 occurrenceIndex:(unint64_t)a8 context:(id)a9;
- (_NSRange)contextRangeForResult;
- (_NSRange)contextRangeForResultWithTrimmedContext:(id)a3;
- (void)dealloc;
@end

@implementation THModelSearchResult

- (THModelSearchResult)initWithTerm:(id)a3 rank:(int)a4 cfi:(id)a5 pageNumber:(unint64_t)a6 displayPageNumber:(id)a7 occurrenceIndex:(unint64_t)a8 context:(id)a9
{
  v17.receiver = self;
  v17.super_class = THModelSearchResult;
  v15 = [(THModelSearchResult *)&v17 init];
  if (v15)
  {
    v15->mTerm = [a3 copy];
    v15->mRank = a4;
    v15->mCFI = [a5 copy];
    v15->mPageNumber = a6;
    v15->mDisplayPageNumber = [a7 copy];
    v15->mOccurrenceIndex = a8;
    v15->mContext = [a9 copy];
    v15->mOccurenceCount = 1;
  }

  return v15;
}

- (THModelSearchResult)initWithTerm:(id)a3 annotation:(id)a4 pageNumber:(unint64_t)a5 displayPageNumber:(id)a6 occurrenceIndex:(unint64_t)a7 context:(id)a8
{
  v16.receiver = self;
  v16.super_class = THModelSearchResult;
  v14 = [(THModelSearchResult *)&v16 init];
  if (v14)
  {
    v14->mTerm = [a3 copy];
    v14->mAnnotation = a4;
    v14->mRank = 100;
    v14->mPageNumber = a5;
    v14->mDisplayPageNumber = [a6 copy];
    v14->mOccurrenceIndex = a7;
    v14->mContext = [a8 copy];
    v14->mOccurenceCount = 1;
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THModelSearchResult;
  [(THModelSearchResult *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(THModelSearchResult *)self isEqualToResult:a3];
}

- (BOOL)isEqualToResult:(id)a3
{
  mRank = self->mRank;
  if (mRank != [a3 rank] || (mPageNumber = self->mPageNumber, mPageNumber != objc_msgSend(a3, "pageNumber")) || (mOccurrenceIndex = self->mOccurrenceIndex, mOccurrenceIndex != objc_msgSend(a3, "occurrenceIndex")))
  {
    LOBYTE(v8) = 0;
    return v8;
  }

  v8 = -[NSString isEqualToString:](self->mTerm, "isEqualToString:", [a3 term]);
  if (v8)
  {
    v8 = -[NSString isEqualToString:](self->mCFI, "isEqualToString:", [a3 cfi]);
    if (v8)
    {
      mAnnotation = self->mAnnotation;
      if (!mAnnotation)
      {
        if (![a3 annotation])
        {
LABEL_10:
          LOBYTE(v8) = 1;
          return v8;
        }

        mAnnotation = self->mAnnotation;
      }

      v8 = -[THAnnotation isEqual:](mAnnotation, "isEqual:", [a3 annotation]);
      if (v8)
      {
        goto LABEL_10;
      }
    }
  }

  return v8;
}

- (BOOL)isTextResult
{
  mRank = self->mRank;
  v3 = mRank - 6;
  v4 = mRank != 100;
  return v3 >= 2 && v4;
}

- (_NSRange)contextRangeForResult
{
  v2 = [(THModelSearchResult *)self contextRangeForResultWithTrimmedContext:self->mContext];
  result.length = v3;
  result.location = v2;
  return result;
}

- (_NSRange)contextRangeForResultWithTrimmedContext:(id)a3
{
  if (self->mOccurrenceIndex)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v5 = [a3 rangeOfString:self->mTerm options:objc_msgSend(objc_opt_class() range:{"stringCompareOptions"), &v5[v6], objc_msgSend(a3, "length") - &v5[v6]}];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (++v7 >= self->mOccurrenceIndex)
      {
        goto LABEL_11;
      }
    }

    v6 = 0;
    v5 = 0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

LABEL_11:
  result.length = v6;
  result.location = v5;
  return result;
}

@end