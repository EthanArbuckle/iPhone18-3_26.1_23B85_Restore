@interface TUIRuleLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
- (void)computeLayout;
@end

@implementation TUIRuleLayout

- (void)computeLayout
{
  v3 = [(TUILayout *)self layoutAncestor];
  if (v3)
  {
    while (1)
    {
      v16 = v3;
      if (objc_opt_respondsToSelector())
      {
        break;
      }

      v4 = [v16 layoutAncestor];

      v3 = v4;
      if (!v4)
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
  v6 = [v5 axis];

  if (v6 || (v6 = [v16 ruleLayoutAxis]) != 0)
  {
    if (v6 == &dword_0 + 2)
    {
      v10 = [(TUILayout *)self controller];
      [v10 contentsScale];
      v8 = 1.0 / v14;
      [(TUILayout *)self computeHeight];
      v7 = v15;
    }

    else
    {
      v7 = 0.0;
      v8 = 0.0;
      if (v6 != &dword_0 + 1)
      {
        goto LABEL_13;
      }

      [(TUILayout *)self computeWidth];
      v8 = v9;
      v10 = [(TUILayout *)self controller];
      [v10 contentsScale];
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

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  v5 = a4;
  v6 = [_TUIRuleLayerConfig alloc];
  v7 = [(TUILayout *)self box];
  v8 = [v7 color];
  v9 = [(_TUIRuleLayerConfig *)v6 initWithColor:v8];

  v10 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v9 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  v11 = [(TUILayout *)self box];
  v12 = [v11 identifier];
  [(TUIRenderModelLayer *)v10 setIdentifier:v12];

  [(TUILayout *)self renderModelSizeWithContext:v5];
  v14 = v13;
  v16 = v15;

  [(TUIRenderModelLayer *)v10 setSize:v14, v16];
  return v10;
}

@end