@interface THBodyHint
- ($D6031A91289B01F4EEA92D3AF6491109)firstHint;
- ($D6031A91289B01F4EEA92D3AF6491109)lastHint;
- (CGSize)size;
- (THBodyHint)initWithCoder:(id)coder;
- (_NSRange)anchoredRange;
- (_NSRange)range;
- (id).cxx_construct;
- (unint64_t)nextWidowPullsDownFromCharIndex;
- (unint64_t)startAnchoredCharIndex;
- (vector<TSWPTargetHint,)hints;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)offsetStartCharIndexBy:(int64_t)by;
- (void)setHints:(const void *)hints;
- (void)trimToCharIndex:(unint64_t)index inTarget:(id)target removeAutoNumberFootnoteCount:(unint64_t)count;
@end

@implementation THBodyHint

- (void)dealloc
{
  [(THBodyHint *)self setAnchoredAttachmentPositions:0];
  [(THBodyHint *)self setFirstChildHint:0];
  [(THBodyHint *)self setLastChildHint:0];
  v3.receiver = self;
  v3.super_class = THBodyHint;
  [(THBodyHint *)&v3 dealloc];
}

- (void)setHints:(const void *)hints
{
  p_mHints = &self->mHints;
  if (p_mHints != hints)
  {
    sub_540F8(p_mHints, *hints, *(hints + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(hints + 1) - *hints) >> 4));
  }
}

- (vector<TSWPTargetHint,)hints
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_542A0(retstr, self->mHints.__begin_, self->mHints.__end_, 0xCCCCCCCCCCCCCCCDLL * ((self->mHints.__end_ - self->mHints.__begin_) >> 4));
}

- ($D6031A91289B01F4EEA92D3AF6491109)firstHint
{
  if (self->mHints.__end_ == self->mHints.__begin_)
  {
    return 0;
  }

  else
  {
    return self->mHints.__begin_;
  }
}

- ($D6031A91289B01F4EEA92D3AF6491109)lastHint
{
  end = self->mHints.__end_;
  if (end == self->mHints.__begin_)
  {
    return 0;
  }

  else
  {
    return (end - 80);
  }
}

- (void)offsetStartCharIndexBy:(int64_t)by
{
  begin = self->mHints.__begin_;
  v4 = self->mHints.__end_ - begin;
  if (v4)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 4);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = vdupq_n_s64(by);
    v7 = (begin + 48);
    do
    {
      v7[-1].i64[0] += by;
      *v7 = vaddq_s64(*v7, v6);
      v7 += 5;
      --v5;
    }

    while (v5);
  }
}

- (_NSRange)range
{
  begin = self->mHints.__begin_;
  end = self->mHints.__end_;
  if (end == begin)
  {
    location = NSInvalidRange[0];
    length = NSInvalidRange[1];
  }

  else
  {
    v6 = NSUnionRange(*(begin + 2), *(end - 3));
    length = v6.length;
    location = v6.location;
  }

  result.length = length;
  result.location = location;
  return result;
}

- (unint64_t)startAnchoredCharIndex
{
  begin = self->mHints.__begin_;
  if (self->mHints.__end_ == begin)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return *(begin + 7);
  }
}

- (_NSRange)anchoredRange
{
  begin = self->mHints.__begin_;
  end = self->mHints.__end_;
  if (end == begin)
  {
    location = NSInvalidRange[0];
    length = NSInvalidRange[1];
  }

  else
  {
    v6 = NSUnionRange(*(begin + 56), *(end - 24));
    length = v6.length;
    location = v6.location;
  }

  result.length = length;
  result.location = location;
  return result;
}

- (unint64_t)nextWidowPullsDownFromCharIndex
{
  lastHint = [(THBodyHint *)self lastHint];
  if (self->mHints.__end_ == self->mHints.__begin_ || lastHint == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return lastHint->var2;
  }
}

- (void)trimToCharIndex:(unint64_t)index inTarget:(id)target removeAutoNumberFootnoteCount:(unint64_t)count
{
  if (*(self->mHints.__begin_ + 4) >= index)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  end = self->mHints.__end_;
  if (*(end - 4) < index)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v8 = *(end - 6);
  if (v8 > index)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v8 = *(end - 6);
  }

  *(end - 5) = index - v8;
  *(end - 4) = index;
}

