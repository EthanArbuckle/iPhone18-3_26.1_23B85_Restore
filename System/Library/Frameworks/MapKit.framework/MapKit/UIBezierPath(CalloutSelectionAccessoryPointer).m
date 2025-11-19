@interface UIBezierPath(CalloutSelectionAccessoryPointer)
+ (id)bezierPathWithCalloutRect:()CalloutSelectionAccessoryPointer unitLocation:edge:;
- (uint64_t)addPointerAtUnitLocation:()CalloutSelectionAccessoryPointer rect:edge:;
@end

@implementation UIBezierPath(CalloutSelectionAccessoryPointer)

- (uint64_t)addPointerAtUnitLocation:()CalloutSelectionAccessoryPointer rect:edge:
{
  v15 = a8 - 1;
  v16 = a3;
  if ((a8 - 1) > 1)
  {
    Height = CGRectGetHeight(*&v16);
  }

  else
  {
    Height = CGRectGetWidth(*&v16);
  }

  v21 = Height;
  result = [MEMORY[0x1E69DC728] pointerMargin];
  v24 = v21 + v23 * -2.0;
  v25 = a8 & 0xFFFFFFFFFFFFFFFELL;
  v26 = 1.0 - a2;
  if ((a8 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v26 = a2;
  }

  v27 = v26 * v24 + 14.0 + 10.0;
  switch(a8)
  {
    case 4:
      v60.origin.x = a3;
      v60.origin.y = a4;
      v60.size.width = a5;
      v60.size.height = a6;
      MinY = CGRectGetMinY(v60);
      v61.origin.x = a3;
      v61.origin.y = a4;
      v61.size.width = a5;
      v61.size.height = a6;
      MaxX = CGRectGetMaxX(v61);
      break;
    case 1:
      v58.origin.x = a3;
      v58.origin.y = a4;
      v58.size.width = a5;
      v58.size.height = a6;
      MinY = CGRectGetMinX(v58);
      v59.origin.x = a3;
      v59.origin.y = a4;
      v59.size.width = a5;
      v59.size.height = a6;
      MaxX = CGRectGetMinY(v59);
      break;
    case 2:
      v27 = -v27;
      v62.origin.x = a3;
      v62.origin.y = a4;
      v62.size.width = a5;
      v62.size.height = a6;
      MinY = CGRectGetMaxX(v62);
      v63.origin.x = a3;
      v63.origin.y = a4;
      v63.size.width = a5;
      v63.size.height = a6;
      MaxX = CGRectGetMaxY(v63);
      break;
    case 3:
      v27 = -v27;
      v64.origin.x = a3;
      v64.origin.y = a4;
      v64.size.width = a5;
      v64.size.height = a6;
      MinY = CGRectGetMaxY(v64);
      v65.origin.x = a3;
      v65.origin.y = a4;
      v65.size.width = a5;
      v65.size.height = a6;
      MaxX = CGRectGetMinX(v65);
      break;
    default:
      return result;
  }

  v30 = MinY + v27;
  if (v25 == 2)
  {
    v31 = -14.0;
  }

  else
  {
    v31 = 14.0;
  }

  v32 = 5.0;
  if (v25 == 2)
  {
    v32 = -5.0;
  }

  v33 = 3.0;
  if (v25 == 2)
  {
    v33 = -3.0;
  }

  v34 = v30 + v31 * 2.0;
  v35 = v34 - v32;
  if (v15 >= 2)
  {
    v36 = MaxX;
  }

  else
  {
    v36 = v34 - v32;
  }

  if (v15 < 2)
  {
    v35 = MaxX;
  }

  v55 = v35;
  v56 = v36;
  if (a8 == 4 || a8 == 2)
  {
    v38 = -14.0;
  }

  else
  {
    v38 = 14.0;
  }

  if (v15 >= 2)
  {
    v39 = MaxX;
  }

  else
  {
    v39 = MinY + v27;
  }

  if (v15 >= 2)
  {
    v40 = MinY + v27;
  }

  else
  {
    v40 = MaxX;
  }

  v41 = v31 + v30;
  v42 = MaxX - v38;
  if (v15 >= 2)
  {
    v43 = v42;
  }

  else
  {
    v43 = v41;
  }

  if (v15 >= 2)
  {
    v44 = v41;
  }

  else
  {
    v44 = v42;
  }

  v45 = v32 + v30;
  if (v15 >= 2)
  {
    v46 = MaxX;
  }

  else
  {
    v46 = v45;
  }

  if (v15 >= 2)
  {
    v47 = v45;
  }

  else
  {
    v47 = MaxX;
  }

  if (v15 >= 2)
  {
    v48 = v42;
  }

  else
  {
    v48 = v41 - v33;
  }

  if (v15 >= 2)
  {
    v49 = v41 - v33;
  }

  else
  {
    v49 = v42;
  }

  if (v15 >= 2)
  {
    v50 = MaxX;
  }

  else
  {
    v50 = v34;
  }

  if (v15 < 2)
  {
    v51 = v33 + v41;
  }

  else
  {
    MaxX = v34;
    v51 = v42;
  }

  if (v15 >= 2)
  {
    v52 = v33 + v41;
  }

  else
  {
    v52 = v42;
  }

  [a1 addLineToPoint:{v39, v40, *&MaxX, *&v50}];
  [a1 addCurveToPoint:v43 controlPoint1:v44 controlPoint2:{v46, v47, v48, v49}];

  return [a1 addCurveToPoint:v54 controlPoint1:v53 controlPoint2:{v51, v52, v56, v55}];
}

+ (id)bezierPathWithCalloutRect:()CalloutSelectionAccessoryPointer unitLocation:edge:
{
  v13 = [MEMORY[0x1E69DC728] bezierPath];
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  MinX = CGRectGetMinX(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  [v13 moveToPoint:{MinX, CGRectGetMinY(v26) + 14.0}];
  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  v15 = CGRectGetMinX(v27) + 14.0;
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  [v13 addArcWithCenter:1 radius:v15 startAngle:CGRectGetMinY(v28) + 14.0 endAngle:14.0 clockwise:{3.14159265, 4.71238898}];
  if (a8 == 1)
  {
    [v13 addPointerAtUnitLocation:1 rect:a5 edge:{a1, a2, a3, a4}];
  }

  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v16 = CGRectGetMaxX(v29) + -14.0;
  v30.origin.x = a1;
  v30.origin.y = a2;
  v30.size.width = a3;
  v30.size.height = a4;
  [v13 addLineToPoint:{v16, CGRectGetMinY(v30)}];
  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  v17 = CGRectGetMaxX(v31) + -14.0;
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  [v13 addArcWithCenter:1 radius:v17 startAngle:CGRectGetMinY(v32) + 14.0 endAngle:14.0 clockwise:{4.71238898, 6.28318531}];
  if (a8 == 4)
  {
    [v13 addPointerAtUnitLocation:4 rect:a5 edge:{a1, a2, a3, a4}];
  }

  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  MaxX = CGRectGetMaxX(v33);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  [v13 addLineToPoint:{MaxX, CGRectGetMaxY(v34) + -14.0}];
  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  v19 = CGRectGetMaxX(v35) + -14.0;
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  [v13 addArcWithCenter:1 radius:v19 startAngle:CGRectGetMaxY(v36) + -14.0 endAngle:14.0 clockwise:{0.0, 1.57079633}];
  if (a8 == 2)
  {
    [v13 addPointerAtUnitLocation:2 rect:a5 edge:{a1, a2, a3, a4}];
  }

  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  v20 = CGRectGetMinX(v37) + 14.0;
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  [v13 addLineToPoint:{v20, CGRectGetMaxY(v38)}];
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  v21 = CGRectGetMinX(v39) + 14.0;
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  [v13 addArcWithCenter:1 radius:v21 startAngle:CGRectGetMaxY(v40) + -14.0 endAngle:14.0 clockwise:{1.57079633, 3.14159265}];
  if (a8 == 3)
  {
    [v13 addPointerAtUnitLocation:3 rect:a5 edge:{a1, a2, a3, a4}];
  }

  [v13 closePath];

  return v13;
}

@end