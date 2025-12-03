@interface CameraPreviewView
- (_TtC6Tamale17CameraPreviewView)initWithCoder:(id)coder;
- (_TtC6Tamale17CameraPreviewView)initWithFrame:(CGRect)frame;
@end

@implementation CameraPreviewView

- (_TtC6Tamale17CameraPreviewView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_weakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for CameraPreviewView();
  return [(CameraPreviewView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC6Tamale17CameraPreviewView)initWithCoder:(id)coder
{
  swift_weakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for CameraPreviewView();
  coderCopy = coder;
  v6 = [(CameraPreviewView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end