@interface TUIVisualEffectLayout
- (TUIVisualEffectLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation TUIVisualEffectLayout

- (TUIVisualEffectLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  v8.receiver = self;
  v8.super_class = TUIVisualEffectLayout;
  v5 = [(TUILayout *)&v8 initWithModel:model parent:parent controller:controller];
  v6 = v5;
  if (v5)
  {
    [(TUILayout *)v5 setSpecifiedWidthComputeInherited:1];
    [(TUILayout *)v6 setSpecifiedHeightComputeInherited:1];
  }

  return v6;
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  if (kind < 4)
  {
    return 0;
  }

  contextCopy = context;
  v6 = [(TUILayout *)self box];
  v7 = -[_TUIVisualEffectBoxStyler initWithBlurStyle:]([_TUIVisualEffectBoxStyler alloc], "initWithBlurStyle:", [v6 blurStyle]);
  v8 = [(TUILayout *)self box];
  identifier = [v8 identifier];
  v10 = [TUIStyledView renderModelWithStyle:v7 identifier:identifier];

  [(TUILayout *)self renderModelSizeWithContext:contextCopy];
  v12 = v11;
  v14 = v13;

  [v10 setSize:{v12, v14}];
  return v10;
}

@end