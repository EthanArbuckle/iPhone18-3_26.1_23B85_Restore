@interface _TUIHBoxDynamicArrayLayout
- (_TUIHBoxDynamicArrayLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (_TUIHBoxItemLayoutSummary)summaryForRange:(_NSRange)range;
- (id).cxx_construct;
- (void)_updateIndex:(unint64_t)index width:(double)width height:(double)height heightAbovePivot:(double)pivot;
- (void)enumerateChildren:(id)children;
- (void)layoutDeleteAtIndex:(unint64_t)index;
- (void)layoutInsertAtIndex:(unint64_t)index;
- (void)layoutMoveFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)layoutUpdateWindowRange:(_NSRange)range;
- (void)updateSummariesFromChildren;
@end

@implementation _TUIHBoxDynamicArrayLayout

- (_TUIHBoxDynamicArrayLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  modelCopy = model;
  parentCopy = parent;
  controllerCopy = controller;
  v25.receiver = self;
  v25.super_class = _TUIHBoxDynamicArrayLayout;
  v11 = [(TUILayoutContainer *)&v25 initWithModel:modelCopy parent:parentCopy controller:controllerCopy];
  if (v11)
  {
    [modelCopy estimatedWidth];
    v23.n128_u64[0] = v12;
    [modelCopy estimatedHeight];
    v23.n128_u64[1] = v13;
    [modelCopy estimatedHeightAbovePivot];
    v24 = v14;
    for (i = [modelCopy windowCount]; i; --i)
    {
      sub_16C560(v11 + 6, *(v11 + 7), &v23);
    }

    v16 = [(TUILayout *)[_TUIHBoxDynamicSpacerLayout alloc] initWithModel:0 parent:v11 controller:controllerCopy];
    v17 = *(v11 + 11);
    *(v11 + 11) = v16;

    v18 = [(TUILayout *)[_TUIHBoxDynamicSpacerLayout alloc] initWithModel:0 parent:v11 controller:controllerCopy];
    v19 = *(v11 + 12);
    *(v11 + 12) = v18;

    windowRange = [modelCopy windowRange];
    [v11 layoutUpdateWindowRange:{windowRange, v21}];
  }

  return v11;
}

- (void)enumerateChildren:(id)children
{
  childrenCopy = children;
  childrenCopy[2](childrenCopy, self->_preRangeSpacer);
  v5.receiver = self;
  v5.super_class = _TUIHBoxDynamicArrayLayout;
  [(TUILayoutContainer *)&v5 enumerateChildren:childrenCopy];
  childrenCopy[2](childrenCopy, self->_postRangeSpacer);
}

- (void)_updateIndex:(unint64_t)index width:(double)width height:(double)height heightAbovePivot:(double)pivot
{
  v6 = &self->_summaries.__begin_[index];
  v6->width = width;
  v6->height = height;
  v6->heightAbovePivot = pivot;
}

- (void)layoutUpdateWindowRange:(_NSRange)range
{
  self->_windowRange = range;
  [(_TUIHBoxDynamicSpacerLayout *)self->_preRangeSpacer setRange:0, range.location];
  postRangeSpacer = self->_postRangeSpacer;

  [(_TUIHBoxDynamicSpacerLayout *)postRangeSpacer setRange:?];
}

- (void)layoutDeleteAtIndex:(unint64_t)index
{
  p_summaries = &self->_summaries;
  end = self->_summaries.__end_;
  v5 = &self->_summaries.__begin_[index];
  v6 = end - &v5[1];
  if (end != &v5[1])
  {
    memmove(&self->_summaries.__begin_[index], &v5[1], end - &v5[1]);
  }

  p_summaries->__end_ = (v5 + v6);
}

- (void)layoutInsertAtIndex:(unint64_t)index
{
  model = [(TUILayoutContainer *)self model];
  [model estimatedWidth];
  v11.n128_u64[0] = v6;

  model2 = [(TUILayoutContainer *)self model];
  [model2 estimatedHeight];
  v11.n128_u64[1] = v8;

  model3 = [(TUILayoutContainer *)self model];
  [model3 estimatedHeightAbovePivot];
  v12 = v10;

  sub_16C560(&self->_summaries.__begin_, &self->_summaries.__begin_[index], &v11);
}

- (void)layoutMoveFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  p_summaries = &self->_summaries;
  begin = self->_summaries.__begin_;
  end = self->_summaries.__end_;
  v8 = &begin[index];
  v9 = *&v8->width;
  heightAbovePivot = v8->heightAbovePivot;
  v11 = v9;
  v10 = (end - &v8[1]);
  if (end != &v8[1])
  {
    memmove(&begin[index], &v8[1], end - &v8[1]);
    begin = p_summaries->__begin_;
  }

  p_summaries->__end_ = &v10[v8];
  sub_16C560(p_summaries, &begin[toIndex], &v11);
}

- (void)updateSummariesFromChildren
{
  begin = self->_summaries.__begin_;
  location = self->_windowRange.location;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(TUILayoutContainer *)self containers];
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    p_width = &begin[location].width;
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        v19 = 0;
        v20 = &v19;
        v21 = 0x2020000000;
        v22 = 0;
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
        v10[2] = sub_16CCDC;
        v10[3] = &unk_263520;
        v10[4] = &v19;
        v10[5] = &v15;
        v10[6] = &v11;
        [v8 enumerateChildren:v10];
        *p_width = v20[3];
        p_width[1] = v16[3];
        p_width[2] = v12[3];
        p_width += 3;
        _Block_object_dispose(&v11, 8);
        _Block_object_dispose(&v15, 8);
        _Block_object_dispose(&v19, 8);
        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }
}

- (_TUIHBoxItemLayoutSummary)summaryForRange:(_NSRange)range
{
  if (range.length)
  {
    v3 = &self->_summaries.__begin_[range.location];
    v4 = &v3[range.length];
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      v5 = v5 + v3->width;
      v6 = fmax(v6, v3->height);
      v7 = fmax(v7, v3->heightAbovePivot);
      ++v3;
    }

    while (v3 != v4);
  }

  else
  {
    v7 = 0.0;
    v6 = 0.0;
    v5 = 0.0;
  }

  result.heightAbovePivot = v7;
  result.height = v6;
  result.width = v5;
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