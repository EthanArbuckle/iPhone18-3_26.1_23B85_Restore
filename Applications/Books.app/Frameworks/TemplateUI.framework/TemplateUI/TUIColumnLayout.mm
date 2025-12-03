@interface TUIColumnLayout
- (void)computeLayout;
@end

@implementation TUIColumnLayout

- (void)computeLayout
{
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  if (layoutAncestor)
  {
    do
    {
      v4 = objc_opt_respondsToSelector();
      if (v4)
      {
        break;
      }

      v3LayoutAncestor = [layoutAncestor layoutAncestor];

      layoutAncestor = v3LayoutAncestor;
    }

    while (v3LayoutAncestor);
    v6 = v4 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  v20 = layoutAncestor;
  v7 = [(TUILayout *)self box];
  columnSpan = [v7 columnSpan];
  v9 = [v20 columnLayoutProviderColumnSpanForColumnSpan:columnSpan];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((v6 & 1) == 0)
    {
      v10 = [(TUILayout *)self box];
      [v10 containerFraction];
      v9 = [v20 columnLayoutProviderColumnsForContainerFraction:?];

LABEL_11:
      if (v9 == 0x7FFFFFFFFFFFFFFFLL || v9 == 0)
      {
        v13 = 1;
      }

      else
      {
        v13 = v9;
      }

      [v20 columnLayoutProviderWidthForColumnSpan:v13];
      v11 = v14;
      goto LABEL_18;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = NAN;
LABEL_18:
  children = [(TUILayout *)self children];
  firstObject = [children firstObject];

  [firstObject setContainingWidth:v11];
  [firstObject validateLayout];
  [firstObject computedTransformedSize];
  v18 = v17;
  [firstObject setComputedOrigin:{(v11 - v19) * 0.5, 0.0}];
  [(TUILayout *)self setComputedNaturalSize:v11, v18];
}

@end