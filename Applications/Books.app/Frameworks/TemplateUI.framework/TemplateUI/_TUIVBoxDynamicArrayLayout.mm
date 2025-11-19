@interface _TUIVBoxDynamicArrayLayout
- (_TUIVBoxDynamicArrayLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5;
- (_TUIVBoxItemLayoutSummary)summaryForRange:(_NSRange)a3;
- (id).cxx_construct;
- (void)_updateIndex:(unint64_t)a3 width:(double)a4 height:(double)a5;
- (void)enumerateChildren:(id)a3;
- (void)layoutDeleteAtIndex:(unint64_t)a3;
- (void)layoutInsertAtIndex:(unint64_t)a3;
- (void)layoutMoveFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (void)layoutUpdateWindowRange:(_NSRange)a3;
- (void)updateSummariesFromChildren;
@end

@implementation _TUIVBoxDynamicArrayLayout

- (_TUIVBoxDynamicArrayLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = _TUIVBoxDynamicArrayLayout;
  v11 = [(TUILayoutContainer *)&v23 initWithModel:v8 parent:v9 controller:v10];
  if (v11)
  {
    [v8 estimatedWidth];
    [v8 estimatedHeight];
    v22.n128_u64[1] = v13;
    for (i = [v8 windowCount]; i; --i)
    {
      sub_57480(v11 + 6, *(v11 + 7), &v22);
    }

    v15 = [(TUILayout *)[_TUIVBoxDynamicSpacerLayout alloc] initWithModel:0 parent:v11 controller:v10];
    v16 = *(v11 + 11);
    *(v11 + 11) = v15;

    v17 = [(TUILayout *)[_TUIVBoxDynamicSpacerLayout alloc] initWithModel:0 parent:v11 controller:v10];
    v18 = *(v11 + 12);
    *(v11 + 12) = v17;

    v19 = [v8 windowRange];
    [v11 layoutUpdateWindowRange:{v19, v20}];
  }

  return v11;
}

- (void)enumerateChildren:(id)a3
{
  v4 = a3;
  v4[2](v4, self->_preRangeSpacer);
  v5.receiver = self;
  v5.super_class = _TUIVBoxDynamicArrayLayout;
  [(TUILayoutContainer *)&v5 enumerateChildren:v4];
  v4[2](v4, self->_postRangeSpacer);
}

- (void)_updateIndex:(unint64_t)a3 width:(double)a4 height:(double)a5
{
  v5 = &self->_summaries.__begin_[a3];
  v5->width = a4;
  v5->height = a5;
}

- (void)layoutUpdateWindowRange:(_NSRange)a3
{
  self->_windowRange = a3;
  [(_TUIVBoxDynamicSpacerLayout *)self->_preRangeSpacer setRange:0, a3.location];
  postRangeSpacer = self->_postRangeSpacer;

  [(_TUIVBoxDynamicSpacerLayout *)postRangeSpacer setRange:?];
}

- (void)layoutDeleteAtIndex:(unint64_t)a3
{
  p_summaries = &self->_summaries;
  begin = self->_summaries.__begin_;
  end = self->_summaries.__end_;
  v6 = &begin[a3];
  v7 = (end - &v6[1]);
  if (end != &v6[1])
  {
    memmove(&begin[a3], &v6[1], end - &v6[1]);
  }

  p_summaries->__end_ = &v7[v6];
}

- (void)layoutInsertAtIndex:(unint64_t)a3
{
  v5 = [(TUILayoutContainer *)self model];
  [v5 estimatedWidth];
  v9.n128_u64[0] = v6;

  v7 = [(TUILayoutContainer *)self model];
  [v7 estimatedHeight];
  v9.n128_u64[1] = v8;

  sub_57480(&self->_summaries.__begin_, &self->_summaries.__begin_[a3], &v9);
}

- (void)layoutMoveFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  p_summaries = &self->_summaries;
  begin = self->_summaries.__begin_;
  end = self->_summaries.__end_;
  v8 = &begin[a3];
  v10 = *v8;
  v9 = end - &v8[1];
  if (end != &v8[1])
  {
    memmove(&begin[a3], &v8[1], end - &v8[1]);
    begin = p_summaries->__begin_;
  }

  p_summaries->__end_ = (v8 + v9);
  sub_57480(p_summaries, &begin[a4], &v10);
}

- (void)updateSummariesFromChildren
{
  begin = self->_summaries.__begin_;
  location = self->_windowRange.location;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(TUILayoutContainer *)self containers];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    p_width = &begin[location].width;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v15 = 0;
        v16 = &v15;
        v17 = 0x2020000000;
        v18 = 0;
        v11 = 0;
        v12 = &v11;
        v13 = 0x2020000000;
        v14 = 0;
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_57B10;
        v10[3] = &unk_25F4D8;
        v10[4] = &v15;
        v10[5] = &v11;
        [v9 enumerateChildren:v10];
        *p_width = v16[3];
        p_width[1] = v12[3];
        p_width += 2;
        _Block_object_dispose(&v11, 8);
        _Block_object_dispose(&v15, 8);
        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }
}

- (_TUIVBoxItemLayoutSummary)summaryForRange:(_NSRange)a3
{
  v3 = 0.0;
  v4 = 0.0;
  if (16 * a3.location != 16 * (a3.location + a3.length))
  {
    begin = self->_summaries.__begin_;
    v6 = &begin[a3.location];
    do
    {
      width = v6->width;
      height = v6->height;
      ++v6;
      v3 = v3 + height;
      v4 = fmax(v4, width);
    }

    while (v6 != &begin[a3.location + a3.length]);
  }

  result.height = v3;
  result.width = v4;
  return result;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  return self;
}

@end