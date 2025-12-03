@interface PreviewView
+ (Class)layerClass;
- (_TtC13ClarityCamera11PreviewView)initWithCoder:(id)coder;
- (_TtC13ClarityCamera11PreviewView)initWithFrame:(CGRect)frame;
@end

@implementation PreviewView

+ (Class)layerClass
{
  sub_10000B0C4(0, &qword_100035990, AVCaptureVideoPreviewLayer_ptr);

  return swift_getObjCClassFromMetadata();
}

- (_TtC13ClarityCamera11PreviewView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PreviewView();
  return [(PreviewView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC13ClarityCamera11PreviewView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PreviewView();
  coderCopy = coder;
  v5 = [(PreviewView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end