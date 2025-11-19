@interface AUVerticalSegmentControl.SegmentAccessibilityElement
- (BOOL)accessibilityActivate;
- (BOOL)selectAccessibilitySegmentWithAction:(id)a3;
- (_TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement)init;
- (_TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement)initWithAccessibilityContainer:(id)a3;
@end

@implementation AUVerticalSegmentControl.SegmentAccessibilityElement

- (_TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement)initWithAccessibilityContainer:(id)a3
{
  swift_unknownObjectRetain();
  sub_23719682C();
  swift_unknownObjectRelease();
  return sub_237111028(v4);
}

- (BOOL)accessibilityActivate
{
  v2 = self;
  sub_237111A38();

  return 1;
}

- (BOOL)selectAccessibilitySegmentWithAction:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_237114D68();

  return self & 1;
}

- (_TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end