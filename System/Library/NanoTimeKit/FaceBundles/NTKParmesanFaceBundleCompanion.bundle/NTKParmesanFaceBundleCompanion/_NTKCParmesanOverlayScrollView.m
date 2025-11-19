@interface _NTKCParmesanOverlayScrollView
- (_NTKCParmesanOverlayScrollView)initWithCoder:(id)a3;
- (_NTKCParmesanOverlayScrollView)initWithFrame:(CGRect)a3;
@end

@implementation _NTKCParmesanOverlayScrollView

- (_NTKCParmesanOverlayScrollView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = _NTKCParmesanOverlayScrollView;
  v3 = [(NTKCCenteringScrollView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v8.receiver = v3;
    v8.super_class = _NTKCParmesanOverlayScrollView;
    [(_NTKCParmesanOverlayScrollView *)&v8 setUserInteractionEnabled:0];
    v7.receiver = v4;
    v7.super_class = _NTKCParmesanOverlayScrollView;
    [(_NTKCParmesanOverlayScrollView *)&v7 setMinimumZoomScale:0.001];
    v6.receiver = v4;
    v6.super_class = _NTKCParmesanOverlayScrollView;
    [(_NTKCParmesanOverlayScrollView *)&v6 setMaximumZoomScale:10000.0];
  }

  return v4;
}

- (_NTKCParmesanOverlayScrollView)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = _NTKCParmesanOverlayScrollView;
  v3 = [(_NTKCParmesanOverlayScrollView *)&v9 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v8.receiver = v3;
    v8.super_class = _NTKCParmesanOverlayScrollView;
    [(_NTKCParmesanOverlayScrollView *)&v8 setUserInteractionEnabled:0];
    v7.receiver = v4;
    v7.super_class = _NTKCParmesanOverlayScrollView;
    [(_NTKCParmesanOverlayScrollView *)&v7 setMinimumZoomScale:0.001];
    v6.receiver = v4;
    v6.super_class = _NTKCParmesanOverlayScrollView;
    [(_NTKCParmesanOverlayScrollView *)&v6 setMaximumZoomScale:10000.0];
  }

  return v4;
}

@end