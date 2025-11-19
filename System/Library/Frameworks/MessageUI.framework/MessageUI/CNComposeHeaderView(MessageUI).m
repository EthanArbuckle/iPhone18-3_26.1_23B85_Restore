@interface CNComposeHeaderView(MessageUI)
- (double)mf_scribbleFrame;
@end

@implementation CNComposeHeaderView(MessageUI)

- (double)mf_scribbleFrame
{
  v2 = [a1 labelView];
  v3 = [a1 labelView];
  [v3 bounds];
  [v2 convertRect:a1 toView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [a1 bounds];
  MaxX = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [a1 effectiveUserInterfaceLayoutDirection];
  v21 = v5;
  v22 = v7;
  v23 = v9;
  v24 = v11;
  if (v20 == 1)
  {
    CGRectGetMinX(*&v21);
  }

  else
  {
    MaxX = CGRectGetMaxX(*&v21);
    [a1 bounds];
    CGRectGetMaxX(v26);
  }

  v27.origin.x = MaxX;
  v27.origin.y = v15;
  v27.size.width = v17;
  v27.size.height = v19;
  CGRectGetMinX(v27);
  return MaxX;
}

@end