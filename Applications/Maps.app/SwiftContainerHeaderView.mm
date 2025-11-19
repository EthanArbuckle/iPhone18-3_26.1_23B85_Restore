@interface SwiftContainerHeaderView
- (NSArray)trailingButtons;
- (_TtP4Maps23SwiftHeaderViewDelegate_)delegate;
- (double)trailingButtonInset;
- (void)setDelegate:(id)a3;
- (void)setHeaderSize:(int64_t)a3;
- (void)setLeadingImage:(id)a3;
- (void)setParentViewController:(id)a3;
- (void)setTrailingButtons:(id)a3;
@end

@implementation SwiftContainerHeaderView

- (void)setHeaderSize:(int64_t)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_headerSize);
  *(self + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_headerSize) = a3;
  if (v4 != a3)
  {
    v5 = self;
    sub_100519EEC();
  }
}

- (void)setLeadingImage:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100519770(a3);
}

- (NSArray)trailingButtons
{
  sub_100014C84(0, &qword_101909920);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setTrailingButtons:(id)a3
{
  sub_100014C84(0, &qword_101909920);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_trailingButtons);
  *(self + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_trailingButtons) = v4;
  v7 = self;

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

- (void)setDelegate:(id)a3
{
  *(self + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_delegate) = a3;
  swift_unknownObjectRetain_n();
  v4 = self;
  swift_unknownObjectRelease();
  sub_100519EEC();
  swift_unknownObjectRelease();
}

- (void)setParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100519A58(a3);
}

- (double)trailingButtonInset
{
  v2 = self;
  v3 = sub_10051AF64();

  return v3;
}

@end