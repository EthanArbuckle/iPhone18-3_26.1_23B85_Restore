@interface FMDeviceEditableMessageViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)completeAction;
- (void)traitCollectionDidChange:(id)change;
- (void)updateViewConstraints;
@end

@implementation FMDeviceEditableMessageViewController

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100096E34();
}

- (void)updateViewConstraints
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMDeviceEditableMessageViewController();
  v2 = v7.receiver;
  [(FMDeviceEditableMessageViewController *)&v7 updateViewConstraints];
  v3 = *&v2[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_tableViewheightConstraint];
  if (v3)
  {
    v4 = *&v2[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_tableView];
    v5 = v3;
    [v4 intrinsicContentSize];
    [v5 setConstant:v6];
  }

  else
  {
    __break(1u);
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_100094060(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)completeAction
{
  selfCopy = self;
  sub_1000948F0();
}

@end