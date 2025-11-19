@interface FigCaptionRowLayer
- (void)setNeedsDisplay;
@end

@implementation FigCaptionRowLayer

- (void)setNeedsDisplay
{
  if (getDisplayScale_onceToken != -1)
  {
    [FigCaptionRowLayer setNeedsDisplay];
  }

  v3 = *&sMaxDisplayScale;
  [(FigCaptionRowLayer *)self contentsScale];
  if (v4 != v3)
  {
    [(FigCaptionRowLayer *)self setContentsScale:v3];
  }

  v5.receiver = self;
  v5.super_class = FigCaptionRowLayer;
  [(FigBaseCALayer *)&v5 setNeedsDisplay];
}

@end