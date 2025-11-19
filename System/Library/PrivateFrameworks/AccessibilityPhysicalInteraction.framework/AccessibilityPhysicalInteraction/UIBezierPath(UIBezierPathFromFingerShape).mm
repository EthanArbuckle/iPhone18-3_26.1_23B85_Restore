@interface UIBezierPath(UIBezierPathFromFingerShape)
+ (id)bezierPathForFingerShape:()UIBezierPathFromFingerShape inRect:curveOnly:;
@end

@implementation UIBezierPath(UIBezierPathFromFingerShape)

+ (id)bezierPathForFingerShape:()UIBezierPathFromFingerShape inRect:curveOnly:
{
  v14 = [MEMORY[0x277D75208] bezierPath];
  if (a3 >= a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = a3;
  }

  v30 = v15;
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  MaxY = CGRectGetMaxY(v33);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  MinX = CGRectGetMinX(v34);
  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  MinY = CGRectGetMinY(v35);
  v19 = 0.0;
  if (a7 > 1)
  {
    v20 = MinY;
    switch(a7)
    {
      case 2:
        v19 = 4.71238898;
        v21 = 0.0;
        v22 = MinY;
        v23 = MinX;
        v20 = MaxY;
        break;
      case 3:
        v19 = 1.57079633;
        v21 = 3.14159265;
        v22 = MaxY;
        v24 = MaxX;
        v23 = MaxX;
        goto LABEL_17;
      case 4:
        v21 = 1.57079633;
        v22 = MinY;
        v23 = MaxX;
        break;
      default:
        v21 = 0.0;
        v22 = 0.0;
        v23 = 0.0;
        v20 = 0.0;
        v24 = 0.0;
        goto LABEL_17;
    }

    v24 = MinX;
LABEL_17:
    if (a8)
    {
      [v14 moveToPoint:{v23, v22}];
      [v14 addArcWithCenter:1 radius:v24 startAngle:v20 endAngle:v30 clockwise:{v19, v21}];
    }

    else
    {
      [v14 moveToPoint:{v24, v20}];
      [v14 addLineToPoint:{v23, v22}];
      [v14 addArcWithCenter:1 radius:v24 startAngle:v20 endAngle:v30 clockwise:{v19, v21}];
      [v14 addLineToPoint:{v24, v20}];
      [v14 closePath];
    }

    v26 = v14;
    goto LABEL_21;
  }

  if (a7)
  {
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    v20 = 0.0;
    v24 = 0.0;
    if (a7 == 1)
    {
      v19 = 3.14159265;
      v21 = 4.71238898;
      v22 = MaxY;
      v23 = MinX;
      v20 = MaxY;
      v24 = MaxX;
    }

    goto LABEL_17;
  }

  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  MidX = CGRectGetMidX(v36);
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  v26 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:MidX startAngle:CGRectGetMidY(v37) endAngle:v30 * 0.5 clockwise:{1.57079633, 7.85398163}];
LABEL_21:
  v27 = v26;

  return v27;
}

@end