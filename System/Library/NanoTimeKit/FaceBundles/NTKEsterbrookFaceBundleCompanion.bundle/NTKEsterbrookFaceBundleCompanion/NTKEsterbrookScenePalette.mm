@interface NTKEsterbrookScenePalette
+ (NTKEsterbrookScenePalette)tritium;
+ (id)interpolateWithStart:(id)start end:(id)end fraction:(double)fraction;
- (BOOL)isEqual:(id)equal;
- (NTKEsterbrookScenePalette)init;
- (NTKEsterbrookScenePalette)initWithColorPalette:(id)palette;
@end

@implementation NTKEsterbrookScenePalette

+ (NTKEsterbrookScenePalette)tritium
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.156862745 green:0.156862745 blue:0.156862745 alpha:1.0];
  v3 = objc_opt_self();
  blackColor = [v3 blackColor];
  blackColor2 = [v3 blackColor];
  v6 = type metadata accessor for ScenePalette();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___NTKEsterbrookScenePalette_background] = v2;
  *&v7[OBJC_IVAR___NTKEsterbrookScenePalette_overlay] = blackColor;
  *&v7[OBJC_IVAR___NTKEsterbrookScenePalette_secondHand] = blackColor2;
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

- (NTKEsterbrookScenePalette)initWithColorPalette:(id)palette
{
  swift_unknownObjectRetain();
  background = [palette background];
  *(&self->super.isa + OBJC_IVAR___NTKEsterbrookScenePalette_background) = background;
  overlay = [palette overlay];
  *(&self->super.isa + OBJC_IVAR___NTKEsterbrookScenePalette_overlay) = overlay;
  secondHand = [palette secondHand];
  *(&self->super.isa + OBJC_IVAR___NTKEsterbrookScenePalette_secondHand) = secondHand;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ScenePalette();
  v8 = [(NTKEsterbrookScenePalette *)&v10 init];
  swift_unknownObjectRelease();
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_23BE32AB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_23BE31048(v8);

  sub_23BE31338(v8);
  return v6 & 1;
}

- (NTKEsterbrookScenePalette)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)interpolateWithStart:(id)start end:(id)end fraction:(double)fraction
{
  swift_getObjCClassMetadata();
  startCopy = start;
  endCopy = end;
  v9 = sub_23BE30D44();

  return v9;
}

@end