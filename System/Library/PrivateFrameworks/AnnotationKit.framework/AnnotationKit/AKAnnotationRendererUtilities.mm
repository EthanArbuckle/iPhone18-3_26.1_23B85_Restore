@interface AKAnnotationRendererUtilities
+ (BOOL)contextWantsHDR:(CGContext *)r;
+ (CGPoint)_shadowDirectionForAnnotation:(id)annotation;
+ (CGRect)outsetRectForShadow:(CGRect)shadow onAnnotation:(id)annotation;
+ (void)beginShadowInContext:(CGContext *)context forAnnotation:(id)annotation;
+ (void)endShadowInContext:(CGContext *)context;
+ (void)setStandardLineDashInContext:(CGContext *)context forLineWidth:(double)width;
+ (void)setStandardLineStateInContext:(CGContext *)context forLineWidth:(double)width;
@end

@implementation AKAnnotationRendererUtilities

+ (CGPoint)_shadowDirectionForAnnotation:(id)annotation
{
  v3 = +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [annotation originalExifOrientation]);
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);

  [AKGeometryHelper adjustPoint:v3 forExifOrientation:0.0 aboutCenter:-3.0, v4, v5];
  result.y = v7;
  result.x = v6;
  return result;
}

+ (CGRect)outsetRectForShadow:(CGRect)shadow onAnnotation:(id)annotation
{
  height = shadow.size.height;
  width = shadow.size.width;
  y = shadow.origin.y;
  x = shadow.origin.x;
  [annotation originalModelBaseScaleFactor];
  v9 = v8 * -3.75;
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;

  return CGRectInset(*&v10, v9, v9);
}

+ (void)beginShadowInContext:(CGContext *)context forAnnotation:(id)annotation
{
  annotationCopy = annotation;
  CGContextSaveGState(context);
  [self _shadowDirectionForAnnotation:annotationCopy];
  v8 = v7;
  v10 = v9;
  [annotationCopy originalModelBaseScaleFactor];
  v12 = v11;

  v13 = [MEMORY[0x277D75348] akColorWithWhite:0.0 alpha:0.3];
  cGColor = [v13 CGColor];
  v16.width = v8 * v12;
  v16.height = v10 * v12;
  CGContextSetShadowWithColor(context, v16, v12 * 3.0, cGColor);

  CGContextBeginTransparencyLayer(context, 0);
}

+ (void)endShadowInContext:(CGContext *)context
{
  CGContextEndTransparencyLayer(context);

  CGContextRestoreGState(context);
}

+ (void)setStandardLineStateInContext:(CGContext *)context forLineWidth:(double)width
{
  CGContextSetLineWidth(context, width);
  CGContextSetLineCap(context, kCGLineCapSquare);
  CGContextSetLineJoin(context, kCGLineJoinMiter);

  CGContextSetMiterLimit(context, 10.0);
}

+ (void)setStandardLineDashInContext:(CGContext *)context forLineWidth:(double)width
{
  lengths[2] = *MEMORY[0x277D85DE8];
  lengths[0] = width + 7.0;
  lengths[1] = width * 3.0 + 4.0;
  CGContextSetLineDash(context, 1.0, lengths, 2uLL);
}

+ (BOOL)contextWantsHDR:(CGContext *)r
{
  ColorSpace = CGBitmapContextGetColorSpace(r);

  return CGColorSpaceUsesExtendedRange(ColorSpace);
}

@end