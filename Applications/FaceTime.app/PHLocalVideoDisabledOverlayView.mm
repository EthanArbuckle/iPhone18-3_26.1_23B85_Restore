@interface PHLocalVideoDisabledOverlayView
- (PHLocalVideoDisabledOverlayView)initWithFrame:(CGRect)frame;
@end

@implementation PHLocalVideoDisabledOverlayView

- (PHLocalVideoDisabledOverlayView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PHLocalVideoDisabledOverlayView;
  v3 = [(PHLocalVideoDisabledOverlayView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [_UIBackdropView alloc];
    [(PHLocalVideoDisabledOverlayView *)v3 bounds];
    v5 = [v4 initWithFrame:2030 privateStyle:?];
    [v5 setAutoresizingMask:18];
    [(PHLocalVideoDisabledOverlayView *)v3 addSubview:v5];
  }

  return v3;
}

@end