@interface CRLWPDirtyRangeArray
- (BOOL)isEqualToDirtyRangeArray:(id)array;
- (CRLWPDirtyRangeArray)init;
- (CRLWPDirtyRangeArray)initWithDirtyRange:(id *)range;
- (CRLWPDirtyRangeArray)initWithRangeVector:(const void *)vector;
- (_NSRange)superRange;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dirtyRangesIntersecting:(_NSRange)intersecting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)delta;
- (unint64_t)indexForRange:(_NSRange)range;
@end

@implementation CRLWPDirtyRangeArray

- (CRLWPDirtyRangeArray)init
{
  v3.receiver = self;
  v3.super_class = CRLWPDirtyRangeArray;
  return [(CRLWPDirtyRangeArray *)&v3 init];
}

- (CRLWPDirtyRangeArray)initWithDirtyRange:(id *)range
{
  v4 = [(CRLWPDirtyRangeArray *)self init];
  v5 = v4;
  if (v4)
  {
    sub_10013CF2C(&v4->_rangeVector, range);
  }

  return v5;
}

- (CRLWPDirtyRangeArray)initWithRangeVector:(const void *)vector
{
  v4 = [(CRLWPDirtyRangeArray *)self init];
  v5 = v4;
  if (v4)
  {
    p_rangeVector = &v4->_rangeVector;
    if (&v5->_rangeVector != vector)
    {
      sub_10013DFB0(p_rangeVector, *vector, *(vector + 1), 0xAAAAAAAAAAAAAAABLL * ((*(vector + 1) - *vector) >> 3));
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLWPDirtyRangeArray alloc];

  return [(CRLWPDirtyRangeArray *)v4 initWithRangeVector:&self->_rangeVector];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRLWPMutableDirtyRangeArray alloc];

  return [(CRLWPDirtyRangeArray *)v4 initWithRangeVector:&self->_rangeVector];
}

- (BOOL)isEqualToDirtyRangeArray:(id)array
{
  arrayCopy = array;
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  v7 = arrayCopy[1];
  if (end - begin == arrayCopy[2] - v7)
  {
    if (begin == end)
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      do
      {
        v10 = *begin == *v7 && *(begin + 1) == v7[1] && *(begin + 2) == v7[2];
        begin = (begin + 24);
        v7 += 3;
      }

      while (v10 && begin != end);
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (_NSRange)superRange
{
  if ([(CRLWPDirtyRangeArray *)self isEmpty])
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
    v4 = 0;
  }

  else
  {
    v5 = *self->_rangeVector.__begin_;
    v6 = *(self->_rangeVector.__end_ - 2) + *(self->_rangeVector.__end_ - 3);
    if (v5 <= v6)
    {
      v7 = *(self->_rangeVector.__end_ - 2) + *(self->_rangeVector.__end_ - 3);
    }

    else
    {
      v7 = *self->_rangeVector.__begin_;
    }

    if (v5 >= v6)
    {
      v3 = *(self->_rangeVector.__end_ - 2) + *(self->_rangeVector.__end_ - 3);
    }

    else
    {
      v3 = *self->_rangeVector.__begin_;
    }

    v4 = v7 - v3;
  }

  result.length = v4;
  result.location = v3;
  return result;
}

- (int64_t)delta
{
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (begin == end)
  {
    return 0;
  }

  result = 0;
  do
  {
    result += *(begin + 2);
    begin = (begin + 24);
  }

  while (begin != end);
  return result;
}

- (unint64_t)indexForRange:(_NSRange)range
{
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (end != begin)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    v6 = self->_rangeVector.__begin_;
    do
    {
      v7 = v5 >> 1;
      v8 = (v6 + 24 * (v5 >> 1));
      v10 = *v8;
      v9 = (v8 + 3);
      v5 += ~(v5 >> 1);
      if (v10 < range.location)
      {
        v6 = v9;
      }

      else
      {
        v5 = v7;
      }
    }

    while (v5);
    if (v6 != end)
    {
      if (*v6 == range.location)
      {
        v11 = 24;
        if (range.length >= *(v6 + 1))
        {
          v11 = 0;
        }

        end = (v6 + v11);
      }

      else
      {
        end = v6;
      }
    }
  }

  return 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
}

- (id)dirtyRangesIntersecting:(_NSRange)intersecting
{
  length = intersecting.length;
  location = intersecting.location;
  v6 = objc_opt_new();
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (begin != end)
  {
    v9 = (begin + 24);
    do
    {
      v20.location = location;
      v20.length = length;
      if (!NSIntersectionRange(v20, *(v9 - 24)).length)
      {
        v11 = *(v9 - 3);
        v12 = *(v9 - 2);
        if (v12)
        {
          goto LABEL_12;
        }

        if (v11 < location || v11 - location >= length)
        {
          v12 = 0;
          goto LABEL_12;
        }
      }

      v10 = *(v9 - 24);
      v18 = *(v9 - 1);
      v17 = v10;
      [v6 addRange:&v17 allowEmpty:1];
      v11 = *(v9 - 3);
      v12 = *(v9 - 2);
LABEL_12:
      v14 = location + length < v12 + v11 || v9 == end;
      v9 = (v9 + 24);
    }

    while (!v14);
  }

  v15 = [v6 copy];

  return v15;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end