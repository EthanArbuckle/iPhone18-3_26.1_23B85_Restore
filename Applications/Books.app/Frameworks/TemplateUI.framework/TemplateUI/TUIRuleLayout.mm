@interface TUIRuleLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
- (void)computeLayout;
@end

@implementation TUIRuleLayout

- (void)computeLayout
{
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  if (layoutAncestor)
  {
    while (1)
    {
      v16 = layoutAncestor;
      if (objc_opt_respondsToSelector())
      {
        break;
      }

      layoutAncestor2 = [v16 layoutAncestor];

      layoutAncestor = layoutAncestor2;
      if (!layoutAncestor2)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v16 = 0;
  }

  v5 = [(TUILayout *)self box];
  axis = [v5 axis];

  if (axis || (axis = [v16 ruleLayoutAxis]) != 0)
  {
    if (axis == &dword_0 + 2)
    {
      controller = [(TUILayout *)self controller];
      [controller contentsScale];
      v8 = 1.0 / v14;
      [(TUILayout *)self computeHeight];
      v7 = v15;
    }

    else
    {
      v7 = 0.0;
      v8 = 0.0;
      if (axis != &dword_0 + 1)
      {
        goto LABEL_13;
      }

      [(TUILayout *)self computeWidth];
      v8 = v9;
      controller = [(TUILayout *)self controller];
      [controller contentsScale];
      v7 = 1.0 / v11;
    }
  }

  else
  {
    [(TUILayout *)self computeWidth];
    v8 = v12;
    [(TUILayout *)self computeHeight];
    v7 = v13;
  }

LABEL_13:
  [(TUILayout *)self setComputedNaturalSize:v8, v7];
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  v6 = [_TUIRuleLayerConfig alloc];
  v7 = [(TUILayout *)self box];
  color = [v7 color];
  v9 = [(_TUIRuleLayerConfig *)v6 initWithColor:color];

  v10 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v9 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  v11 = [(TUILayout *)self box];
  identifier = [v11 identifier];
  [(TUIRenderModelLayer *)v10 setIdentifier:identifier];

  [(TUILayout *)self renderModelSizeWithContext:contextCopy];
  v14 = v13;
  v16 = v15;

  [(TUIRenderModelLayer *)v10 setSize:v14, v16];
  return v10;
}

@end