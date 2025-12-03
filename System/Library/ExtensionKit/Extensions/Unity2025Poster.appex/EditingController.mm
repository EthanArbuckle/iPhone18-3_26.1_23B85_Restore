@interface EditingController
- (BOOL)editor:(id)editor shouldAllowUserToSelectTimeFontConfiguration:(id)configuration;
- (_TtC15Unity2025Poster17EditingController)init;
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
  sub_10000BD1C(editorCopy, environment);

  swift_unknownObjectRelease();
}

- (id)initialLookIdentifierForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000C318(editorCopy);

  v6 = sub_100012FE4();

  return v6;
}

- (BOOL)editor:(id)editor shouldAllowUserToSelectTimeFontConfiguration:(id)configuration
{
  editorCopy = editor;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = sub_10000D35C(configurationCopy);

  return v9;
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  v8 = OBJC_IVAR____TtC15Unity2025Poster17EditingController_coordinators;
  swift_beginAccess();
  v9 = *(&self->super.isa + v8);
  editorCopy = editor;
  swift_unknownObjectRetain();
  selfCopy = self;

  transitionCopy = transition;
  v13 = sub_10000DEFC(editorCopy, v9);

  if (v13)
  {
    animationSettings = [transitionCopy animationSettings];
    sub_100012CD4();
  }

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor didFinishTransitionToLook:(id)look
{
  v7 = OBJC_IVAR____TtC15Unity2025Poster17EditingController_coordinators;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;

  v12 = sub_10000DEFC(editorCopy, v8);

  if (v12)
  {
    identifier = [lookCopy identifier];
    sub_100012FF4();

    sub_100012D14();
  }
}

- (id)timeColorPickerConfigurationForEditor:(id)editor
{
  v3 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
  v4 = objc_allocWithZone(PREditorColorPalette);
  isa = sub_100013074().super.isa;
  v6 = [v4 initWithColors:isa localizedName:0 showsColorWell:0];

  [v3 setColorPalette:v6];

  return v3;
}

- (id)looksForEditor:(id)editor
{
  sub_10000CF58();
  sub_10000D948();
  v3.super.isa = sub_100013074().super.isa;

  return v3.super.isa;
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_10000C9F4(editorCopy, views, lookCopy);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor finalizeWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  editorCopy = editor;
  selfCopy = self;
  sub_10000D5CC(editorCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidInvalidate:(id)invalidate
{
  swift_beginAccess();
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_1000100A4(invalidateCopy);
  swift_endAccess();

  memset(v8, 0, sizeof(v8));
  swift_beginAccess();
  v7 = invalidateCopy;
  sub_10000BBD4(v8, v7);
  swift_endAccess();
}

- (_TtC15Unity2025Poster17EditingController)init
{
  v3 = OBJC_IVAR____TtC15Unity2025Poster17EditingController_coordinators;
  *(&self->super.isa + v3) = sub_100004024(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC15Unity2025Poster17EditingController_configurations;
  *(&self->super.isa + v4) = sub_10000404C(_swiftEmptyArrayStorage);
  v6.receiver = self;
  v6.super_class = type metadata accessor for EditingController();
  return [(EditingController *)&v6 init];
}

@end