@interface TUISmartGridLayout
- (double)columnLayoutProviderWidthForColumnSpan:(unint64_t)a3;
- (unint64_t)columnLayoutProviderColumnSpanForColumnSpan:(id)a3;
- (unint64_t)columnLayoutProviderColumnsForContainerFraction:(double)a3;
- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 toModels:(id)a6;
- (void)computeLayout;
@end

@implementation TUISmartGridLayout

- (void)computeLayout
{
  if (!self->_layoutManager)
  {
    v3 = [(TUILayout *)self box];
    v4 = [v3 layoutMode];

    if (v4 <= 1)
    {
      if (!v4)
      {
        v5 = TUISmartGridSwooshLayoutManager;
        goto LABEL_13;
      }

      if (v4 == (&dword_0 + 1))
      {
        v5 = TUISmartGridGridLayoutManager;
        goto LABEL_13;
      }
    }

    else
    {
      if (v4 == (&dword_0 + 2))
      {
        v6 = [TUISmartGridGridLayoutManager alloc];
        v7 = [(TUILayout *)self box];
        v8 = [v7 content];
        v9 = [(TUISmartGridGridLayoutManager *)v6 initWithContent:v8];

        [(TUISmartGridGridLayoutManager *)v9 setList:1];
        layoutManager = self->_layoutManager;
        self->_layoutManager = v9;
LABEL_14:

        goto LABEL_15;
      }

      if (v4 == (&dword_0 + 3))
      {
        v5 = TUISmartGridOverlapWithOffsetsLayoutManager;
        goto LABEL_13;
      }

      if (v4 == &dword_4)
      {
        v5 = TUISmartGridFlexRowLayoutManager;
LABEL_13:
        v11 = [v5 alloc];
        layoutManager = [(TUILayout *)self box];
        v12 = [layoutManager content];
        v13 = [v11 initWithContent:v12];
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
  v17 = [(TUILayout *)self controller];
  v18 = [(TUILayout *)self box];
  v19 = [v18 scrollBox];
  v20 = [v17 layoutForModel:v19];

  v21 = [(TUILayout *)self controller];
  v22 = [(TUILayout *)self box];
  v23 = [v22 content];
  v24 = [v21 layoutForModel:v23];

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

- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 toModels:(id)a6
{
  v19.receiver = self;
  v19.super_class = TUISmartGridLayout;
  v10 = *&a5->c;
  v16 = *&a5->a;
  v17 = v10;
  v18 = *&a5->tx;
  v11 = a6;
  v12 = a4;
  [(TUILayout *)&v19 appendChildRenderModelCompatibleWithKind:a3 context:v12 transform:&v16 toModels:v11];
  layoutManager = self->_layoutManager;
  v14 = [(TUILayout *)self box:v16];
  v15 = *&a5->c;
  v16 = *&a5->a;
  v17 = v15;
  v18 = *&a5->tx;
  [(TUISmartGridLayoutManager *)layoutManager appendNonScrollableAdornmentRenderModelsCompatibleWithKind:a3 transform:&v16 context:v12 box:v14 toModels:v11];
}

- (double)columnLayoutProviderWidthForColumnSpan:(unint64_t)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return NAN;
  }

  layoutManager = self->_layoutManager;

  [(TUISmartGridLayoutManager *)layoutManager widthForColumnSpan:a3];
  return result;
}

- (unint64_t)columnLayoutProviderColumnSpanForColumnSpan:(id)a3
{
  layoutManager = self->_layoutManager;
  v4 = a3;
  v5 = [(TUISmartGridLayoutManager *)layoutManager configuration];
  v6 = [v5 unsignedIntegerWithSpec:v4];

  return v6;
}

- (unint64_t)columnLayoutProviderColumnsForContainerFraction:(double)a3
{
  v5 = [(TUISmartGridLayoutManager *)self->_layoutManager configuration];
  [v5 width];
  v7 = v6;
  [(TUISmartGridLayoutManager *)self->_layoutManager computedColumnSpacing];
  v9 = v8 + v7 * a3;
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