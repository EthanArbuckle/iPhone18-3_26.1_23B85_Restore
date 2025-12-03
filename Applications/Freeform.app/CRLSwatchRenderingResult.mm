@interface CRLSwatchRenderingResult
+ (id)renderingResultWithForeground:(CGImage *)foreground background:(CGImage *)background;
- (void)dealloc;
@end

@implementation CRLSwatchRenderingResult

+ (id)renderingResultWithForeground:(CGImage *)foreground background:(CGImage *)background
{
  v6 = objc_alloc_init(CRLSwatchRenderingResult);
  v6->foreground = CGImageRetain(foreground);
  v6->background = CGImageRetain(background);

  return v6;
}

- (void)dealloc
{
  CGImageRelease(self->foreground);
  CGImageRelease(self->background);
  v3.receiver = self;
  v3.super_class = CRLSwatchRenderingResult;
  [(CRLSwatchRenderingResult *)&v3 dealloc];
}

@end