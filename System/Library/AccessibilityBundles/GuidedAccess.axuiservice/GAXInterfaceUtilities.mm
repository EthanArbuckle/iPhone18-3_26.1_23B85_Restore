@interface GAXInterfaceUtilities
+ (CGSize)labelSizeThatFitsText:(id)a3 constrainedToSize:(CGSize)a4 font:(id)a5 styleProvider:(id)a6;
+ (id)imageWithImage:(id)a3 size:(CGSize)a4;
+ (id)labelWithText:(id)a3 font:(id)a4 allowMultipleLines:(BOOL)a5 textAlignment:(int64_t)a6 styleProvider:(id)a7;
+ (id)resizableOptionsButtonBackgroundImageWithStyleProvider:(id)a3;
+ (id)statusBarWithStyle:(int64_t)a3 containerViewBounds:(CGRect)a4;
@end

@implementation GAXInterfaceUtilities

+ (id)imageWithImage:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v10.width = width;
  v10.height = height;
  UIGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
  [v6 drawInRect:{0.0, 0.0, width, height}];

  v7 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v7;
}

+ (id)resizableOptionsButtonBackgroundImageWithStyleProvider:(id)a3
{
  v3 = a3;
  [v3 featureViewOptionsButtonHeight];
  v5 = v4;
  [v3 featureViewOptionsButtonLineWidth];
  v7 = v6 * 0.5;
  [v3 featureViewOptionsButtonHeight];
  v9 = v8 + 1.0;
  v10 = [v3 featureViewOptionsButtonLineColor];
  v11 = [v10 CGColor];

  [v3 featureViewOptionsButtonHeight];
  v13 = v12;
  [v3 featureViewOptionsButtonLineWidth];
  v15 = (v13 - v14) * 0.5;
  [v3 featureViewOptionsButtonLineWidth];
  v17 = v16;

  v25.width = v9;
  v23 = v9;
  v25.height = v5;
  UIGraphicsBeginImageContextWithOptions(v25, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetLineWidth(CurrentContext, v17);
  CGContextSetStrokeColorWithColor(CurrentContext, v11);
  CGContextMoveToPoint(CurrentContext, v7 + v15, v7);
  v19 = v9 - v7;
  CGContextAddLineToPoint(CurrentContext, v19 - v15, v7);
  CGContextAddArcToPoint(CurrentContext, v19, v7, v19, v5 * 0.5, v15);
  CGContextAddArcToPoint(CurrentContext, v19, v5 - v7, v19 - v15, v5 - v7, v15);
  CGContextAddLineToPoint(CurrentContext, v7 + v15, v5 - v7);
  CGContextAddArcToPoint(CurrentContext, v7, v5 - v7, v7, v5 * 0.5, v15);
  CGContextAddArcToPoint(CurrentContext, v7, v7, v7 + v15, v7, v15);
  CGContextStrokePath(CurrentContext);
  v20 = UIGraphicsGetImageFromCurrentImageContext();
  v21 = [v20 resizableImageWithCapInsets:{(v5 + -1.0) * 0.5, (v23 + -1.0) * 0.5, (v5 + -1.0) * 0.5, (v23 + -1.0) * 0.5}];

  UIGraphicsEndImageContext();

  return v21;
}

+ (id)labelWithText:(id)a3 font:(id)a4 allowMultipleLines:(BOOL)a5 textAlignment:(int64_t)a6 styleProvider:(id)a7
{
  v8 = a5;
  v11 = a7;
  v12 = a4;
  v13 = a3;
  v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v15 = [v11 defaultLabelTextColor];
  [v14 setTextColor:v15];

  v16 = [v11 defaultLabelBackgroundColor];

  [v14 setBackgroundColor:v16];
  [v14 setFont:v12];

  [v14 setTextAlignment:a6];
  [v14 setText:v13];

  if (v8)
  {
    [v14 setLineBreakMode:0];
    [v14 setNumberOfLines:0];
  }

  [v14 sizeToFit];

  return v14;
}

+ (CGSize)labelSizeThatFitsText:(id)a3 constrainedToSize:(CGSize)a4 font:(id)a5 styleProvider:(id)a6
{
  [a3 _legacy_sizeWithFont:a5 constrainedToSize:{a4.width, a4.height}];
  result.height = v7;
  result.width = v6;
  return result;
}

+ (id)statusBarWithStyle:(int64_t)a3 containerViewBounds:(CGRect)a4
{
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = [[UIStatusBar alloc] initWithFrame:1 showForegroundView:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v8 frame];
  [v8 setFrame:{x, y, width, CGRectGetHeight(v11)}];
  [v8 setAutoresizingMask:34];
  [v8 setUserInteractionEnabled:0];
  [v8 forceUpdateData:0];
  [v8 requestStyle:a3];
  [v8 setAccessibilityElementsHidden:1];

  return v8;
}

@end