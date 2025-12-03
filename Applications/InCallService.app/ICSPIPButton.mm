@interface ICSPIPButton
+ (id)buttonWithType:(int64_t)type alignment:(int64_t)alignment;
- (CGRect)imageRectForContentRect:(CGRect)rect;
@end

@implementation ICSPIPButton

+ (id)buttonWithType:(int64_t)type alignment:(int64_t)alignment
{
  v5 = [ICSPIPButton buttonWithType:type];
  [v5 setAlignment:alignment];

  return v5;
}

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  y = rect.origin.y;
  v25.receiver = self;
  v25.super_class = ICSPIPButton;
  [(ICSPIPButton *)&v25 imageRectForContentRect:rect.origin.x, rect.origin.y, rect.size.width];
  v7 = v6;
  v9 = v8;
  width = v10;
  v13 = v12;
  alignment = [(ICSPIPButton *)self alignment];
  v15 = y + 5.0;
  v16 = height - (v13 + 5.0);
  if (alignment != 1)
  {
    v16 = v9;
  }

  if (alignment == 2)
  {
    v17 = y + 5.0;
  }

  else
  {
    v17 = v16;
  }

  if (alignment == 2)
  {
    x = 5.0;
  }

  else
  {
    x = v7;
  }

  v19 = [UIScreen mainScreen:5.0];
  [v19 scale];
  if (v20 == 1.0)
  {
    v26.origin.x = x;
    v26.origin.y = v17;
    v26.size.width = width;
    v26.size.height = v13;
    v27 = CGRectIntegral(v26);
    x = v27.origin.x;
    v17 = v27.origin.y;
    width = v27.size.width;
    v13 = v27.size.height;
  }

  v21 = x;
  v22 = v17;
  v23 = width;
  v24 = v13;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

@end