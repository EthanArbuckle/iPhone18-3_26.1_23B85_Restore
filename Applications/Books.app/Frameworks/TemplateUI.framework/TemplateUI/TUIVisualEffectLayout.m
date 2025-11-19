@interface TUIVisualEffectLayout
- (TUIVisualEffectLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5;
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
@end

@implementation TUIVisualEffectLayout

- (TUIVisualEffectLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5
{
  v8.receiver = self;
  v8.super_class = TUIVisualEffectLayout;
  v5 = [(TUILayout *)&v8 initWithModel:a3 parent:a4 controller:a5];
  v6 = v5;
  if (v5)
  {
    [(TUILayout *)v5 setSpecifiedWidthComputeInherited:1];
    [(TUILayout *)v6 setSpecifiedHeightComputeInherited:1];
  }

  return v6;
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  if (a3 < 4)
  {
    return 0;
  }

  v5 = a4;
  v6 = [(TUILayout *)self box];
  v7 = -[_TUIVisualEffectBoxStyler initWithBlurStyle:]([_TUIVisualEffectBoxStyler alloc], "initWithBlurStyle:", [v6 blurStyle]);
  v8 = [(TUILayout *)self box];
  v9 = [v8 identifier];
  v10 = [TUIStyledView renderModelWithStyle:v7 identifier:v9];

  [(TUILayout *)self renderModelSizeWithContext:v5];
  v12 = v11;
  v14 = v13;

  [v10 setSize:{v12, v14}];
  return v10;
}

@end