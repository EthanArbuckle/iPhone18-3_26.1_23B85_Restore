@interface RETestDriver
+ (BOOL)closeBookWithViewController:(id)controller;
+ (BOOL)performScrollTestWithViewController:(id)controller name:(id)name iterations:(int)iterations delta:(int)delta;
+ (BOOL)simulateManualPageTurnWithViewController:(id)controller rtl:(BOOL)rtl time:(double)time;
+ (BOOL)turnPageWithViewController:(id)controller forward:(BOOL)forward;
+ (BOOL)turnToInitialPageWithViewController:(id)controller;
+ (id)getBookControllerLayoutWithViewController:(id)controller;
+ (void)setBookControllerLayout:(id)layout viewController:(id)controller;
- (_TtC5Books12RETestDriver)init;
@end

@implementation RETestDriver

+ (BOOL)closeBookWithViewController:(id)controller
{
  type metadata accessor for BookReaderContainerViewController();
  swift_unknownObjectRetain();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    sub_10056D8CC(1);
  }

  swift_unknownObjectRelease();
  return v3 != 0;
}

+ (id)getBookControllerLayoutWithViewController:(id)controller
{
  swift_unknownObjectRetain();
  _s5Books12RETestDriverC23getBookControllerLayout04viewF0SSSgyXl_tFZ_0();
  v4 = v3;
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = sub_1007A2214();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)setBookControllerLayout:(id)layout viewController:(id)controller
{
  v4 = sub_1007A2254();
  v6 = v5;
  swift_unknownObjectRetain();
  _s5Books12RETestDriverC23setBookControllerLayout_04viewF0ySS_yXltFZ_0(v4, v6);
  swift_unknownObjectRelease();
}

+ (BOOL)turnPageWithViewController:(id)controller forward:(BOOL)forward
{
  swift_unknownObjectRetain();
  v6 = _s5Books12RETestDriverC8turnPage14viewController7forwardSbyXl_SbtFZ_0(controller, forward);
  swift_unknownObjectRelease();
  return v6;
}

+ (BOOL)turnToInitialPageWithViewController:(id)controller
{
  type metadata accessor for BookReaderContainerViewController();
  swift_unknownObjectRetain();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1007A0994();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v3 != 0;
}

+ (BOOL)performScrollTestWithViewController:(id)controller name:(id)name iterations:(int)iterations delta:(int)delta
{
  v7 = *&iterations;
  v8 = sub_1007A2254();
  v10 = v9;
  type metadata accessor for BookReaderContainerViewController();
  swift_unknownObjectRetain_n();
  if (swift_dynamicCastClass())
  {
    v11 = sub_100569664(v8, v10, v7, delta);
    swift_unknownObjectRelease_n();
  }

  else
  {

    swift_unknownObjectRelease_n();
    v11 = 0;
  }

  return v11 & 1;
}

+ (BOOL)simulateManualPageTurnWithViewController:(id)controller rtl:(BOOL)rtl time:(double)time
{
  type metadata accessor for BookReaderContainerViewController();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    v7 = sub_1005698A0(rtl, time);
  }

  else
  {
    v7 = 0;
  }

  swift_unknownObjectRelease();
  return v7 & 1;
}

- (_TtC5Books12RETestDriver)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RETestDriver();
  return [(RETestDriver *)&v3 init];
}

@end