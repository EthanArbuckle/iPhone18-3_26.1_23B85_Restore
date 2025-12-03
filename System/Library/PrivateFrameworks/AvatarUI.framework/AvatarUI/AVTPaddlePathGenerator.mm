@interface AVTPaddlePathGenerator
+ (id)concentricCornerPathWithBaseRect:(CGRect)rect radius:(double)radius topToBottom:(BOOL)bottom rightToLeft:(BOOL)left;
+ (id)paddlePathWithBaseRect:(CGRect)rect contentRect:(CGRect)contentRect radius:(double)radius topToBottom:(BOOL)bottom rightToLeft:(BOOL)left;
@end

@implementation AVTPaddlePathGenerator

+ (id)concentricCornerPathWithBaseRect:(CGRect)rect radius:(double)radius topToBottom:(BOOL)bottom rightToLeft:(BOOL)left
{
  leftCopy = left;
  bottomCopy = bottom;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MinX = CGRectGetMinX(rect);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MinY = CGRectGetMinY(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MaxX = CGRectGetMaxX(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MaxY = CGRectGetMaxY(v27);
  if (bottomCopy)
  {
    v17 = MaxY;
    if (!leftCopy)
    {
      v19 = MaxY - radius;
      v18 = MaxX + radius;
      v23 = 3.14159265;
      v20 = 1.57079633;
      MinX = MaxX;
      MinY = MaxY - radius;
      goto LABEL_9;
    }

    v18 = MinX - radius;
    v19 = MaxY - radius;
    v20 = 0.0;
    v23 = 1.57079633;
    MinY = MaxY;
  }

  else
  {
    if (leftCopy)
    {
      v19 = MinY + radius;
      v18 = MinX - radius;
      v23 = 0.0;
      v20 = 4.71238898;
      v17 = MinY;
      MinY = MinY + radius;
      MaxX = MinX;
      goto LABEL_9;
    }

    v18 = MaxX + radius;
    v19 = MinY + radius;
    v23 = 4.71238898;
    v20 = 3.14159265;
    MinX = MaxX;
    v17 = MinY;
  }

  MaxX = v18;
LABEL_9:
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  [bezierPath moveToPoint:{MaxX, MinY}];
  [bezierPath addArcWithCenter:0 radius:v18 startAngle:v19 endAngle:radius clockwise:{v23, v20}];
  [bezierPath addLineToPoint:{MinX, v17}];
  [bezierPath closePath];

  return bezierPath;
}

+ (id)paddlePathWithBaseRect:(CGRect)rect contentRect:(CGRect)contentRect radius:(double)radius topToBottom:(BOOL)bottom rightToLeft:(BOOL)left
{
  leftCopy = left;
  bottomCopy = bottom;
  rect = contentRect.size.height;
  width = contentRect.size.width;
  y = contentRect.origin.y;
  x = contentRect.origin.x;
  v12 = rect.size.width;
  v13 = rect.origin.y;
  v14 = rect.origin.x;
  if (bottom)
  {
    MinY = CGRectGetMinY(contentRect);
    v16 = 3;
  }

  else
  {
    MaxY = CGRectGetMaxY(rect);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = rect;
    MinY = MaxY - CGRectGetMaxY(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = rect;
    v13 = CGRectGetMaxY(v29);
    v16 = 12;
  }

  v18 = 13;
  if (!leftCopy)
  {
    v18 = 14;
  }

  v19 = 11;
  if (leftCopy)
  {
    v19 = 7;
  }

  if (bottomCopy)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v21 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v16 byRoundingCorners:v14 cornerRadii:{v13, v12, MinY, radius, radius}];
  [v21 closePath];
  v22 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v20 byRoundingCorners:x cornerRadii:{y, width, rect, radius, radius}];
  [v22 closePath];
  radius = [AVTPaddlePathGenerator concentricCornerPathWithBaseRect:bottomCopy radius:leftCopy topToBottom:v14 rightToLeft:v13, v12, MinY, radius];
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  [bezierPath appendPath:v21];
  [bezierPath appendPath:v22];
  [bezierPath appendPath:radius];

  return bezierPath;
}

@end