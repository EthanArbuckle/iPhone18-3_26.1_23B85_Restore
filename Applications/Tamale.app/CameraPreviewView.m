@interface CameraPreviewView
- (_TtC6Tamale17CameraPreviewView)initWithCoder:(id)a3;
- (_TtC6Tamale17CameraPreviewView)initWithFrame:(CGRect)a3;
@end

@implementation CameraPreviewView

- (_TtC6Tamale17CameraPreviewView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_weakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for CameraPreviewView();
  return [(CameraPreviewView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC6Tamale17CameraPreviewView)initWithCoder:(id)a3
{
  swift_weakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for CameraPreviewView();
  v5 = a3;
  v6 = [(CameraPreviewView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end