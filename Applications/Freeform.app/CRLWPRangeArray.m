@interface CRLWPRangeArray
+ (CRLWPRangeArray)rangeArrayWithRange:(_NSRange)a3;
+ (id)rangeArray;
- (BOOL)containsCharacterAtIndex:(unint64_t)a3 inclusive:(BOOL)a4;
- (BOOL)containsRange:(_NSRange)a3;
- (BOOL)intersectsRange:(_NSRange)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRangeArray:(id)a3;
- (CRLWPRangeArray)init;
- (CRLWPRangeArray)initWithRange:(_NSRange)a3;
- (CRLWPRangeArray)initWithRangeVector:(const void *)a3;
- (_NSRange)rangeAtIndex:(unint64_t)a3;
- (_NSRange)rangeContainingPosition:(unint64_t)a3;
- (_NSRange)superRange;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)intersection:(_NSRange)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)rangesIntersecting:(_NSRange)a3;
- (unint64_t)hash;
- (unint64_t)indexCount;
- (unint64_t)indexForRange:(_NSRange)a3;
- (unint64_t)p_finish;
- (unint64_t)p_start;
- (void)enumerateRanges:(id)a3;
- (void)enumerateRangesInRange:(_NSRange)a3 usingBlock:(id)a4;
- (void)reverseEnumerateRanges:(id)a3;
@end

@implementation CRLWPRangeArray

+ (id)rangeArray
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (CRLWPRangeArray)rangeArrayWithRange:(_NSRange)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithRange:{a3.location, a3.length}];

  return v3;
}

- (CRLWPRangeArray)init
{
  v3.receiver = self;
  v3.super_class = CRLWPRangeArray;
  return [(CRLWPRangeArray *)&v3 init];
}

- (CRLWPRangeArray)initWithRange:(_NSRange)a3
{
  v3 = [(CRLWPRangeArray *)self init:a3.location];
  v4 = v3;
  if (v3)
  {
    sub_1000DACAC(&v3->_rangeVector, &v6);
  }

  return v4;
}

- (CRLWPRangeArray)initWithRangeVector:(const void *)a3
{
  v4 = [(CRLWPRangeArray *)self init];
  v5 = v4;
  if (v4)
  {
    p_rangeVector = &v4->_rangeVector;
    if (&v5->_rangeVector != a3)
    {
      sub_1000DB520(p_rangeVector, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 4);
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRLWPRangeArray alloc];

  return [(CRLWPRangeArray *)v4 initWithRangeVector:&self->_rangeVector];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRLWPMutableRangeArray alloc];

  return [(CRLWPRangeArray *)v4 initWithRangeVector:&self->_rangeVector];
}

- (BOOL)isEqualToRangeArray:(id)a3
{
  v4 = a3;
  if (v4 && (begin = self->_rangeVector.__begin_, end = self->_rangeVector.__end_, v7 = v4[1], end - begin == v4[2] - v7))
  {
    if (end == begin)
    {
      v14 = 1;
    }

    else
    {
      v8 = end - begin;
      if (v8 <= 1)
      {
        v8 = 1;
      }

      v9 = v8 - 1;
      do
      {
        v10 = *begin++;
        v11 = v10;
        v12 = *v7++;
        v13 = vmovn_s64(vceqq_s64(v11, v12));
        v14 = v13.i8[0] & v13.i8[4];
        v16 = v9-- != 0;
      }

      while ((v13.i8[0] & v13.i8[4] & 1) != 0 && v16);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = sub_100014370(v5, v4);
    if (v6)
    {
      v7 = [(CRLWPRangeArray *)self isEqualToRangeArray:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = sub_1001821F8(0, 0);
  begin = self->_rangeVector.__begin_;
  if (self->_rangeVector.__end_ != begin)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v3 = sub_100083B3C(&begin[v5], 16, v3);
      ++v6;
      begin = self->_rangeVector.__begin_;
      ++v5;
    }

    while (v6 < self->_rangeVector.__end_ - begin);
  }

  return v3;
}

- (_NSRange)superRange
{
  v3 = [(CRLWPRangeArray *)self p_start];
  v4 = [(CRLWPRangeArray *)self p_finish];
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  if (v3 < v4)
  {
    v4 = v3;
  }

  v6 = v5 - v4;
  result.length = v6;
  result.location = v4;
  return result;
}

- (_NSRange)rangeAtIndex:(unint64_t)a3
{
  v3 = &self->_rangeVector.__begin_[a3];
  location = v3->location;
  length = v3->length;
  result.length = length;
  result.location = location;
  return result;
}

- (void)enumerateRanges:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [(CRLWPRangeArray *)self rangeCount];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v4[2](v4, self->_rangeVector.__begin_[v6].location, self->_rangeVector.__begin_[v6].length, v7 - 1, &v9);
      if (v9)
      {
        break;
      }

      ++v6;
    }

    while (v7++ < v5);
  }
}

- (void)reverseEnumerateRanges:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPRangeArray *)self rangeCount];
  v6 = v5;
  for (i = v5 - 1; (i & 0x8000000000000000) == 0; i = v9)
  {
    v8 = &self->_rangeVector.__begin_[v6--];
    v9 = i - 1;
    v4[2](v4, v8[-1].location, v8[-1].length);
  }
}

