@interface CRLWPRangeArray
+ (CRLWPRangeArray)rangeArrayWithRange:(_NSRange)range;
+ (id)rangeArray;
- (BOOL)containsCharacterAtIndex:(unint64_t)index inclusive:(BOOL)inclusive;
- (BOOL)containsRange:(_NSRange)range;
- (BOOL)intersectsRange:(_NSRange)range;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRangeArray:(id)array;
- (CRLWPRangeArray)init;
- (CRLWPRangeArray)initWithRange:(_NSRange)range;
- (CRLWPRangeArray)initWithRangeVector:(const void *)vector;
- (_NSRange)rangeAtIndex:(unint64_t)index;
- (_NSRange)rangeContainingPosition:(unint64_t)position;
- (_NSRange)superRange;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)intersection:(_NSRange)intersection;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)rangesIntersecting:(_NSRange)intersecting;
- (unint64_t)hash;
- (unint64_t)indexCount;
- (unint64_t)indexForRange:(_NSRange)range;
- (unint64_t)p_finish;
- (unint64_t)p_start;
- (void)enumerateRanges:(id)ranges;
- (void)enumerateRangesInRange:(_NSRange)range usingBlock:(id)block;
- (void)reverseEnumerateRanges:(id)ranges;
@end

@implementation CRLWPRangeArray

+ (id)rangeArray
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (CRLWPRangeArray)rangeArrayWithRange:(_NSRange)range
{
  v3 = [objc_alloc(objc_opt_class()) initWithRange:{range.location, range.length}];

  return v3;
}

- (CRLWPRangeArray)init
{
  v3.receiver = self;
  v3.super_class = CRLWPRangeArray;
  return [(CRLWPRangeArray *)&v3 init];
}

- (CRLWPRangeArray)initWithRange:(_NSRange)range
{
  v3 = [(CRLWPRangeArray *)self init:range.location];
  v4 = v3;
  if (v3)
  {
    sub_1000DACAC(&v3->_rangeVector, &v6);
  }

  return v4;
}

- (CRLWPRangeArray)initWithRangeVector:(const void *)vector
{
  v4 = [(CRLWPRangeArray *)self init];
  v5 = v4;
  if (v4)
  {
    p_rangeVector = &v4->_rangeVector;
    if (&v5->_rangeVector != vector)
    {
      sub_1000DB520(p_rangeVector, *vector, *(vector + 1), (*(vector + 1) - *vector) >> 4);
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLWPRangeArray alloc];

  return [(CRLWPRangeArray *)v4 initWithRangeVector:&self->_rangeVector];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRLWPMutableRangeArray alloc];

  return [(CRLWPRangeArray *)v4 initWithRangeVector:&self->_rangeVector];
}

- (BOOL)isEqualToRangeArray:(id)array
{
  arrayCopy = array;
  if (arrayCopy && (begin = self->_rangeVector.__begin_, end = self->_rangeVector.__end_, v7 = arrayCopy[1], end - begin == arrayCopy[2] - v7))
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = sub_100014370(v5, equalCopy);
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
  p_start = [(CRLWPRangeArray *)self p_start];
  p_finish = [(CRLWPRangeArray *)self p_finish];
  if (p_start <= p_finish)
  {
    v5 = p_finish;
  }

  else
  {
    v5 = p_start;
  }

  if (p_start < p_finish)
  {
    p_finish = p_start;
  }

  v6 = v5 - p_finish;
  result.length = v6;
  result.location = p_finish;
  return result;
}

- (_NSRange)rangeAtIndex:(unint64_t)index
{
  v3 = &self->_rangeVector.__begin_[index];
  location = v3->location;
  length = v3->length;
  result.length = length;
  result.location = location;
  return result;
}

- (void)enumerateRanges:(id)ranges
{
  rangesCopy = ranges;
  v9 = 0;
  rangeCount = [(CRLWPRangeArray *)self rangeCount];
  if (rangeCount >= 1)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      rangesCopy[2](rangesCopy, self->_rangeVector.__begin_[v6].location, self->_rangeVector.__begin_[v6].length, v7 - 1, &v9);
      if (v9)
      {
        break;
      }

      ++v6;
    }

    while (v7++ < rangeCount);
  }
}

- (void)reverseEnumerateRanges:(id)ranges
{
  rangesCopy = ranges;
  rangeCount = [(CRLWPRangeArray *)self rangeCount];
  v6 = rangeCount;
  for (i = rangeCount - 1; (i & 0x8000000000000000) == 0; i = v9)
  {
    v8 = &self->_rangeVector.__begin_[v6--];
    v9 = i - 1;
    rangesCopy[2](rangesCopy, v8[-1].location, v8[-1].length);
  }
}

- (void)enumerateRangesInRange:(_NSRange)range usingBlock:(id)block
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10053B2D4;
  v6[3] = &unk_10186D7B8;
  rangeCopy = range;
  blockCopy = block;
  v8 = v10;
  v5 = blockCopy;
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

- (BOOL)containsCharacterAtIndex:(unint64_t)index inclusive:(BOOL)inclusive
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
      if (location > index)
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
  if (index >= v11 && index - v11 < length)
  {
    return 1;
  }

  result = 0;
  if (inclusive && length + v11 == index)
  {
    return 1;
  }

  return result;
}

- (BOOL)containsRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = [(CRLWPRangeArray *)self rangeContainingPosition:?];
  v7 = v5 + v6 >= location + length;
  if (v5 > location)
  {
    v7 = 0;
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL && v7;
}

- (_NSRange)rangeContainingPosition:(unint64_t)position
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
      if (location > position)
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
  if (begin != end && position >= end[-1].location && position - end[-1].location < end[-1].length)
  {
    v10 = end[-1].location;
    length = end[-1].length;
  }

  result.length = length;
  result.location = v10;
  return result;
}

- (BOOL)intersectsRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      if (range.location < v12)
      {
        v7 = v9;
      }

      else
      {
        v8 = v11;
      }
    }

    while (v7);
    if (v8 != end && NSIntersectionRange(range, *v8).length)
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

- (unint64_t)indexForRange:(_NSRange)range
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
      if (location < range.location)
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
      if (v6->location == range.location)
      {
        end = &v6[range.length < v6->length];
      }

      else
      {
        end = v6;
      }
    }
  }

  return end - begin;
}

- (id)intersection:(_NSRange)intersection
{
  length = intersection.length;
  location = intersection.location;
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

- (id)rangesIntersecting:(_NSRange)intersecting
{
  length = intersecting.length;
  location = intersecting.location;
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