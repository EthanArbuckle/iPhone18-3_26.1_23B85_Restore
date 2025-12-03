@interface HomePodSetupWiFiInfoTableView
- (_TtC14HDSViewService29HomePodSetupWiFiInfoTableView)initWithCoder:(id)coder;
- (_TtC14HDSViewService29HomePodSetupWiFiInfoTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation HomePodSetupWiFiInfoTableView

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_100096100(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (_TtC14HDSViewService29HomePodSetupWiFiInfoTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC14HDSViewService29HomePodSetupWiFiInfoTableView_elements) = _swiftEmptyArrayStorage;
  v10.receiver = self;
  v10.super_class = type metadata accessor for HomePodSetupWiFiInfoTableView();
  return [(HomePodSetupWiFiInfoTableView *)&v10 initWithFrame:style style:x, y, width, height];
}

- (_TtC14HDSViewService29HomePodSetupWiFiInfoTableView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC14HDSViewService29HomePodSetupWiFiInfoTableView_elements) = _swiftEmptyArrayStorage;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomePodSetupWiFiInfoTableView();
  coderCopy = coder;
  v5 = [(HomePodSetupWiFiInfoTableView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end