@interface SSSCropOverlayLineView
- (SSSCropOverlayLineView)initWithEdge:(unint64_t)a3;
- (void)tintColorDidChange;
@end

@implementation SSSCropOverlayLineView

- (SSSCropOverlayLineView)initWithEdge:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SSSCropOverlayLineView;
  result = [(SSSCropOverlayLineView *)&v5 init];
  result->_edge = a3;
  return result;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = SSSCropOverlayLineView;
  [(SSSCropOverlayLineView *)&v4 tintColorDidChange];
  v3 = [(SSSCropOverlayLineView *)self tintColor];
  [(SSSCropOverlayLineView *)self setBackgroundColor:v3];
}

@end