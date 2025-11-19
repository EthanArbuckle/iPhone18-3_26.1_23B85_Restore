@interface TUIColumnLayout
- (void)computeLayout;
@end

@implementation TUIColumnLayout

- (void)computeLayout
{
  v3 = [(TUILayout *)self layoutAncestor];
  if (v3)
  {
    do
    {
      v4 = objc_opt_respondsToSelector();
      if (v4)
      {
        break;
      }

      v5 = [v3 layoutAncestor];

      v3 = v5;
    }

    while (v5);
    v6 = v4 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  v20 = v3;
  v7 = [(TUILayout *)self box];
  v8 = [v7 columnSpan];
  v9 = [v20 columnLayoutProviderColumnSpanForColumnSpan:v8];

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
  v15 = [(TUILayout *)self children];
  v16 = [v15 firstObject];

  [v16 setContainingWidth:v11];
  [v16 validateLayout];
  [v16 computedTransformedSize];
  v18 = v17;
  [v16 setComputedOrigin:{(v11 - v19) * 0.5, 0.0}];
  [(TUILayout *)self setComputedNaturalSize:v11, v18];
}

@end