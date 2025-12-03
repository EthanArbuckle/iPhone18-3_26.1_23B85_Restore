@interface GAXInterfaceUtilities
+ (CGSize)labelSizeThatFitsText:(id)text constrainedToSize:(CGSize)size font:(id)font styleProvider:(id)provider;
+ (id)imageWithImage:(id)image size:(CGSize)size;
+ (id)labelWithText:(id)text font:(id)font allowMultipleLines:(BOOL)lines textAlignment:(int64_t)alignment styleProvider:(id)provider;
+ (id)resizableOptionsButtonBackgroundImageWithStyleProvider:(id)provider;
+ (id)statusBarWithStyle:(int64_t)style containerViewBounds:(CGRect)bounds;
@end

@implementation GAXInterfaceUtilities

+ (id)imageWithImage:(id)image size:(CGSize)size
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  v10.width = width;
  v10.height = height;
  UIGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
  [imageCopy drawInRect:{0.0, 0.0, width, height}];

  v7 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v7;
}

+ (id)resizableOptionsButtonBackgroundImageWithStyleProvider:(id)provider
{
  providerCopy = provider;
  [providerCopy featureViewOptionsButtonHeight];
  v5 = v4;
  [providerCopy featureViewOptionsButtonLineWidth];
  v7 = v6 * 0.5;
  [providerCopy featureViewOptionsButtonHeight];
  v9 = v8 + 1.0;
  featureViewOptionsButtonLineColor = [providerCopy featureViewOptionsButtonLineColor];
  cGColor = [featureViewOptionsButtonLineColor CGColor];

  [providerCopy featureViewOptionsButtonHeight];
  v13 = v12;
  [providerCopy featureViewOptionsButtonLineWidth];
  v15 = (v13 - v14) * 0.5;
  [providerCopy featureViewOptionsButtonLineWidth];
  v17 = v16;

  v25.width = v9;
  v23 = v9;
  v25.height = v5;
  UIGraphicsBeginImageContextWithOptions(v25, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetLineWidth(CurrentContext, v17);
  CGContextSetStrokeColorWithColor(CurrentContext, cGColor);
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

+ (id)labelWithText:(id)text font:(id)font allowMultipleLines:(BOOL)lines textAlignment:(int64_t)alignment styleProvider:(id)provider
{
  linesCopy = lines;
  providerCopy = provider;
  fontCopy = font;
  textCopy = text;
  v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  defaultLabelTextColor = [providerCopy defaultLabelTextColor];
  [v14 setTextColor:defaultLabelTextColor];

  defaultLabelBackgroundColor = [providerCopy defaultLabelBackgroundColor];

  [v14 setBackgroundColor:defaultLabelBackgroundColor];
  [v14 setFont:fontCopy];

  [v14 setTextAlignment:alignment];
  [v14 setText:textCopy];

  if (linesCopy)
  {
    [v14 setLineBreakMode:0];
    [v14 setNumberOfLines:0];
  }

  [v14 sizeToFit];

  return v14;
}

+ (CGSize)labelSizeThatFitsText:(id)text constrainedToSize:(CGSize)size font:(id)font styleProvider:(id)provider
{
  [text _legacy_sizeWithFont:font constrainedToSize:{size.width, size.height}];
  result.height = v7;
  result.width = v6;
  return result;
}

+ (id)statusBarWithStyle:(int64_t)style containerViewBounds:(CGRect)bounds
{
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = [[UIStatusBar alloc] initWithFrame:1 showForegroundView:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v8 frame];
  [v8 setFrame:{x, y, width, CGRectGetHeight(v11)}];
  [v8 setAutoresizingMask:34];
  [v8 setUserInteractionEnabled:0];
  [v8 forceUpdateData:0];
  [v8 requestStyle:style];
  [v8 setAccessibilityElementsHidden:1];

  return v8;
}

@end