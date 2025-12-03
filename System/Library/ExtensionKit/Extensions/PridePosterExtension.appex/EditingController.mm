@interface EditingController
- (BOOL)editor:(id)editor shouldAllowUserToSelectTimeFontConfiguration:(id)configuration;
- (_TtC20PridePosterExtension17EditingController)init;
- (double)editor:(id)editor luminanceForLook:(id)look inRect:(CGRect)rect;
- (id)initialLookIdentifierForEditor:(id)editor;
- (id)looksForEditor:(id)editor;
- (id)timeColorPickerConfigurationForEditor:(id)editor;
- (void)editor:(id)editor didFinishTransitionToLook:(id)look;
- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidInvalidate:(id)invalidate;
@end

@implementation EditingController

- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10001BE44(editorCopy, environment);

  swift_unknownObjectRelease();
}

- (id)initialLookIdentifierForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10001CA9C(editorCopy);

  v6 = sub_10002340C();

  return v6;
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  v8 = OBJC_IVAR____TtC20PridePosterExtension17EditingController_coordinators;
  swift_beginAccess();
  v9 = *(&self->super.isa + v8);
  editorCopy = editor;
  swift_unknownObjectRetain();
  selfCopy = self;

  transitionCopy = transition;
  v13 = sub_10001BC38(editorCopy, v9, sub_100005A80, &type metadata accessor for WallpaperMetalCoordination.EditingCoordinator);

  if (v13)
  {
    animationSettings = [transitionCopy animationSettings];
    sub_10002322C();
  }

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor didFinishTransitionToLook:(id)look
{
  v7 = OBJC_IVAR____TtC20PridePosterExtension17EditingController_coordinators;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;

  v12 = sub_10001BC38(editorCopy, v8, sub_100005A80, &type metadata accessor for WallpaperMetalCoordination.EditingCoordinator);

  if (v12)
  {
    identifier = [lookCopy identifier];
    sub_10002341C();

    sub_10002326C();
  }
}

- (id)timeColorPickerConfigurationForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  v6 = sub_10001F3E0(editorCopy);

  return v6;
}

- (BOOL)editor:(id)editor shouldAllowUserToSelectTimeFontConfiguration:(id)configuration
{
  editorCopy = editor;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = sub_10001F634(editorCopy, configurationCopy);

  return v9 & 1;
}

- (id)looksForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10001ED24(editorCopy);

  sub_100003EE4(0, &qword_10003D1F0, PREditingLook_ptr);
  v6.super.isa = sub_1000234DC().super.isa;

  return v6.super.isa;
}

- (double)editor:(id)editor luminanceForLook:(id)look inRect:(CGRect)rect
{
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;
  v10 = sub_10001F7E0(editorCopy);

  return v10;
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_10001D3E0(editorCopy, views, lookCopy);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor finalizeWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  editorCopy = editor;
  selfCopy = self;
  sub_10001F8FC(editorCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidInvalidate:(id)invalidate
{
  swift_beginAccess();
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_10001D9E8(invalidateCopy, sub_100005A80, sub_1000070B4, sub_10001DFDC);
  swift_endAccess();

  memset(v8, 0, sizeof(v8));
  swift_beginAccess();
  v7 = invalidateCopy;
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