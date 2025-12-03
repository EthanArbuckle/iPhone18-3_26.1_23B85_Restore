@interface CRLRangeList
+ (id)stringValueForRangeVector:(const void *)vector;
- (CRLRangeList)initWithRange:(_NSRange)range;
- (CRLRangeList)initWithRangeList:(id)list;
- (CRLRangeList)initWithRangeVector:(const void *)vector;
- (CRLRangeList)initWithRangeVectorMove:(void *)move;
- (CRLRangeList)initWithString:(id)string;
- (_NSRange)rangeAtIndex:(unint64_t)index;
- (id).cxx_construct;
- (void)removeRangeAtIndex:(unint64_t)index;
- (void)replaceWithRange:(_NSRange)range atIndex:(unint64_t)index;
- (void)reverse;
@end

@implementation CRLRangeList

- (CRLRangeList)initWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = [(CRLRangeList *)self init];
  v6 = v5;
  if (v5)
  {
    sub_1000DAA88(&v5->mRangeList.__begin_, 1uLL);
    begin = v6->mRangeList.__begin_;
    begin->location = location;
    begin->length = length;
  }

  return v6;
}

- (CRLRangeList)initWithRangeList:(id)list
{
  listCopy = list;
  v5 = [(CRLRangeList *)self init];
  if (v5)
  {
    sub_1000DAA88(&v5->mRangeList.__begin_, [listCopy count]);
    v6 = 0;
    for (i = 0; i < [listCopy count]; ++i)
    {
      v8 = [listCopy rangeAtIndex:i];
      v9 = &v5->mRangeList.__begin_[v6];
      v9->location = v8;
      v9->length = v10;
      ++v6;
    }
  }

  return v5;
}

- (CRLRangeList)initWithString:(id)string
{
  stringCopy = string;
  v5 = [(CRLRangeList *)self init];
  v6 = v5;
  if (stringCopy && v5 && [stringCopy length] >= 3)
  {
    v7 = 0;
    for (i = 1; i - 1 < [stringCopy length]; ++i)
    {
      if ([stringCopy characterAtIndex:i - 1] == 123)
      {
        v7 = i - 1;
      }

      else if ([stringCopy characterAtIndex:i - 1] == 125)
      {
        v9 = [stringCopy substringWithRange:{v7, i - v7}];
        v11 = 0;
        v11 = NSRangeFromString(v9);
        sub_1000DACAC(&v6->mRangeList, &v11);
      }
    }
  }

  return v6;
}

- (CRLRangeList)initWithRangeVector:(const void *)vector
{
  v4 = [(CRLRangeList *)self init];
  v5 = v4;
  if (v4)
  {
    p_mRangeList = &v4->mRangeList;
    if (&v5->mRangeList != vector)
    {
      sub_1000DB520(p_mRangeList, *vector, *(vector + 1), (*(vector + 1) - *vector) >> 4);
    }
  }

  return v5;
}

- (CRLRangeList)initWithRangeVectorMove:(void *)move
{
  v4 = [(CRLRangeList *)self init];
  v5 = v4;
  if (v4)
  {
    p_mRangeList = &v4->mRangeList;
    if (&v5->mRangeList != move)
    {
      sub_1000DB520(p_mRangeList, *move, *(move + 1), (*(move + 1) - *move) >> 4);
    }
  }

  return v5;
}

- (void)removeRangeAtIndex:(unint64_t)index
{
  begin = self->mRangeList.__begin_;
  end = self->mRangeList.__end_;
  v6 = &begin[index];
  v7 = (end - &v6[1]);
  if (end != &v6[1])
  {
    memmove(&begin[index], &v6[1], end - &v6[1]);
  }

  self->mRangeList.__end_ = &v7[v6];
}

- (void)replaceWithRange:(_NSRange)range atIndex:(unint64_t)index
{
  begin = self->mRangeList.__begin_;
  v5 = self->mRangeList.__end_ - begin;
  if (v5 <= index)
  {
    v6 = [NSString stringWithFormat:@"Getting object at %lu from an array with size %lu", range.length, index, v5];
    v7 = [NSException exceptionWithName:@"IndexOutOfBound" reason:v6 userInfo:0];
    v8 = v7;

    objc_exception_throw(v7);
  }

  begin[index] = range;
}

- (void)reverse
{
  begin = self->mRangeList.__begin_;
  end = self->mRangeList.__end_;
  v4 = end - 1;
  if (begin != end && v4 > begin)
  {
    v6 = begin + 1;
    do
    {
      v7 = v6[-1];
      v6[-1] = *v4;
      *v4-- = v7;
    }

    while (v6++ < v4);
  }
}

- (_NSRange)rangeAtIndex:(unint64_t)index
{
  begin = self->mRangeList.__begin_;
  v4 = self->mRangeList.__end_ - begin;
  if (v4 <= index)
  {
    v8 = [NSString stringWithFormat:@"Getting object at %lu from an array with size %lu", index, v4];
    v9 = [NSException exceptionWithName:@"IndexOutOfBound" reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  p_location = &begin[index].location;
  v6 = *p_location;
  v7 = p_location[1];
  result.length = v7;
  result.location = v6;
  return result;
}

+ (id)stringValueForRangeVector:(const void *)vector
{
  v4 = [NSMutableString stringWithString:@"["];
  v5 = *vector;
  if (*(vector + 1) != *vector)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (v7)
      {
        [v4 appendString:{@", "}];
        v5 = *vector;
      }

      v8 = NSStringFromRange(*(v5 + v6));
      [v4 appendString:v8];

      ++v7;
      v5 = *vector;
      v6 += 16;
    }

    while (v7 < (*(vector + 1) - *vector) >> 4);
  }

  [v4 appendString:@"]"];

  return v4;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end