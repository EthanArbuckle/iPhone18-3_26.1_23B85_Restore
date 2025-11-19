@interface PASVSSetupEventPresenter
- (_TtC14PASViewService24PASVSSetupEventPresenter)init;
- (_TtP14PASViewService22PASViewServiceProtocol_)delegate;
- (void)authCompleted:(CUMessageSession *)a3 completionHandler:(id)a4;
- (void)authRequested;
- (void)proximitySetupCompletedWithResult:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setPresentingViewController:(id)a3;
- (void)showErrorWithTitle:(id)a3 message:(id)a4;
- (void)showManualPinEntry;
- (void)showPinEntryError;
- (void)showProxCard;
@end

@implementation PASVSSetupEventPresenter

- (void)setPresentingViewController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_presentingViewController);
  *(&self->super.isa + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_presentingViewController) = a3;
  v3 = a3;
}

- (_TtP14PASViewService22PASViewServiceProtocol_)delegate
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setDelegate:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate);
  *(&self->super.isa + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)showProxCard
{
  v2 = self;
  sub_100008B04();
}

- (void)authRequested
{
  v2 = self;
  sub_10000AEBC();
}

- (void)showManualPinEntry
{
  v2 = self;
  sub_10000B0D4();
}

- (void)showPinEntryError
{
  v2 = self;
  sub_10000B6EC();
}

- (void)authCompleted:(CUMessageSession *)a3 completionHandler:(id)a4
{
  v7 = sub_100001E28(&unk_100025EC0, &qword_100017420);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100017BB8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100017BC8;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_10000D1BC(0, 0, v10, &unk_100017BD8, v15);
}

- (void)showErrorWithTitle:(id)a3 message:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = self;
  sub_10000C3D8(v5, v7, v8, v10);
}

- (_TtC14PASViewService24PASVSSetupEventPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)proximitySetupCompletedWithResult:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000D8D8();
}

@end