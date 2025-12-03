@interface ActivitySharingNavigationController
- (_TtC10FitnessApp35ActivitySharingNavigationController)initWithCoder:(id)coder;
- (_TtC10FitnessApp35ActivitySharingNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC10FitnessApp35ActivitySharingNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC10FitnessApp35ActivitySharingNavigationController)initWithRootViewController:(id)controller;
- (void)handleActivitySharingURL:(id)l;
- (void)scrollToTop;
@end

@implementation ActivitySharingNavigationController

- (void)scrollToTop
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp35ActivitySharingNavigationController_viewController) + qword_1008E0F80;
  v3 = *(v2 + 1);
  v15[0] = *v2;
  v15[1] = v3;
  v4 = *(v2 + 5);
  v6 = *(v2 + 2);
  v5 = *(v2 + 3);
  v15[4] = *(v2 + 4);
  v15[5] = v4;
  v15[2] = v6;
  v15[3] = v5;
  v7 = *(v2 + 9);
  v9 = *(v2 + 6);
  v8 = *(v2 + 7);
  v15[8] = *(v2 + 8);
  v15[9] = v7;
  v15[6] = v9;
  v15[7] = v8;
  v11 = *(v2 + 11);
  v10 = *(v2 + 12);
  v12 = *(v2 + 10);
  v16 = *(v2 + 26);
  v15[11] = v11;
  v15[12] = v10;
  v15[10] = v12;
  selfCopy = self;
  sub_1000262F0(v15, v14);
  sub_10014846C();
  sub_100026328(v15);
}

- (_TtC10FitnessApp35ActivitySharingNavigationController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp35ActivitySharingNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp35ActivitySharingNavigationController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp35ActivitySharingNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleActivitySharingURL:(id)l
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp35ActivitySharingNavigationController_viewController) + qword_1008E0F80;
  v9 = *(v8 + 1);
  v22[0] = *v8;
  v22[1] = v9;
  v10 = *(v8 + 5);
  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  v22[4] = *(v8 + 4);
  v22[5] = v10;
  v22[2] = v12;
  v22[3] = v11;
  v13 = *(v8 + 9);
  v15 = *(v8 + 6);
  v14 = *(v8 + 7);
  v22[8] = *(v8 + 8);
  v22[9] = v13;
  v22[6] = v15;
  v22[7] = v14;
  v17 = *(v8 + 11);
  v16 = *(v8 + 12);
  v18 = *(v8 + 10);
  v23 = *(v8 + 26);
  v22[11] = v17;
  v22[12] = v16;
  v22[10] = v18;
  selfCopy = self;
  sub_1000262F0(v22, &v21);
  sub_1001485A4(v7);
  sub_100026328(v22);
  (*(v5 + 8))(v7, v4);
}

@end