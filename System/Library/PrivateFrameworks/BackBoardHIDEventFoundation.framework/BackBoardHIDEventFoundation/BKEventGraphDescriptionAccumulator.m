@interface BKEventGraphDescriptionAccumulator
- (BKEventGraphDescriptionAccumulator)init;
- (id)build;
- (id)pushSection;
- (void)appendNode:()...;
- (void)appendSubnode:()...;
- (void)popSection:(id)a3;
@end

@implementation BKEventGraphDescriptionAccumulator

- (BKEventGraphDescriptionAccumulator)init
{
  v3 = OBJC_IVAR___BKEventGraphDescriptionAccumulator_topLevel;
  type metadata accessor for _GraphNode();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  *(v4 + 2) = 0;
  *(v4 + 3) = v5;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0xE000000000000000;
  *(&self->super.isa + v3) = v4;
  *(&self->super.isa + OBJC_IVAR___BKEventGraphDescriptionAccumulator_current) = v4;
  v7.receiver = self;
  v7.super_class = BKEventGraphDescriptionAccumulator;

  return [(BKEventGraphDescriptionAccumulator *)&v7 init];
}

- (id)pushSection
{
  v2 = *(&self->super.isa + OBJC_IVAR___BKEventGraphDescriptionAccumulator_current);
  v3 = type metadata accessor for _BKGraphSectionWrapper();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC27BackBoardHIDEventFoundation22_BKGraphSectionWrapper_node] = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  v5 = [(BKEventGraphDescriptionAccumulator *)&v7 init];

  return v5;
}

- (void)popSection:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_223CEAD90();
  swift_unknownObjectRelease();
  sub_223CC3858(&v9, &v8);
  type metadata accessor for _BKGraphSectionWrapper();
  swift_dynamicCast();
  v5 = *&v7[OBJC_IVAR____TtC27BackBoardHIDEventFoundation22_BKGraphSectionWrapper_node];

  v6 = *(&v4->super.isa + OBJC_IVAR___BKEventGraphDescriptionAccumulator_current);
  *(&v4->super.isa + OBJC_IVAR___BKEventGraphDescriptionAccumulator_current) = v5;
}

- (id)build
{
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  v7[2] = MEMORY[0x277D84FA0];
  v7[3] = 0;
  v8 = 0;
  v2 = *(&self->super.isa + OBJC_IVAR___BKEventGraphDescriptionAccumulator_topLevel);
  v3 = self;

  sub_223CC34CC(v4, v7, 0);

  v5 = sub_223CEACE0();

  return v5;
}

- (void)appendNode:()...
{
  va_start(va, format);
  if (a1)
  {
    v3 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
    [a1 addSibling:v3];
    CFRelease(v3);
  }
}

- (void)appendSubnode:()...
{
  va_start(va, format);
  if (a1)
  {
    v3 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
    [a1 addSubnode:v3];
    CFRelease(v3);
  }
}

@end