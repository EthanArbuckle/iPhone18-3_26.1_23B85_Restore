@interface NTKEsterbrookScenePalette
+ (NTKEsterbrookScenePalette)tritium;
+ (id)interpolateWithStart:(id)a3 end:(id)a4 fraction:(double)a5;
- (BOOL)isEqual:(id)a3;
- (NTKEsterbrookScenePalette)init;
- (NTKEsterbrookScenePalette)initWithColorPalette:(id)a3;
@end

@implementation NTKEsterbrookScenePalette

+ (NTKEsterbrookScenePalette)tritium
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.156862745 green:0.156862745 blue:0.156862745 alpha:1.0];
  v3 = objc_opt_self();
  v4 = [v3 blackColor];
  v5 = [v3 blackColor];
  v6 = type metadata accessor for ScenePalette();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___NTKEsterbrookScenePalette_background] = v2;
  *&v7[OBJC_IVAR___NTKEsterbrookScenePalette_overlay] = v4;
  *&v7[OBJC_IVAR___NTKEsterbrookScenePalette_secondHand] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

- (NTKEsterbrookScenePalette)initWithColorPalette:(id)a3
{
  swift_unknownObjectRetain();
  v5 = [a3 background];
  *(&self->super.isa + OBJC_IVAR___NTKEsterbrookScenePalette_background) = v5;
  v6 = [a3 overlay];
  *(&self->super.isa + OBJC_IVAR___NTKEsterbrookScenePalette_overlay) = v6;
  v7 = [a3 secondHand];
  *(&self->super.isa + OBJC_IVAR___NTKEsterbrookScenePalette_secondHand) = v7;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ScenePalette();
  v8 = [(NTKEsterbrookScenePalette *)&v10 init];
  swift_unknownObjectRelease();
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_23BE32AB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
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

+ (id)interpolateWithStart:(id)a3 end:(id)a4 fraction:(double)a5
{
  swift_getObjCClassMetadata();
  v7 = a3;
  v8 = a4;
  v9 = sub_23BE30D44();

  return v9;
}

@end