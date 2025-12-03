@interface _TUIVBoxDynamicArrayLayout
- (_TUIVBoxDynamicArrayLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (_TUIVBoxItemLayoutSummary)summaryForRange:(_NSRange)range;
- (id).cxx_construct;
- (void)_updateIndex:(unint64_t)index width:(double)width height:(double)height;
- (void)enumerateChildren:(id)children;
- (void)layoutDeleteAtIndex:(unint64_t)index;
- (void)layoutInsertAtIndex:(unint64_t)index;
- (void)layoutMoveFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)layoutUpdateWindowRange:(_NSRange)range;
- (void)updateSummariesFromChildren;
@end

@implementation _TUIVBoxDynamicArrayLayout

- (_TUIVBoxDynamicArrayLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  modelCopy = model;
  parentCopy = parent;
  controllerCopy = controller;
  v23.receiver = self;
  v23.super_class = _TUIVBoxDynamicArrayLayout;
  v11 = [(TUILayoutContainer *)&v23 initWithModel:modelCopy parent:parentCopy controller:controllerCopy];
  if (v11)
  {
    [modelCopy estimatedWidth];
    [modelCopy estimatedHeight];
    v22.n128_u64[1] = v13;
    for (i = [modelCopy windowCount]; i; --i)
    {
      sub_57480(v11 + 6, *(v11 + 7), &v22);
    }

    v15 = [(TUILayout *)[_TUIVBoxDynamicSpacerLayout alloc] initWithModel:0 parent:v11 controller:controllerCopy];
    v16 = *(v11 + 11);
    *(v11 + 11) = v15;

    v17 = [(TUILayout *)[_TUIVBoxDynamicSpacerLayout alloc] initWithModel:0 parent:v11 controller:controllerCopy];
    v18 = *(v11 + 12);
    *(v11 + 12) = v17;

    windowRange = [modelCopy windowRange];
    [v11 layoutUpdateWindowRange:{windowRange, v20}];
  }

  return v11;
}

- (void)enumerateChildren:(id)children
{
  childrenCopy = children;
  childrenCopy[2](childrenCopy, self->_preRangeSpacer);
  v5.receiver = self;
  v5.super_class = _TUIVBoxDynamicArrayLayout;
  [(TUILayoutContainer *)&v5 enumerateChildren:childrenCopy];
  childrenCopy[2](childrenCopy, self->_postRangeSpacer);
}

- (void)_updateIndex:(unint64_t)index width:(double)width height:(double)height
{
  v5 = &self->_summaries.__begin_[index];
  v5->width = width;
  v5->height = height;
}

- (void)layoutUpdateWindowRange:(_NSRange)range
{
  self->_windowRange = range;
  [(_TUIVBoxDynamicSpacerLayout *)self->_preRangeSpacer setRange:0, range.location];
  postRangeSpacer = self->_postRangeSpacer;

  [(_TUIVBoxDynamicSpacerLayout *)postRangeSpacer setRange:?];
}

- (void)layoutDeleteAtIndex:(unint64_t)index
{
  p_summaries = &self->_summaries;
  begin = self->_summaries.__begin_;
  end = self->_summaries.__end_;
  v6 = &begin[index];
  v7 = (end - &v6[1]);
  if (end != &v6[1])
  {
    memmove(&begin[index], &v6[1], end - &v6[1]);
  }

  p_summaries->__end_ = &v7[v6];
}

- (void)layoutInsertAtIndex:(unint64_t)index
{
  model = [(TUILayoutContainer *)self model];
  [model estimatedWidth];
  v9.n128_u64[0] = v6;

  model2 = [(TUILayoutContainer *)self model];
  [model2 estimatedHeight];
  v9.n128_u64[1] = v8;

  sub_57480(&self->_summaries.__begin_, &self->_summaries.__begin_[index], &v9);
}

- (void)layoutMoveFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  p_summaries = &self->_summaries;
  begin = self->_summaries.__begin_;
  end = self->_summaries.__end_;
  v8 = &begin[index];
  v10 = *v8;
  v9 = end - &v8[1];
  if (end != &v8[1])
  {
    memmove(&begin[index], &v8[1], end - &v8[1]);
    begin = p_summaries->__begin_;
  }

  p_summaries->__end_ = (v8 + v9);
  sub_57480(p_summaries, &begin[toIndex], &v10);
}

- (void)updateSummariesFromChildren
{
  begin = self->_summaries.__begin_;
  location = self->_windowRange.location;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  containers = [(TUILayoutContainer *)self containers];
  v5 = [containers countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(containers);
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
      v5 = [containers countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }
}

- (_TUIVBoxItemLayoutSummary)summaryForRange:(_NSRange)range
{
  v3 = 0.0;
  v4 = 0.0;
  if (16 * range.location != 16 * (range.location + range.length))
  {
    begin = self->_summaries.__begin_;
    v6 = &begin[range.location];
    do
    {
      width = v6->width;
      height = v6->height;
      ++v6;
      v3 = v3 + height;
      v4 = fmax(v4, width);
    }

    while (v6 != &begin[range.location + range.length]);
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