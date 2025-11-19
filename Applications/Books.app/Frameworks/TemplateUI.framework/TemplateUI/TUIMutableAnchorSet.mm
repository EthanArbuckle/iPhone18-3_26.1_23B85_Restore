@interface TUIMutableAnchorSet
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendLogicalScrollAnchor:(id)a3 withOffset:(double)a4;
- (void)appendScrollAnchor:(double)a3;
- (void)appendTriggerAnchorWithOffset:(double)a3 trigger:(id)a4 axis:(unint64_t)a5;
- (void)finalizeWithContentsScale:(double)a3;
@end

@implementation TUIMutableAnchorSet

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUIAnchorSet alloc];

  return [(TUIAnchorSet *)v4 initWithAnchorSet:self];
}

- (void)finalizeWithContentsScale:(double)a3
{
  begin = self->super._verticalTriggerAnchors.__begin_;
  end = self->super._verticalTriggerAnchors.__end_;
  v7 = 126 - 2 * __clz((end - begin) >> 4);
  if (end == begin)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  sub_141698(begin, end, v8, 1);
  v9 = self->super._horizontalTriggerAnchors.__begin_;
  v10 = self->super._horizontalTriggerAnchors.__end_;
  v11 = 126 - 2 * __clz((v10 - v9) >> 4);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  sub_141698(v9, v10, v12, 1);
  v14 = self->super._logicalScrollAnchors.__begin_;
  v13 = self->super._logicalScrollAnchors.__end_;
  if (v14 != v13)
  {
    do
    {
      *v14 = TUIFloatRoundedForScale(*v14, a3);
      v14 += 2;
      v13 = self->super._logicalScrollAnchors.__end_;
    }

    while (v14 != v13);
    v14 = self->super._logicalScrollAnchors.__begin_;
  }

  v15 = 126 - 2 * __clz((v13 - v14) >> 4);
  if (v13 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  sub_142608(v14, v13, v16, 1);
  std::__sort<std::__less<double,double> &,double *>();
}

- (void)appendScrollAnchor:(double)a3
{
  [(TUIAnchorSet *)self offset];
  v6 = a3 - v5 + self->_translationOffset;
  end = self->super._scrollAnchors.__end_;
  cap = self->super._scrollAnchors.__cap_;
  if (end >= cap)
  {
    begin = self->super._scrollAnchors.__begin_;
    v11 = end - begin;
    v12 = end - begin;
    v13 = v12 + 1;
    if ((v12 + 1) >> 61)
    {
      sub_4050();
    }

    v14 = cap - begin;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    v15 = v14 >= 0x7FFFFFFFFFFFFFF8;
    v16 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v15)
    {
      v16 = v13;
    }

    if (v16)
    {
      sub_65004(&self->super._scrollAnchors, v16);
    }

    v17 = end - begin;
    v18 = (8 * v12);
    v19 = (8 * v12 - 8 * v17);
    *v18 = v6;
    v9 = v18 + 1;
    memcpy(v19, begin, v11);
    v20 = self->super._scrollAnchors.__begin_;
    self->super._scrollAnchors.__begin_ = v19;
    self->super._scrollAnchors.__end_ = v9;
    self->super._scrollAnchors.__cap_ = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *end = v6;
    v9 = end + 1;
  }

  self->super._scrollAnchors.__end_ = v9;
}

- (void)appendTriggerAnchorWithOffset:(double)a3 trigger:(id)a4 axis:(unint64_t)a5
{
  v8 = a4;
  v10 = self->_translationOffset + a3;
  v11 = v8;
  if (a5 == 2)
  {
    v9 = v8;
    sub_141160(&self->super._verticalTriggerAnchors.__begin_, &v10);
  }

  else
  {
    v9 = v8;
    sub_141160(&self->super._horizontalTriggerAnchors.__begin_, &v10);
  }
}

- (void)appendLogicalScrollAnchor:(id)a3 withOffset:(double)a4
{
  v6 = a3;
  v8 = self->_translationOffset + a4;
  v9 = v6;
  v7 = v6;
  sub_14123C(&self->super._logicalScrollAnchors.__begin_, &v8);
}

@end