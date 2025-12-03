@interface HNDScreen
+ (CGPoint)convertPoint:(CGPoint)point fromView:(id)view;
+ (CGPoint)convertPoint:(CGPoint)point toView:(id)view;
+ (CGRect)convertRect:(CGRect)rect fromView:(id)view;
+ (CGRect)convertRect:(CGRect)rect toView:(id)view;
@end

@implementation HNDScreen

+ (CGPoint)convertPoint:(CGPoint)point toView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = viewCopy;
  }

  else
  {
    window = [viewCopy window];
  }

  v8 = window;
  if (window)
  {
    [window _convertPointFromSceneReferenceSpace:{x, y}];
    x = v9;
    y = v10;
  }

  else
  {
    v21.x = x;
    v21.y = y;
    v19 = NSStringFromCGPoint(v21);
    v20 = viewCopy;
    v18 = @"Tried to convert HNDScreen point %@ to view %@, but it had no window.";
    LOBYTE(v17) = 1;
    _AXLogWithFacility();
  }

  [viewCopy convertPoint:0 fromView:{x, y, v17, v18, v19, v20}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

+ (CGPoint)convertPoint:(CGPoint)point fromView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  [viewCopy convertPoint:0 toView:{x, y}];
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = viewCopy;
  }

  else
  {
    window = [viewCopy window];
  }

  v12 = window;
  if (window)
  {
    [window _convertPointToSceneReferenceSpace:{v8, v10}];
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

+ (CGRect)convertRect:(CGRect)rect toView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = viewCopy;
  }

  else
  {
    window = [viewCopy window];
  }

  v10 = window;
  if (window)
  {
    [window _convertRectFromSceneReferenceSpace:{x, y, width, height}];
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
    v30 = viewCopy;
    v28 = @"Tried to convert HNDScreen rect %@ to view %@, but it had no window.";
    LOBYTE(v27) = 1;
    _AXLogWithFacility();
  }

  [viewCopy convertRect:0 fromView:{x, y, width, height, v27, v28, v29, v30}];
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

+ (CGRect)convertRect:(CGRect)rect fromView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  [viewCopy convertRect:0 toView:{x, y, width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = viewCopy;
  }

  else
  {
    window = [viewCopy window];
  }

  v18 = window;
  if (window)
  {
    [window _convertRectToSceneReferenceSpace:{v10, v12, v14, v16}];
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