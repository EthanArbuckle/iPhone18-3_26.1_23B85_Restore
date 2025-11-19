@interface EditingController
- (BOOL)editor:(id)a3 shouldAllowUserToSelectTimeFontConfiguration:(id)a4;
- (_TtC15Unity2025Poster17EditingController)init;
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
  sub_10000BD1C(v6, a4);

  swift_unknownObjectRelease();
}

- (id)initialLookIdentifierForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000C318(v4);

  v6 = sub_100012FE4();

  return v6;
}

- (BOOL)editor:(id)a3 shouldAllowUserToSelectTimeFontConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10000D35C(v7);

  return v9;
}

- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v8 = OBJC_IVAR____TtC15Unity2025Poster17EditingController_coordinators;
  swift_beginAccess();
  v9 = *(&self->super.isa + v8);
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = self;

  v12 = a5;
  v13 = sub_10000DEFC(v10, v9);

  if (v13)
  {
    v14 = [v12 animationSettings];
    sub_100012CD4();
  }

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 didFinishTransitionToLook:(id)a4
{
  v7 = OBJC_IVAR____TtC15Unity2025Poster17EditingController_coordinators;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  v9 = a3;
  v10 = a4;
  v11 = self;

  v12 = sub_10000DEFC(v9, v8);

  if (v12)
  {
    v13 = [v10 identifier];
    sub_100012FF4();

    sub_100012D14();
  }
}

- (id)timeColorPickerConfigurationForEditor:(id)a3
{
  v3 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
  v4 = objc_allocWithZone(PREditorColorPalette);
  isa = sub_100013074().super.isa;
  v6 = [v4 initWithColors:isa localizedName:0 showsColorWell:0];

  [v3 setColorPalette:v6];

  return v3;
}

- (id)looksForEditor:(id)a3
{
  sub_10000CF58();
  sub_10000D948();
  v3.super.isa = sub_100013074().super.isa;

  return v3.super.isa;
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10000C9F4(v8, a4, v9);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 finalizeWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10000D5CC(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidInvalidate:(id)a3
{
  swift_beginAccess();
  v5 = a3;
  v6 = self;
  sub_1000100A4(v5);
  swift_endAccess();

  memset(v8, 0, sizeof(v8));
  swift_beginAccess();
  v7 = v5;
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