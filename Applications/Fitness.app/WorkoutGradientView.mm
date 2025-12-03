@interface WorkoutGradientView
+ (Class)layerClass;
- (_TtC10FitnessApp19WorkoutGradientView)initWithCoder:(id)coder;
- (_TtC10FitnessApp19WorkoutGradientView)initWithFrame:(CGRect)frame;
@end

@implementation WorkoutGradientView

+ (Class)layerClass
{
  sub_1000059F8(0, &qword_1008EE1D8);

  return swift_getObjCClassFromMetadata();
}

- (_TtC10FitnessApp19WorkoutGradientView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for WorkoutGradientView();
  return [(WorkoutGradientView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC10FitnessApp19WorkoutGradientView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutGradientView();
  coderCopy = coder;
  v5 = [(WorkoutGradientView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end