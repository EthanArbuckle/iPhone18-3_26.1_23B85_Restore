@interface _NTKCUltraCubeOverlayScrollView
- (_NTKCUltraCubeOverlayScrollView)initWithCoder:(id)coder;
- (_NTKCUltraCubeOverlayScrollView)initWithFrame:(CGRect)frame;
@end

@implementation _NTKCUltraCubeOverlayScrollView

- (_NTKCUltraCubeOverlayScrollView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _NTKCUltraCubeOverlayScrollView;
  v3 = [(_NTKCUltraCubeOverlayScrollView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v8.receiver = v3;
    v8.super_class = _NTKCUltraCubeOverlayScrollView;
    [(_NTKCUltraCubeOverlayScrollView *)&v8 setUserInteractionEnabled:0];
    v7.receiver = v4;
    v7.super_class = _NTKCUltraCubeOverlayScrollView;
    [(_NTKCUltraCubeOverlayScrollView *)&v7 setMinimumZoomScale:0.001];
    v6.receiver = v4;
    v6.super_class = _NTKCUltraCubeOverlayScrollView;
    [(_NTKCUltraCubeOverlayScrollView *)&v6 setMaximumZoomScale:10000.0];
  }

  return v4;
}

- (_NTKCUltraCubeOverlayScrollView)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = _NTKCUltraCubeOverlayScrollView;
  v3 = [(_NTKCUltraCubeOverlayScrollView *)&v9 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    v8.receiver = v3;
    v8.super_class = _NTKCUltraCubeOverlayScrollView;
    [(_NTKCUltraCubeOverlayScrollView *)&v8 setUserInteractionEnabled:0];
    v7.receiver = v4;
    v7.super_class = _NTKCUltraCubeOverlayScrollView;
    [(_NTKCUltraCubeOverlayScrollView *)&v7 setMinimumZoomScale:0.001];
    v6.receiver = v4;
    v6.super_class = _NTKCUltraCubeOverlayScrollView;
    [(_NTKCUltraCubeOverlayScrollView *)&v6 setMaximumZoomScale:10000.0];
  }

  return v4;
}

@end