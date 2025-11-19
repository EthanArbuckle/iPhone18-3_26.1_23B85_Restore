@interface LineProgressGradientView.GradientView
+ (Class)layerClass;
- (_TtCC7LyricsX24LineProgressGradientViewP33_9D7C40643C469448EA951CEB9521562F12GradientView)initWithCoder:(id)a3;
- (_TtCC7LyricsX24LineProgressGradientViewP33_9D7C40643C469448EA951CEB9521562F12GradientView)initWithFrame:(CGRect)a3;
@end

@implementation LineProgressGradientView.GradientView

+ (Class)layerClass
{
  type metadata accessor for CAGradientLayer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [ObjCClassFromMetadata classForCoder];
}

- (_TtCC7LyricsX24LineProgressGradientViewP33_9D7C40643C469448EA951CEB9521562F12GradientView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LineProgressGradientView.GradientView();
  return [(LineProgressGradientView.GradientView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC7LyricsX24LineProgressGradientViewP33_9D7C40643C469448EA951CEB9521562F12GradientView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LineProgressGradientView.GradientView();
  v4 = a3;
  v5 = [(LineProgressGradientView.GradientView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end