@interface AegirEditingController
- (id)initialLookIdentifierForEditor:(id)a3;
- (id)looksForEditor:(id)a3;
- (id)timeColorPickerConfigurationForEditor:(id)a3;
- (void)editor:(id)a3 didFinishTransitionToLook:(id)a4;
- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)editor:(id)a3 didTransitionToLook:(id)a4 progress:(double)a5;
- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)editor:(id)a3 finalizeWithCompletion:(id)a4;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidInvalidate:(id)a3;
@end

@implementation AegirEditingController

- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1000205BC(v6, a4);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  if (*(&self->super.isa + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator))
  {
    swift_unknownObjectRetain();
    v8 = a5;
    v9 = self;

    sub_10002C90C(a4);

    swift_unknownObjectRelease();
  }
}

- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = self;
  sub_100020D54();

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 finalizeWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_100020EC0(v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002104C();
}

- (id)looksForEditor:(id)a3
{
  sub_10000456C();
  sub_1000212C8();
  v3.super.isa = sub_100034AB4().super.isa;

  return v3.super.isa;
}

- (id)initialLookIdentifierForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000211A0();

  v6 = sub_100034984();

  return v6;
}

- (void)editor:(id)a3 didTransitionToLook:(id)a4 progress:(double)a5
{
  if (*(&self->super.isa + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator))
  {
    v7 = a4;
    v8 = self;

    sub_100025714(v7, a5);
  }
}

- (void)editor:(id)a3 didFinishTransitionToLook:(id)a4
{
  if (*(&self->super.isa + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator))
  {
    v5 = a4;
    v6 = self;

    sub_100027060(v5);
  }
}

- (id)timeColorPickerConfigurationForEditor:(id)a3
{
  v3 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
  v4 = [objc_opt_self() standardPalette];
  [v3 setColorPalette:v4];

  [v3 setColorWellDisplayMode:1];
  [v3 setShowsSlider:1];
  [v3 setShowsSuggestedColorItem:1];

  return v3;
}

@end