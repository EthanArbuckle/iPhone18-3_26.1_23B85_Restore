@interface RETestDriver
+ (BOOL)closeBookWithViewController:(id)a3;
+ (BOOL)performScrollTestWithViewController:(id)a3 name:(id)a4 iterations:(int)a5 delta:(int)a6;
+ (BOOL)simulateManualPageTurnWithViewController:(id)a3 rtl:(BOOL)a4 time:(double)a5;
+ (BOOL)turnPageWithViewController:(id)a3 forward:(BOOL)a4;
+ (BOOL)turnToInitialPageWithViewController:(id)a3;
+ (id)getBookControllerLayoutWithViewController:(id)a3;
+ (void)setBookControllerLayout:(id)a3 viewController:(id)a4;
- (_TtC5Books12RETestDriver)init;
@end

@implementation RETestDriver

+ (BOOL)closeBookWithViewController:(id)a3
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

+ (id)getBookControllerLayoutWithViewController:(id)a3
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

+ (void)setBookControllerLayout:(id)a3 viewController:(id)a4
{
  v4 = sub_1007A2254();
  v6 = v5;
  swift_unknownObjectRetain();
  _s5Books12RETestDriverC23setBookControllerLayout_04viewF0ySS_yXltFZ_0(v4, v6);
  swift_unknownObjectRelease();
}

+ (BOOL)turnPageWithViewController:(id)a3 forward:(BOOL)a4
{
  swift_unknownObjectRetain();
  v6 = _s5Books12RETestDriverC8turnPage14viewController7forwardSbyXl_SbtFZ_0(a3, a4);
  swift_unknownObjectRelease();
  return v6;
}

+ (BOOL)turnToInitialPageWithViewController:(id)a3
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

+ (BOOL)performScrollTestWithViewController:(id)a3 name:(id)a4 iterations:(int)a5 delta:(int)a6
{
  v7 = *&a5;
  v8 = sub_1007A2254();
  v10 = v9;
  type metadata accessor for BookReaderContainerViewController();
  swift_unknownObjectRetain_n();
  if (swift_dynamicCastClass())
  {
    v11 = sub_100569664(v8, v10, v7, a6);
    swift_unknownObjectRelease_n();
  }

  else
  {

    swift_unknownObjectRelease_n();
    v11 = 0;
  }

  return v11 & 1;
}

+ (BOOL)simulateManualPageTurnWithViewController:(id)a3 rtl:(BOOL)a4 time:(double)a5
{
  type metadata accessor for BookReaderContainerViewController();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    v7 = sub_1005698A0(a4, a5);
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