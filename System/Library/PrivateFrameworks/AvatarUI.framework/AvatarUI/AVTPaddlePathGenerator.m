@interface AVTPaddlePathGenerator
+ (id)concentricCornerPathWithBaseRect:(CGRect)a3 radius:(double)a4 topToBottom:(BOOL)a5 rightToLeft:(BOOL)a6;
+ (id)paddlePathWithBaseRect:(CGRect)a3 contentRect:(CGRect)a4 radius:(double)a5 topToBottom:(BOOL)a6 rightToLeft:(BOOL)a7;
@end

@implementation AVTPaddlePathGenerator

+ (id)concentricCornerPathWithBaseRect:(CGRect)a3 radius:(double)a4 topToBottom:(BOOL)a5 rightToLeft:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MinX = CGRectGetMinX(a3);
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
  if (v7)
  {
    v17 = MaxY;
    if (!v6)
    {
      v19 = MaxY - a4;
      v18 = MaxX + a4;
      v23 = 3.14159265;
      v20 = 1.57079633;
      MinX = MaxX;
      MinY = MaxY - a4;
      goto LABEL_9;
    }

    v18 = MinX - a4;
    v19 = MaxY - a4;
    v20 = 0.0;
    v23 = 1.57079633;
    MinY = MaxY;
  }

  else
  {
    if (v6)
    {
      v19 = MinY + a4;
      v18 = MinX - a4;
      v23 = 0.0;
      v20 = 4.71238898;
      v17 = MinY;
      MinY = MinY + a4;
      MaxX = MinX;
      goto LABEL_9;
    }

    v18 = MaxX + a4;
    v19 = MinY + a4;
    v23 = 4.71238898;
    v20 = 3.14159265;
    MinX = MaxX;
    v17 = MinY;
  }

  MaxX = v18;
LABEL_9:
  v21 = [MEMORY[0x1E69DC728] bezierPath];
  [v21 moveToPoint:{MaxX, MinY}];
  [v21 addArcWithCenter:0 radius:v18 startAngle:v19 endAngle:a4 clockwise:{v23, v20}];
  [v21 addLineToPoint:{MinX, v17}];
  [v21 closePath];

  return v21;
}

+ (id)paddlePathWithBaseRect:(CGRect)a3 contentRect:(CGRect)a4 radius:(double)a5 topToBottom:(BOOL)a6 rightToLeft:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  rect = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3.size.width;
  v13 = a3.origin.y;
  v14 = a3.origin.x;
  if (a6)
  {
    MinY = CGRectGetMinY(a4);
    v16 = 3;
  }

  else
  {
    MaxY = CGRectGetMaxY(a3);
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
  if (!v7)
  {
    v18 = 14;
  }

  v19 = 11;
  if (v7)
  {
    v19 = 7;
  }

  if (v8)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v21 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v16 byRoundingCorners:v14 cornerRadii:{v13, v12, MinY, a5, a5}];
  [v21 closePath];
  v22 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v20 byRoundingCorners:x cornerRadii:{y, width, rect, a5, a5}];
  [v22 closePath];
  v23 = [AVTPaddlePathGenerator concentricCornerPathWithBaseRect:v8 radius:v7 topToBottom:v14 rightToLeft:v13, v12, MinY, a5];
  v24 = [MEMORY[0x1E69DC728] bezierPath];
  [v24 appendPath:v21];
  [v24 appendPath:v22];
  [v24 appendPath:v23];

  return v24;
}

@end