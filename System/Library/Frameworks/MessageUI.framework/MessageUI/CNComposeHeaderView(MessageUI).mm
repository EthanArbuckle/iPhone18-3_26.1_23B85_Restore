@interface CNComposeHeaderView(MessageUI)
- (double)mf_scribbleFrame;
@end

@implementation CNComposeHeaderView(MessageUI)

- (double)mf_scribbleFrame
{
  labelView = [self labelView];
  labelView2 = [self labelView];
  [labelView2 bounds];
  [labelView convertRect:self toView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [self bounds];
  MaxX = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  effectiveUserInterfaceLayoutDirection = [self effectiveUserInterfaceLayoutDirection];
  v21 = v5;
  v22 = v7;
  v23 = v9;
  v24 = v11;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    CGRectGetMinX(*&v21);
  }

  else
  {
    MaxX = CGRectGetMaxX(*&v21);
    [self bounds];
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