- (void)enumerateRangesInRange:(_NSRange)a3 usingBlock:(id)a4
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10053B2D4;
  v6[3] = &unk_10186D7B8;
  v9 = a3;
  v7 = a4;
  v8 = v10;
  v5 = v7;
  [(CRLWPRangeArray *)self enumerateRanges:v6];

  _Block_object_dispose(v10, 8);
}

- (unint64_t)indexCount
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
    result += begin->length;
    ++begin;
  }

  while (begin != end);
  return result;
}

- (BOOL)containsCharacterAtIndex:(unint64_t)a3 inclusive:(BOOL)a4
{
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (end != begin)
  {
    v6 = end - begin;
    end = self->_rangeVector.__begin_;
    do
    {
      v7 = v6 >> 1;
      v8 = &end[v6 >> 1];
      location = v8->location;
      v9 = v8 + 1;
      v6 += ~(v6 >> 1);
      if (location > a3)
      {
        v6 = v7;
      }

      else
      {
        end = v9;
      }
    }

    while (v6);
  }

  if (end == begin)
  {
    return 0;
  }

  v11 = end[-1].location;
  length = end[-1].length;
  if (a3 >= v11 && a3 - v11 < length)
  {
    return 1;
  }

  result = 0;
  if (a4 && length + v11 == a3)
  {
    return 1;
  }

  return result;
}

- (BOOL)containsRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(CRLWPRangeArray *)self rangeContainingPosition:?];
  v7 = v5 + v6 >= location + length;
  if (v5 > location)
  {
    v7 = 0;
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL && v7;
}

- (_NSRange)rangeContainingPosition:(unint64_t)a3
{
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (end != begin)
  {
    v5 = end - begin;
    end = self->_rangeVector.__begin_;
    do
    {
      v6 = v5 >> 1;
      v7 = &end[v5 >> 1];
      location = v7->location;
      v8 = v7 + 1;
      v5 += ~(v5 >> 1);
      if (location > a3)
      {
        v5 = v6;
      }

      else
      {
        end = v8;
      }
    }

    while (v5);
  }

  v10 = 0x7FFFFFFFFFFFFFFFLL;
  length = 0;
  if (begin != end && a3 >= end[-1].location && a3 - end[-1].location < end[-1].length)
  {
    v10 = end[-1].location;
    length = end[-1].length;
  }

  result.length = length;
  result.location = v10;
  return result;
}

- (BOOL)intersectsRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (end == begin)
  {
    v8 = self->_rangeVector.__end_;
  }

  else
  {
    v7 = end - begin;
    v8 = self->_rangeVector.__begin_;
    do
    {
      v9 = v7 >> 1;
      p_location = &v8[v7 >> 1].location;
      v12 = *p_location;
      v11 = (p_location + 2);
      v7 += ~(v7 >> 1);
      if (a3.location < v12)
      {
        v7 = v9;
      }

      else
      {
        v8 = v11;
      }
    }

    while (v7);
    if (v8 != end && NSIntersectionRange(a3, *v8).length)
    {
      return 1;
    }
  }

  if (v8 == begin)
  {
    return 0;
  }

  v14.location = location;
  v14.length = length;
  return NSIntersectionRange(v14, *(v8 - 16)).length != 0;
}

- (unint64_t)indexForRange:(_NSRange)a3
{
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (end != begin)
  {
    v5 = end - begin;
    v6 = self->_rangeVector.__begin_;
    do
    {
      v7 = v5 >> 1;
      v8 = &v6[v5 >> 1];
      location = v8->location;
      v9 = v8 + 1;
      v5 += ~(v5 >> 1);
      if (location < a3.location)
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
      if (v6->location == a3.location)
      {
        end = &v6[a3.length < v6->length];
      }

      else
      {
        end = v6;
      }
    }
  }

  return end - begin;
}

- (id)intersection:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = objc_opt_new();
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (begin != end)
  {
    do
    {
      v9 = begin->location;
      v10 = begin->length;
      v15.location = location;
      v15.length = length;
      v16.location = begin->location;
      v16.length = v10;
      v11 = NSIntersectionRange(v15, v16);
      if (v11.length)
      {
        [v6 addRange:{v11.location, v11.length}];
      }

      ++begin;
    }

    while (location + length >= v10 + v9 && begin != end);
  }

  return v6;
}

- (id)rangesIntersecting:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = objc_opt_new();
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (begin != end)
  {
    do
    {
      v9 = begin->location;
      v10 = begin->length;
      v14.location = location;
      v14.length = length;
      v15.location = begin->location;
      v15.length = v10;
      if (NSIntersectionRange(v14, v15).length)
      {
        [v6 addRange:{v9, v10}];
      }

      ++begin;
    }

    while (location + length >= v10 + v9 && begin != end);
  }

  return v6;
}

- (unint64_t)p_start
{
  result = [(CRLWPRangeArray *)self rangeCount];
  if (result)
  {
    return self->_rangeVector.__begin_->location;
  }

  return result;
}

- (unint64_t)p_finish
{
  result = [(CRLWPRangeArray *)self rangeCount];
  if (result)
  {
    return self->_rangeVector.__end_[-1].length + self->_rangeVector.__end_[-1].location;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end