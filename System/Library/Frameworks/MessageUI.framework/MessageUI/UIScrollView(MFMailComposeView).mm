@interface UIScrollView(MFMailComposeView)
- (BOOL)mf_needsToAdjustContentOffset;
@end

@implementation UIScrollView(MFMailComposeView)

- (BOOL)mf_needsToAdjustContentOffset
{
  [self bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [self contentOffset];
  v11 = v10;
  v30 = v12;
  [self contentSize];
  v14 = v13;
  v16 = v15;
  [self _effectiveContentInset];
  v21 = round(-v20);
  if (v7 < round(v19 + v14 + v20) && v3 >= v21)
  {
    v23 = round(v14 + v19);
    if (v3 + v7 > v23)
    {
      v21 = v23 - v7;
    }

    else
    {
      v21 = v11;
    }
  }

  v24 = round(-v17);
  if (v9 < round(v18 + v16 + v17) && v5 >= v24)
  {
    v26 = round(v16 + v18);
    v24 = v30;
    if (v5 + v9 > v26)
    {
      v24 = v26 - v9;
    }
  }

  [self contentOffset];
  return v28 != v24 || v27 != v21;
}

@end