@interface AegirEditingController
- (id)initialLookIdentifierForEditor:(id)editor;
- (id)looksForEditor:(id)editor;
- (id)timeColorPickerConfigurationForEditor:(id)editor;
- (void)editor:(id)editor didFinishTransitionToLook:(id)look;
- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment;
- (void)editor:(id)editor didTransitionToLook:(id)look progress:(double)progress;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidInvalidate:(id)invalidate;
@end

@implementation AegirEditingController

- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000205BC(editorCopy, environment);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  if (*(&self->super.isa + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator))
  {
    swift_unknownObjectRetain();
    lookCopy = look;
    selfCopy = self;

    sub_10002C90C(views);

    swift_unknownObjectRelease();
  }
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_100020D54();

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor finalizeWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  editorCopy = editor;
  selfCopy = self;
  sub_100020EC0(selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_10002104C();
}

- (id)looksForEditor:(id)editor
{
  sub_10000456C();
  sub_1000212C8();
  v3.super.isa = sub_100034AB4().super.isa;

  return v3.super.isa;
}

- (id)initialLookIdentifierForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_1000211A0();

  v6 = sub_100034984();

  return v6;
}

- (void)editor:(id)editor didTransitionToLook:(id)look progress:(double)progress
{
  if (*(&self->super.isa + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator))
  {
    lookCopy = look;
    selfCopy = self;

    sub_100025714(lookCopy, progress);
  }
}

- (void)editor:(id)editor didFinishTransitionToLook:(id)look
{
  if (*(&self->super.isa + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator))
  {
    lookCopy = look;
    selfCopy = self;

    sub_100027060(lookCopy);
  }
}

- (id)timeColorPickerConfigurationForEditor:(id)editor
{
  v3 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
  standardPalette = [objc_opt_self() standardPalette];
  [v3 setColorPalette:standardPalette];

  [v3 setColorWellDisplayMode:1];
  [v3 setShowsSlider:1];
  [v3 setShowsSuggestedColorItem:1];

  return v3;
}

@end