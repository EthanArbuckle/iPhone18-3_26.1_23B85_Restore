@interface AUVerticalSegmentControl.SegmentAccessibilityElement
- (BOOL)accessibilityActivate;
- (BOOL)selectAccessibilitySegmentWithAction:(id)action;
- (_TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement)init;
- (_TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement)initWithAccessibilityContainer:(id)container;
@end

@implementation AUVerticalSegmentControl.SegmentAccessibilityElement

- (_TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement)initWithAccessibilityContainer:(id)container
{
  swift_unknownObjectRetain();
  sub_23719682C();
  swift_unknownObjectRelease();
  return sub_237111028(v4);
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  sub_237111A38();

  return 1;
}

- (BOOL)selectAccessibilitySegmentWithAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
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