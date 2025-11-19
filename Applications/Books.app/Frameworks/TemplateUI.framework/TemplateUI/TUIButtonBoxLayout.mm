@interface TUIButtonBoxLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- (id)collectLinkEntities;
@end

@implementation TUIButtonBoxLayout

- (id)collectLinkEntities
{
  v2 = [(TUILayout *)self box];
  v3 = [v2 linkEntities];

  return v3;
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
      v9 = 0x7FC00000FF7FFFFFLL;
    }

    else
    {
      v7 = v6 < 3.40282347e38;
      v8 = v6;
      if (v7)
      {
        v9 = LODWORD(v8) | 0x7FC0000000000000;
      }

      else
      {
        v9 = 0x7FC000007F7FFFFFLL;
      }
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TUIButtonBoxLayout;
    v9 = [($E297CC25127479E857BE23A4F8632EA4 *)&v11 computeIntrinsicHeight];
  }

  return v9;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  v4 = [(TUILayout *)self box];
  v5 = [v4 effectiveButtonTypeForLayout];

  v6 = [TUIButtonBox _metricsForButtonType:v5];
  [v6 contentWidthPadding];
  v7 = [(TUILayout *)self box];
  v8 = [v7 stateButtonAttributesMap];
  v9 = [v8 objectForKeyedSubscript:@"default"];

  if (v6 && v9)
  {
    v11 = [v9 title];
    [v11 tui_widthAsTitle];
    v13 = v12;

    if (v13 <= -3.40282347e38)
    {
      v10 = 0x7FC00000FF7FFFFFLL;
    }

    else if (v13 < 3.40282347e38)
    {
      *&v14 = v13;
      v10 = v14 | 0x7FC0000000000000;
    }

    else
    {
      v10 = 0x7FC000007F7FFFFFLL;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = TUIButtonBoxLayout;
    v10 = [($E297CC25127479E857BE23A4F8632EA4 *)&v16 computeIntrinsicWidth];
  }

  return v10;
}

@end