- (THBodyHint)initWithCoder:(id)coder
{
  v58.receiver = self;
  v58.super_class = THBodyHint;
  v4 = [(THBodyHint *)&v58 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
    objc_opt_class();
    [coder decodeObjectOfClasses:v6 forKey:@"anchoredPositionAttachments"];
    v4->mAnchoredAttachmentPositions = TSUDynamicCast();
    v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"codingSize"];
    if (v7)
    {
      [v7 CGSizeValue];
    }

    else
    {
      width = CGSizeZero.width;
      height = CGSizeZero.height;
    }

    v4->mSize.width = width;
    v4->mSize.height = height;
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v10, v11, v12, objc_opt_class(), 0];
    objc_opt_class();
    coderCopy = coder;
    [coder decodeObjectOfClasses:v13 forKey:@"hints"];
    v56 = TSUDynamicCast();
    v55 = [v56 count];
    if (v55 >= 1)
    {
      v14 = 0;
      v15 = NSArray_ptr;
      do
      {
        objc_opt_class();
        [v56 objectAtIndexedSubscript:v14];
        v16 = TSUDynamicCast();
        objc_opt_class();
        [v16 objectForKeyedSubscript:@"frameBounds"];
        v17 = TSUDynamicCast();
        if (v17)
        {
          [v17 CGRectValue];
          x = v18;
          y = v20;
          v23 = v22;
          v25 = v24;
        }

        else
        {
          x = CGRectZero.origin.x;
          y = CGRectZero.origin.y;
          v23 = CGRectZero.size.width;
          v25 = CGRectZero.size.height;
        }

        objc_opt_class();
        [v16 objectForKeyedSubscript:@"range"];
        v26 = TSUDynamicCast();
        if (v26)
        {
          rangeValue = [v26 rangeValue];
          v57 = v28;
        }

        else
        {
          rangeValue = 0;
          v57 = 0;
        }

        objc_opt_class();
        [v16 objectForKeyedSubscript:@"nextWidowPullsDownFromCharIndex"];
        v29 = TSUDynamicCast();
        if (v29)
        {
          unsignedIntegerValue = [v29 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue = 0;
        }

        objc_opt_class();
        [v16 objectForKeyedSubscript:@"anchoredRange"];
        v31 = TSUDynamicCast();
        if (v31)
        {
          rangeValue2 = [v31 rangeValue];
          v34 = v33;
        }

        else
        {
          rangeValue2 = 0;
          v34 = 0;
        }

        v35 = v15;
        objc_opt_class();
        [v16 objectForKeyedSubscript:@"columnCount"];
        v36 = TSUDynamicCast();
        if (v36)
        {
          unsignedIntegerValue2 = [v36 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue2 = 0;
        }

        end = v4->mHints.__end_;
        cap = v4->mHints.__cap_;
        if (end >= cap)
        {
          begin = v4->mHints.__begin_;
          v42 = end - begin;
          v43 = 0xCCCCCCCCCCCCCCCDLL * ((end - begin) >> 4);
          v44 = v43 + 1;
          if (v43 + 1 > 0x333333333333333)
          {
            sub_3A53C();
          }

          v45 = 0xCCCCCCCCCCCCCCCDLL * ((cap - begin) >> 4);
          if (2 * v45 > v44)
          {
            v44 = 2 * v45;
          }

          if (v45 >= 0x199999999999999)
          {
            v44 = 0x333333333333333;
          }

          if (v44)
          {
            sub_408CC(&v4->mHints, v44);
          }

          v46 = 80 * v43;
          *v46 = x;
          *(v46 + 8) = y;
          *(v46 + 16) = v23;
          *(v46 + 24) = v25;
          *(v46 + 32) = rangeValue;
          *(v46 + 40) = v57;
          *(v46 + 48) = unsignedIntegerValue;
          *(v46 + 56) = rangeValue2;
          *(v46 + 64) = v34;
          *(v46 + 72) = unsignedIntegerValue2;
          v40 = 80 * v43 + 80;
          v47 = v46 - v42;
          memcpy((v46 - v42), begin, v42);
          v48 = v4->mHints.__begin_;
          v4->mHints.__begin_ = v47;
          v4->mHints.__end_ = v40;
          v4->mHints.__cap_ = 0;
          if (v48)
          {
            operator delete(v48);
          }
        }

        else
        {
          *end = x;
          *(end + 1) = y;
          *(end + 2) = v23;
          *(end + 3) = v25;
          *(end + 4) = rangeValue;
          *(end + 5) = v57;
          *(end + 6) = unsignedIntegerValue;
          *(end + 7) = rangeValue2;
          v40 = (end + 80);
          *(end + 8) = v34;
          *(end + 9) = unsignedIntegerValue2;
        }

        v4->mHints.__end_ = v40;
        ++v14;
        v15 = v35;
      }

      while (v55 != v14);
    }

    v49 = NSClassFromString(@"TSDDefaultHint");
    v50 = objc_opt_class();
    v51 = objc_opt_class();
    v52 = [NSSet setWithObjects:v49, v50, v51, objc_opt_class(), 0];
    v4->mFirstChildHint = [coderCopy decodeObjectOfClasses:v52 forKey:@"firstChildHint"];
    v4->mLastChildHint = [coderCopy decodeObjectOfClasses:v52 forKey:@"lastChildHint"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[THBodyHint anchoredAttachmentPositions](self forKey:{"anchoredAttachmentPositions"), @"anchoredPositionAttachments"}];
  [(THBodyHint *)self size];
  [coder encodeObject:+[NSValue valueWithCGSize:](NSValue forKey:{"valueWithCGSize:"), @"codingSize"}];
  v5 = [[NSMutableArray alloc] initWithCapacity:0xCCCCCCCCCCCCCCCDLL * ((self->mHints.__end_ - self->mHints.__begin_) >> 4)];
  begin = self->mHints.__begin_;
  if (self->mHints.__end_ != begin)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = (begin + v7);
      v10[0] = @"frameBounds";
      v11[0] = [NSValue valueWithCGRect:*(begin + v7), *(begin + v7 + 8), *(begin + v7 + 16), *(begin + v7 + 24)];
      v10[1] = @"range";
      v11[1] = [NSValue valueWithRange:v9[4], v9[5]];
      v10[2] = @"nextWidowPullsDownFromCharIndex";
      v11[2] = [NSNumber numberWithUnsignedInteger:v9[6]];
      v10[3] = @"anchoredRange";
      v11[3] = [NSValue valueWithRange:v9[7], v9[8]];
      v10[4] = @"columnCount";
      v11[4] = [NSNumber numberWithUnsignedInteger:v9[9]];
      [v5 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v11, v10, 5)}];
      ++v8;
      begin = self->mHints.__begin_;
      v7 += 80;
    }

    while (v8 < 0xCCCCCCCCCCCCCCCDLL * ((self->mHints.__end_ - begin) >> 4));
  }

  [coder encodeObject:v5 forKey:@"hints"];

  [coder encodeObject:self->mFirstChildHint forKey:@"firstChildHint"];
  [coder encodeObject:self->mLastChildHint forKey:@"lastChildHint"];
}

- (CGSize)size
{
  width = self->mSize.width;
  height = self->mSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

@end