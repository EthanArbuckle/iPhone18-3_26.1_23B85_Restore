@interface SSSCropOverlayLineView
- (SSSCropOverlayLineView)initWithEdge:(unint64_t)edge;
- (void)tintColorDidChange;
@end

@implementation SSSCropOverlayLineView

- (SSSCropOverlayLineView)initWithEdge:(unint64_t)edge
{
  v5.receiver = self;
  v5.super_class = SSSCropOverlayLineView;
  result = [(SSSCropOverlayLineView *)&v5 init];
  result->_edge = edge;
  return result;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = SSSCropOverlayLineView;
  [(SSSCropOverlayLineView *)&v4 tintColorDidChange];
  tintColor = [(SSSCropOverlayLineView *)self tintColor];
  [(SSSCropOverlayLineView *)self setBackgroundColor:tintColor];
}

@end