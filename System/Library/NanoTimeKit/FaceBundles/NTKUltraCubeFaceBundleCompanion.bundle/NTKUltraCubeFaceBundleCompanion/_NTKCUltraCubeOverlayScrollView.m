@interface _NTKCUltraCubeOverlayScrollView
- (_NTKCUltraCubeOverlayScrollView)initWithCoder:(id)a3;
- (_NTKCUltraCubeOverlayScrollView)initWithFrame:(CGRect)a3;
@end

@implementation _NTKCUltraCubeOverlayScrollView

- (_NTKCUltraCubeOverlayScrollView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = _NTKCUltraCubeOverlayScrollView;
  v3 = [(_NTKCUltraCubeOverlayScrollView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (_NTKCUltraCubeOverlayScrollView)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = _NTKCUltraCubeOverlayScrollView;
  v3 = [(_NTKCUltraCubeOverlayScrollView *)&v9 initWithCoder:a3];
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