@interface TUIGradientLayout
- (TUIGradientLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation TUIGradientLayout

- (TUIGradientLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  v8.receiver = self;
  v8.super_class = TUIGradientLayout;
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
  contextCopy = context;
  v6 = [[_TUIGradientStyler alloc] initWithLayout:self];
  v7 = [[_TUIGradientContainerLayerConfig alloc] initWithStyle:v6];
  v8 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v7 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  v9 = [(TUILayout *)self box];
  identifier = [v9 identifier];
  [(TUIRenderModelLayer *)v8 setIdentifier:identifier];

  [(TUILayout *)self renderModelSizeWithContext:contextCopy];
  v12 = v11;
  v14 = v13;

  [(TUIRenderModelLayer *)v8 setSize:v12, v14];
  return v8;
}

@end