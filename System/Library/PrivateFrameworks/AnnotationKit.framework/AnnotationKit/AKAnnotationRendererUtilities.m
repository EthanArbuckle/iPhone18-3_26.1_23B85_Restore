@interface AKAnnotationRendererUtilities
+ (BOOL)contextWantsHDR:(CGContext *)a3;
+ (CGPoint)_shadowDirectionForAnnotation:(id)a3;
+ (CGRect)outsetRectForShadow:(CGRect)a3 onAnnotation:(id)a4;
+ (void)beginShadowInContext:(CGContext *)a3 forAnnotation:(id)a4;
+ (void)endShadowInContext:(CGContext *)a3;
+ (void)setStandardLineDashInContext:(CGContext *)a3 forLineWidth:(double)a4;
+ (void)setStandardLineStateInContext:(CGContext *)a3 forLineWidth:(double)a4;
@end

@implementation AKAnnotationRendererUtilities

+ (CGPoint)_shadowDirectionForAnnotation:(id)a3
{
  v3 = +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [a3 originalExifOrientation]);
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);

  [AKGeometryHelper adjustPoint:v3 forExifOrientation:0.0 aboutCenter:-3.0, v4, v5];
  result.y = v7;
  result.x = v6;
  return result;
}

+ (CGRect)outsetRectForShadow:(CGRect)a3 onAnnotation:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [a4 originalModelBaseScaleFactor];
  v9 = v8 * -3.75;
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;

  return CGRectInset(*&v10, v9, v9);
}

+ (void)beginShadowInContext:(CGContext *)a3 forAnnotation:(id)a4
{
  v6 = a4;
  CGContextSaveGState(a3);
  [a1 _shadowDirectionForAnnotation:v6];
  v8 = v7;
  v10 = v9;
  [v6 originalModelBaseScaleFactor];
  v12 = v11;

  v13 = [MEMORY[0x277D75348] akColorWithWhite:0.0 alpha:0.3];
  v14 = [v13 CGColor];
  v16.width = v8 * v12;
  v16.height = v10 * v12;
  CGContextSetShadowWithColor(a3, v16, v12 * 3.0, v14);

  CGContextBeginTransparencyLayer(a3, 0);
}

+ (void)endShadowInContext:(CGContext *)a3
{
  CGContextEndTransparencyLayer(a3);

  CGContextRestoreGState(a3);
}

+ (void)setStandardLineStateInContext:(CGContext *)a3 forLineWidth:(double)a4
{
  CGContextSetLineWidth(a3, a4);
  CGContextSetLineCap(a3, kCGLineCapSquare);
  CGContextSetLineJoin(a3, kCGLineJoinMiter);

  CGContextSetMiterLimit(a3, 10.0);
}

+ (void)setStandardLineDashInContext:(CGContext *)a3 forLineWidth:(double)a4
{
  lengths[2] = *MEMORY[0x277D85DE8];
  lengths[0] = a4 + 7.0;
  lengths[1] = a4 * 3.0 + 4.0;
  CGContextSetLineDash(a3, 1.0, lengths, 2uLL);
}

+ (BOOL)contextWantsHDR:(CGContext *)a3
{
  ColorSpace = CGBitmapContextGetColorSpace(a3);

  return CGColorSpaceUsesExtendedRange(ColorSpace);
}

@end