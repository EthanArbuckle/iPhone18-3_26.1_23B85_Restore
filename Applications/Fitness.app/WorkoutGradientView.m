@interface WorkoutGradientView
+ (Class)layerClass;
- (_TtC10FitnessApp19WorkoutGradientView)initWithCoder:(id)a3;
- (_TtC10FitnessApp19WorkoutGradientView)initWithFrame:(CGRect)a3;
@end

@implementation WorkoutGradientView

+ (Class)layerClass
{
  sub_1000059F8(0, &qword_1008EE1D8);

  return swift_getObjCClassFromMetadata();
}

- (_TtC10FitnessApp19WorkoutGradientView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for WorkoutGradientView();
  return [(WorkoutGradientView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC10FitnessApp19WorkoutGradientView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutGradientView();
  v4 = a3;
  v5 = [(WorkoutGradientView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end