@interface EditingController
- (BOOL)editor:(id)a3 shouldAllowUserToSelectTimeFontConfiguration:(id)a4;
- (_TtC20PridePosterExtension17EditingController)init;
- (double)editor:(id)a3 luminanceForLook:(id)a4 inRect:(CGRect)a5;
- (id)initialLookIdentifierForEditor:(id)a3;
- (id)looksForEditor:(id)a3;
- (id)timeColorPickerConfigurationForEditor:(id)a3;
- (void)editor:(id)a3 didFinishTransitionToLook:(id)a4;
- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)editor:(id)a3 finalizeWithCompletion:(id)a4;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidInvalidate:(id)a3;
@end

@implementation EditingController

- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_10001BE44(v6, a4);

  swift_unknownObjectRelease();
}

- (id)initialLookIdentifierForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001CA9C(v4);

  v6 = sub_10002340C();

  return v6;
}

- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v8 = OBJC_IVAR____TtC20PridePosterExtension17EditingController_coordinators;
  swift_beginAccess();
  v9 = *(&self->super.isa + v8);
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = self;

  v12 = a5;
  v13 = sub_10001BC38(v10, v9, sub_100005A80, &type metadata accessor for WallpaperMetalCoordination.EditingCoordinator);

  if (v13)
  {
    v14 = [v12 animationSettings];
    sub_10002322C();
  }

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 didFinishTransitionToLook:(id)a4
{
  v7 = OBJC_IVAR____TtC20PridePosterExtension17EditingController_coordinators;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  v9 = a3;
  v10 = a4;
  v11 = self;

  v12 = sub_10001BC38(v9, v8, sub_100005A80, &type metadata accessor for WallpaperMetalCoordination.EditingCoordinator);

  if (v12)
  {
    v13 = [v10 identifier];
    sub_10002341C();

    sub_10002326C();
  }
}

- (id)timeColorPickerConfigurationForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10001F3E0(v4);

  return v6;
}

- (BOOL)editor:(id)a3 shouldAllowUserToSelectTimeFontConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10001F634(v6, v7);

  return v9 & 1;
}

- (id)looksForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001ED24(v4);

  sub_100003EE4(0, &qword_10003D1F0, PREditingLook_ptr);
  v6.super.isa = sub_1000234DC().super.isa;

  return v6.super.isa;
}

- (double)editor:(id)a3 luminanceForLook:(id)a4 inRect:(CGRect)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_10001F7E0(v7);

  return v10;
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10001D3E0(v8, a4, v9);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 finalizeWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10001F8FC(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidInvalidate:(id)a3
{
  swift_beginAccess();
  v5 = a3;
  v6 = self;
  sub_10001D9E8(v5, sub_100005A80, sub_1000070B4, sub_10001DFDC);
  swift_endAccess();

  memset(v8, 0, sizeof(v8));
  swift_beginAccess();
  v7 = v5;
  sub_10001BCFC(v8, v7);
  swift_endAccess();
}

- (_TtC20PridePosterExtension17EditingController)init
{
  v3 = OBJC_IVAR____TtC20PridePosterExtension17EditingController_coordinators;
  *(&self->super.isa + v3) = sub_10000832C(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC20PridePosterExtension17EditingController_configurations;
  *(&self->super.isa + v4) = sub_10000844C(_swiftEmptyArrayStorage);
  v6.receiver = self;
  v6.super_class = type metadata accessor for EditingController();
  return [(EditingController *)&v6 init];
}

@end