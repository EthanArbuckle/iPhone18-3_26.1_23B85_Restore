@interface HNDScreen
+ (CGPoint)convertPoint:(CGPoint)a3 fromView:(id)a4;
+ (CGPoint)convertPoint:(CGPoint)a3 toView:(id)a4;
+ (CGRect)convertRect:(CGRect)a3 fromView:(id)a4;
+ (CGRect)convertRect:(CGRect)a3 toView:(id)a4;
@end

@implementation HNDScreen

+ (CGPoint)convertPoint:(CGPoint)a3 toView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = [v6 window];
  }

  v8 = v7;
  if (v7)
  {
    [v7 _convertPointFromSceneReferenceSpace:{x, y}];
    x = v9;
    y = v10;
  }

  else
  {
    v21.x = x;
    v21.y = y;
    v19 = NSStringFromCGPoint(v21);
    v20 = v6;
    v18 = @"Tried to convert HNDScreen point %@ to view %@, but it had no window.";
    LOBYTE(v17) = 1;
    _AXLogWithFacility();
  }

  [v6 convertPoint:0 fromView:{x, y, v17, v18, v19, v20}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

+ (CGPoint)convertPoint:(CGPoint)a3 fromView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  [v6 convertPoint:0 toView:{x, y}];
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v6;
  }

  else
  {
    v11 = [v6 window];
  }

  v12 = v11;
  if (v11)
  {
    [v11 _convertPointToSceneReferenceSpace:{v8, v10}];
    v8 = v13;
    v10 = v14;
  }

  else
  {
    v18.x = v8;
    v18.y = v10;
    v17 = NSStringFromCGPoint(v18);
    _AXLogWithFacility();
  }

  v15 = v8;
  v16 = v10;
  result.y = v16;
  result.x = v15;
  return result;
}

+ (CGRect)convertRect:(CGRect)a3 toView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = [v8 window];
  }

  v10 = v9;
  if (v9)
  {
    [v9 _convertRectFromSceneReferenceSpace:{x, y, width, height}];
    x = v11;
    y = v12;
    width = v13;
    height = v14;
  }

  else
  {
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v29 = NSStringFromCGRect(v31);
    v30 = v8;
    v28 = @"Tried to convert HNDScreen rect %@ to view %@, but it had no window.";
    LOBYTE(v27) = 1;
    _AXLogWithFacility();
  }

  [v8 convertRect:0 fromView:{x, y, width, height, v27, v28, v29, v30}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

+ (CGRect)convertRect:(CGRect)a3 fromView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  [v8 convertRect:0 toView:{x, y, width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v8;
  }

  else
  {
    v17 = [v8 window];
  }

  v18 = v17;
  if (v17)
  {
    [v17 _convertRectToSceneReferenceSpace:{v10, v12, v14, v16}];
    v10 = v19;
    v12 = v20;
    v14 = v21;
    v16 = v22;
  }

  else
  {
    v28.origin.x = v10;
    v28.origin.y = v12;
    v28.size.width = v14;
    v28.size.height = v16;
    v27 = NSStringFromCGRect(v28);
    _AXLogWithFacility();
  }

  v23 = v10;
  v24 = v12;
  v25 = v14;
  v26 = v16;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

@end