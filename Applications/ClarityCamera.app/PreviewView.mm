@interface PreviewView
+ (Class)layerClass;
- (_TtC13ClarityCamera11PreviewView)initWithCoder:(id)a3;
- (_TtC13ClarityCamera11PreviewView)initWithFrame:(CGRect)a3;
@end

@implementation PreviewView

+ (Class)layerClass
{
  sub_10000B0C4(0, &qword_100035990, AVCaptureVideoPreviewLayer_ptr);

  return swift_getObjCClassFromMetadata();
}

- (_TtC13ClarityCamera11PreviewView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PreviewView();
  return [(PreviewView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC13ClarityCamera11PreviewView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PreviewView();
  v4 = a3;
  v5 = [(PreviewView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end