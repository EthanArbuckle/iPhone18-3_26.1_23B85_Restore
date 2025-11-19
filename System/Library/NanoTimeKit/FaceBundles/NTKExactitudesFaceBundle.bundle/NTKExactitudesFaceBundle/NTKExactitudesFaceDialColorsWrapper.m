@interface NTKExactitudesFaceDialColorsWrapper
- (NTKExactitudesFaceDialColorsWrapper)init;
- (NTKExactitudesFaceDialColorsWrapper)initWithHourColor:(id)a3 minuteColor:(id)a4 secondColor:(id)a5 foregroundColor:(id)a6;
@end

@implementation NTKExactitudesFaceDialColorsWrapper

- (NTKExactitudesFaceDialColorsWrapper)initWithHourColor:(id)a3 minuteColor:(id)a4 secondColor:(id)a5 foregroundColor:(id)a6
{
  v10 = (&self->super.isa + OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors);
  *v10 = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  v16.receiver = self;
  v16.super_class = type metadata accessor for FaceDialColorsWrapper();
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  return [(NTKExactitudesFaceDialColorsWrapper *)&v16 init];
}

- (NTKExactitudesFaceDialColorsWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end