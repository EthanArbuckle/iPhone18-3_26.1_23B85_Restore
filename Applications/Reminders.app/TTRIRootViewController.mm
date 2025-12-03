@interface TTRIRootViewController
- (_TtC9Reminders22TTRIRootViewController)initWithCoder:(id)coder;
- (_TtC9Reminders22TTRIRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9Reminders22TTRIRootViewController)initWithStyle:(int64_t)style;
- (id)providerForDeferredMenuElement:(id)element;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)splitViewControllerDidCollapse:(id)collapse;
- (void)splitViewControllerDidExpand:(id)expand;
@end

@implementation TTRIRootViewController

- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column
{
  controllerCopy = controller;
  selfCopy = self;
  v8 = sub_10000E7B4(controllerCopy, column);

  return v8;
}

- (void)splitViewControllerDidCollapse:(id)collapse
{
  collapseCopy = collapse;
  selfCopy = self;
  sub_100010910(collapseCopy);
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_100019B40(viewControllerCopy);
}

- (_TtC9Reminders22TTRIRootViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders22TTRIRootViewController_pendingNavigateToRootPromise) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders22TTRIRootViewController_activityItemsConfigurationProviding) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    selfCopy2 = self;
  }

  sub_1002FBB48(action, v16, &v17);

  sub_1000079B4(v16, &qword_10076AE40);
  v8 = v18;
  if (v18)
  {
    v9 = sub_10000C36C(&v17, v18);
    v10 = *(v8 - 8);
    v11 = __chkstk_darwin(v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v8);
    sub_100004758(&v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)providerForDeferredMenuElement:(id)element
{
  v6[4] = sub_1002FBEDC;
  v6[5] = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10010C96C;
  v6[3] = &unk_10071F4E0;
  v3 = _Block_copy(v6);
  v4 = [objc_opt_self() providerWithElementProvider:v3];
  _Block_release(v3);

  return v4;
}

- (_TtC9Reminders22TTRIRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders22TTRIRootViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)splitViewControllerDidExpand:(id)expand
{
  expandCopy = expand;
  selfCopy = self;
  sub_1002FC56C(expandCopy);
}

@end