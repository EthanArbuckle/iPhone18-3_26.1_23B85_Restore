@interface SwiftContainerHeaderView
- (NSArray)trailingButtons;
- (_TtP4Maps23SwiftHeaderViewDelegate_)delegate;
- (double)trailingButtonInset;
- (void)setDelegate:(id)delegate;
- (void)setHeaderSize:(int64_t)size;
- (void)setLeadingImage:(id)image;
- (void)setParentViewController:(id)controller;
- (void)setTrailingButtons:(id)buttons;
@end

@implementation SwiftContainerHeaderView

- (void)setHeaderSize:(int64_t)size
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_headerSize);
  *(self + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_headerSize) = size;
  if (v4 != size)
  {
    selfCopy = self;
    sub_100519EEC();
  }
}

- (void)setLeadingImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  sub_100519770(image);
}

- (NSArray)trailingButtons
{
  sub_100014C84(0, &qword_101909920);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setTrailingButtons:(id)buttons
{
  sub_100014C84(0, &qword_101909920);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_trailingButtons);
  *(self + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_trailingButtons) = v4;
  selfCopy = self;

  LOBYTE(self) = sub_1001F1224(v6, v5);

  if ((self & 1) == 0)
  {
    sub_100519EEC();
  }
}

- (_TtP4Maps23SwiftHeaderViewDelegate_)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  *(self + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_delegate) = delegate;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  swift_unknownObjectRelease();
  sub_100519EEC();
  swift_unknownObjectRelease();
}

- (void)setParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100519A58(controller);
}

- (double)trailingButtonInset
{
  selfCopy = self;
  v3 = sub_10051AF64();

  return v3;
}

@end