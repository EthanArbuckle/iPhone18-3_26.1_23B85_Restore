@interface OverlayWindow
- (_TtC18CameraOverlayAngelP33_26879C1C0E4FD34210CC0E55F689DAC713OverlayWindow)initWithCoder:(id)a3;
- (_TtC18CameraOverlayAngelP33_26879C1C0E4FD34210CC0E55F689DAC713OverlayWindow)initWithFrame:(CGRect)a3;
- (_TtC18CameraOverlayAngelP33_26879C1C0E4FD34210CC0E55F689DAC713OverlayWindow)initWithWindowScene:(id)a3;
@end

@implementation OverlayWindow

- (_TtC18CameraOverlayAngelP33_26879C1C0E4FD34210CC0E55F689DAC713OverlayWindow)initWithWindowScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for OverlayWindow();
  return [(OverlayWindow *)&v5 initWithWindowScene:a3];
}

- (_TtC18CameraOverlayAngelP33_26879C1C0E4FD34210CC0E55F689DAC713OverlayWindow)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for OverlayWindow();
  return [(OverlayWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18CameraOverlayAngelP33_26879C1C0E4FD34210CC0E55F689DAC713OverlayWindow)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for OverlayWindow();
  v4 = a3;
  v5 = [(OverlayWindow *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end