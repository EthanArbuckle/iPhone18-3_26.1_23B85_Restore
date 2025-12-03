@interface THModelSearchResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToResult:(id)result;
- (BOOL)isTextResult;
- (THModelSearchResult)initWithTerm:(id)term annotation:(id)annotation pageNumber:(unint64_t)number displayPageNumber:(id)pageNumber occurrenceIndex:(unint64_t)index context:(id)context;
- (THModelSearchResult)initWithTerm:(id)term rank:(int)rank cfi:(id)cfi pageNumber:(unint64_t)number displayPageNumber:(id)pageNumber occurrenceIndex:(unint64_t)index context:(id)context;
- (_NSRange)contextRangeForResult;
- (_NSRange)contextRangeForResultWithTrimmedContext:(id)context;
- (void)dealloc;
@end

@implementation THModelSearchResult

- (THModelSearchResult)initWithTerm:(id)term rank:(int)rank cfi:(id)cfi pageNumber:(unint64_t)number displayPageNumber:(id)pageNumber occurrenceIndex:(unint64_t)index context:(id)context
{
  v17.receiver = self;
  v17.super_class = THModelSearchResult;
  v15 = [(THModelSearchResult *)&v17 init];
  if (v15)
  {
    v15->mTerm = [term copy];
    v15->mRank = rank;
    v15->mCFI = [cfi copy];
    v15->mPageNumber = number;
    v15->mDisplayPageNumber = [pageNumber copy];
    v15->mOccurrenceIndex = index;
    v15->mContext = [context copy];
    v15->mOccurenceCount = 1;
  }

  return v15;
}

- (THModelSearchResult)initWithTerm:(id)term annotation:(id)annotation pageNumber:(unint64_t)number displayPageNumber:(id)pageNumber occurrenceIndex:(unint64_t)index context:(id)context
{
  v16.receiver = self;
  v16.super_class = THModelSearchResult;
  v14 = [(THModelSearchResult *)&v16 init];
  if (v14)
  {
    v14->mTerm = [term copy];
    v14->mAnnotation = annotation;
    v14->mRank = 100;
    v14->mPageNumber = number;
    v14->mDisplayPageNumber = [pageNumber copy];
    v14->mOccurrenceIndex = index;
    v14->mContext = [context copy];
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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(THModelSearchResult *)self isEqualToResult:equal];
}

- (BOOL)isEqualToResult:(id)result
{
  mRank = self->mRank;
  if (mRank != [result rank] || (mPageNumber = self->mPageNumber, mPageNumber != objc_msgSend(result, "pageNumber")) || (mOccurrenceIndex = self->mOccurrenceIndex, mOccurrenceIndex != objc_msgSend(result, "occurrenceIndex")))
  {
    LOBYTE(v8) = 0;
    return v8;
  }

  v8 = -[NSString isEqualToString:](self->mTerm, "isEqualToString:", [result term]);
  if (v8)
  {
    v8 = -[NSString isEqualToString:](self->mCFI, "isEqualToString:", [result cfi]);
    if (v8)
    {
      mAnnotation = self->mAnnotation;
      if (!mAnnotation)
      {
        if (![result annotation])
        {
LABEL_10:
          LOBYTE(v8) = 1;
          return v8;
        }

        mAnnotation = self->mAnnotation;
      }

      v8 = -[THAnnotation isEqual:](mAnnotation, "isEqual:", [result annotation]);
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

- (_NSRange)contextRangeForResultWithTrimmedContext:(id)context
{
  if (self->mOccurrenceIndex)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v5 = [context rangeOfString:self->mTerm options:objc_msgSend(objc_opt_class() range:{"stringCompareOptions"), &v5[v6], objc_msgSend(context, "length") - &v5[v6]}];
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