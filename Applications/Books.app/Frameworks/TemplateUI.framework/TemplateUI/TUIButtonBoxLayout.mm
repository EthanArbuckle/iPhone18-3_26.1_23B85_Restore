@interface TUIButtonBoxLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- (id)collectLinkEntities;
@end

@implementation TUIButtonBoxLayout

- (id)collectLinkEntities
{
  v2 = [(TUILayout *)self box];
  linkEntities = [v2 linkEntities];

  return linkEntities;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  v4 = [(TUILayout *)self box];
  v5 = +[TUIButtonBox _metricsForButtonType:](TUIButtonBox, "_metricsForButtonType:", [v4 effectiveButtonTypeForLayout]);

  if (v5)
  {
    [v5 contentHeight];
    if (v6 <= -3.40282347e38)
    {
      computeIntrinsicHeight = 0x7FC00000FF7FFFFFLL;
    }

    else
    {
      v7 = v6 < 3.40282347e38;
      v8 = v6;
      if (v7)
      {
        computeIntrinsicHeight = LODWORD(v8) | 0x7FC0000000000000;
      }

      else
      {
        computeIntrinsicHeight = 0x7FC000007F7FFFFFLL;
      }
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TUIButtonBoxLayout;
    computeIntrinsicHeight = [($E297CC25127479E857BE23A4F8632EA4 *)&v11 computeIntrinsicHeight];
  }

  return computeIntrinsicHeight;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  v4 = [(TUILayout *)self box];
  effectiveButtonTypeForLayout = [v4 effectiveButtonTypeForLayout];

  v6 = [TUIButtonBox _metricsForButtonType:effectiveButtonTypeForLayout];
  [v6 contentWidthPadding];
  v7 = [(TUILayout *)self box];
  stateButtonAttributesMap = [v7 stateButtonAttributesMap];
  v9 = [stateButtonAttributesMap objectForKeyedSubscript:@"default"];

  if (v6 && v9)
  {
    title = [v9 title];
    [title tui_widthAsTitle];
    v13 = v12;

    if (v13 <= -3.40282347e38)
    {
      computeIntrinsicWidth = 0x7FC00000FF7FFFFFLL;
    }

    else if (v13 < 3.40282347e38)
    {
      *&v14 = v13;
      computeIntrinsicWidth = v14 | 0x7FC0000000000000;
    }

    else
    {
      computeIntrinsicWidth = 0x7FC000007F7FFFFFLL;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = TUIButtonBoxLayout;
    computeIntrinsicWidth = [($E297CC25127479E857BE23A4F8632EA4 *)&v16 computeIntrinsicWidth];
  }

  return computeIntrinsicWidth;
}

@end