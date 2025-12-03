@interface TUISmartGridLayout
- (double)columnLayoutProviderWidthForColumnSpan:(unint64_t)span;
- (unint64_t)columnLayoutProviderColumnSpanForColumnSpan:(id)span;
- (unint64_t)columnLayoutProviderColumnsForContainerFraction:(double)fraction;
- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models;
- (void)computeLayout;
@end

@implementation TUISmartGridLayout

- (void)computeLayout
{
  if (!self->_layoutManager)
  {
    v3 = [(TUILayout *)self box];
    layoutMode = [v3 layoutMode];

    if (layoutMode <= 1)
    {
      if (!layoutMode)
      {
        v5 = TUISmartGridSwooshLayoutManager;
        goto LABEL_13;
      }

      if (layoutMode == (&dword_0 + 1))
      {
        v5 = TUISmartGridGridLayoutManager;
        goto LABEL_13;
      }
    }

    else
    {
      if (layoutMode == (&dword_0 + 2))
      {
        v6 = [TUISmartGridGridLayoutManager alloc];
        v7 = [(TUILayout *)self box];
        content = [v7 content];
        v9 = [(TUISmartGridGridLayoutManager *)v6 initWithContent:content];

        [(TUISmartGridGridLayoutManager *)v9 setList:1];
        layoutManager = self->_layoutManager;
        self->_layoutManager = v9;
LABEL_14:

        goto LABEL_15;
      }

      if (layoutMode == (&dword_0 + 3))
      {
        v5 = TUISmartGridOverlapWithOffsetsLayoutManager;
        goto LABEL_13;
      }

      if (layoutMode == &dword_4)
      {
        v5 = TUISmartGridFlexRowLayoutManager;
LABEL_13:
        v11 = [v5 alloc];
        layoutManager = [(TUILayout *)self box];
        content2 = [layoutManager content];
        v13 = [v11 initWithContent:content2];
        v14 = self->_layoutManager;
        self->_layoutManager = v13;

        goto LABEL_14;
      }
    }
  }

LABEL_15:
  [(TUILayout *)self computeWidth];
  v16 = v15;
  v37 = [(TUILayout *)self box];
  controller = [(TUILayout *)self controller];
  v18 = [(TUILayout *)self box];
  scrollBox = [v18 scrollBox];
  v20 = [controller layoutForModel:scrollBox];

  controller2 = [(TUILayout *)self controller];
  v22 = [(TUILayout *)self box];
  content3 = [v22 content];
  v24 = [controller2 layoutForModel:content3];

  [v20 containingWidth];
  v26 = v25;
  [v24 containingWidth];
  v28 = v26 - v27;
  v29 = [_TUISmartGridLayoutConfiguration alloc];
  [(TUILayout *)self computeHeight];
  v31 = [(_TUISmartGridLayoutConfiguration *)v29 initWithWidth:v37 height:v16 box:v30];
  [(TUISmartGridLayoutManager *)self->_layoutManager setConfiguration:v31];
  [objc_opt_class() configureScrollLayout:v20 configuration:v31];
  [objc_opt_class() configureContentLayout:v24 configuration:v31];
  [v20 containingWidth];
  v33 = v32;
  [v24 containingWidth];
  v35 = v34;
  [v20 validateLayout];
  v36 = objc_opt_respondsToSelector();
  if (v28 != v33 - v35 || (v36 & 1) != 0)
  {
    [v20 invalidateRenderModel];
  }

  [(TUISmartGridLayoutManager *)self->_layoutManager layoutSize];
  [(TUILayout *)self setComputedNaturalSize:?];
}

- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models
{
  v19.receiver = self;
  v19.super_class = TUISmartGridLayout;
  v10 = *&transform->c;
  v16 = *&transform->a;
  v17 = v10;
  v18 = *&transform->tx;
  modelsCopy = models;
  contextCopy = context;
  [(TUILayout *)&v19 appendChildRenderModelCompatibleWithKind:kind context:contextCopy transform:&v16 toModels:modelsCopy];
  layoutManager = self->_layoutManager;
  v14 = [(TUILayout *)self box:v16];
  v15 = *&transform->c;
  v16 = *&transform->a;
  v17 = v15;
  v18 = *&transform->tx;
  [(TUISmartGridLayoutManager *)layoutManager appendNonScrollableAdornmentRenderModelsCompatibleWithKind:kind transform:&v16 context:contextCopy box:v14 toModels:modelsCopy];
}

- (double)columnLayoutProviderWidthForColumnSpan:(unint64_t)span
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return NAN;
  }

  layoutManager = self->_layoutManager;

  [(TUISmartGridLayoutManager *)layoutManager widthForColumnSpan:span];
  return result;
}

- (unint64_t)columnLayoutProviderColumnSpanForColumnSpan:(id)span
{
  layoutManager = self->_layoutManager;
  spanCopy = span;
  configuration = [(TUISmartGridLayoutManager *)layoutManager configuration];
  v6 = [configuration unsignedIntegerWithSpec:spanCopy];

  return v6;
}

- (unint64_t)columnLayoutProviderColumnsForContainerFraction:(double)fraction
{
  configuration = [(TUISmartGridLayoutManager *)self->_layoutManager configuration];
  [configuration width];
  v7 = v6;
  [(TUISmartGridLayoutManager *)self->_layoutManager computedColumnSpacing];
  v9 = v8 + v7 * fraction;
  [(TUISmartGridLayoutManager *)self->_layoutManager computedColumnWidth];
  v11 = v10;
  [(TUISmartGridLayoutManager *)self->_layoutManager computedColumnSpacing];
  v13 = vcvtpd_u64_f64(v9 / (v11 + v12));

  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= [(TUISmartGridLayoutManager *)self->_layoutManager computedColumns])
  {
    return v14;
  }

  layoutManager = self->_layoutManager;

  return [(TUISmartGridLayoutManager *)layoutManager computedColumns];
}

@end