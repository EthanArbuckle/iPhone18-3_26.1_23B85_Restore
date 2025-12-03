@interface OverlayWindow
- (_TtC18CameraOverlayAngelP33_26879C1C0E4FD34210CC0E55F689DAC713OverlayWindow)initWithCoder:(id)coder;
- (_TtC18CameraOverlayAngelP33_26879C1C0E4FD34210CC0E55F689DAC713OverlayWindow)initWithFrame:(CGRect)frame;
- (_TtC18CameraOverlayAngelP33_26879C1C0E4FD34210CC0E55F689DAC713OverlayWindow)initWithWindowScene:(id)scene;
@end

@implementation OverlayWindow

- (_TtC18CameraOverlayAngelP33_26879C1C0E4FD34210CC0E55F689DAC713OverlayWindow)initWithWindowScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for OverlayWindow();
  return [(OverlayWindow *)&v5 initWithWindowScene:scene];
}

- (_TtC18CameraOverlayAngelP33_26879C1C0E4FD34210CC0E55F689DAC713OverlayWindow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for OverlayWindow();
  return [(OverlayWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18CameraOverlayAngelP33_26879C1C0E4FD34210CC0E55F689DAC713OverlayWindow)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for OverlayWindow();
  coderCopy = coder;
  v5 = [(OverlayWindow *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end