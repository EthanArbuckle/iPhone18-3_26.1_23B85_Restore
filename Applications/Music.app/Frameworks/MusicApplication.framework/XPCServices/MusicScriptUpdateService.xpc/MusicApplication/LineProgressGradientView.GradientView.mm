@interface LineProgressGradientView.GradientView
+ (Class)layerClass;
- (_TtCC7LyricsX24LineProgressGradientViewP33_9D7C40643C469448EA951CEB9521562F12GradientView)initWithCoder:(id)coder;
- (_TtCC7LyricsX24LineProgressGradientViewP33_9D7C40643C469448EA951CEB9521562F12GradientView)initWithFrame:(CGRect)frame;
@end

@implementation LineProgressGradientView.GradientView

+ (Class)layerClass
{
  sub_1004B6318();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [ObjCClassFromMetadata classForCoder];
}

- (_TtCC7LyricsX24LineProgressGradientViewP33_9D7C40643C469448EA951CEB9521562F12GradientView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LineProgressGradientView.GradientView();
  return [(LineProgressGradientView.GradientView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC7LyricsX24LineProgressGradientViewP33_9D7C40643C469448EA951CEB9521562F12GradientView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LineProgressGradientView.GradientView();
  coderCopy = coder;
  v5 = [(LineProgressGradientView.GradientView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end