@interface _CHWorkoutDetailTextSpacerView
- (CGSize)intrinsicContentSize;
- (_CHWorkoutDetailTextSpacerView)initWithFrame:(CGRect)a3;
@end

@implementation _CHWorkoutDetailTextSpacerView

- (_CHWorkoutDetailTextSpacerView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _CHWorkoutDetailTextSpacerView;
  v3 = [(_CHWorkoutDetailTextSpacerView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor systemBackgroundColor];
    [(_CHWorkoutDetailTextSpacerView *)v3 setBackgroundColor:v4];

    [(_CHWorkoutDetailTextSpacerView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1148846080;
    [(_CHWorkoutDetailTextSpacerView *)v3 setContentHuggingPriority:1 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [(_CHWorkoutDetailTextSpacerView *)v3 setContentCompressionResistancePriority:1 forAxis:v6];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v2 = 0.0;
  v3 = 10.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end