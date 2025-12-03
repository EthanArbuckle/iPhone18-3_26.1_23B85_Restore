@interface NTKExactitudesFaceDialColorsWrapper
- (NTKExactitudesFaceDialColorsWrapper)init;
- (NTKExactitudesFaceDialColorsWrapper)initWithHourColor:(id)color minuteColor:(id)minuteColor secondColor:(id)secondColor foregroundColor:(id)foregroundColor;
@end

@implementation NTKExactitudesFaceDialColorsWrapper

- (NTKExactitudesFaceDialColorsWrapper)initWithHourColor:(id)color minuteColor:(id)minuteColor secondColor:(id)secondColor foregroundColor:(id)foregroundColor
{
  v10 = (&self->super.isa + OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors);
  *v10 = color;
  v10[1] = minuteColor;
  v10[2] = secondColor;
  v10[3] = foregroundColor;
  v16.receiver = self;
  v16.super_class = type metadata accessor for FaceDialColorsWrapper();
  colorCopy = color;
  minuteColorCopy = minuteColor;
  secondColorCopy = secondColor;
  foregroundColorCopy = foregroundColor;
  return [(NTKExactitudesFaceDialColorsWrapper *)&v16 init];
}

- (NTKExactitudesFaceDialColorsWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end