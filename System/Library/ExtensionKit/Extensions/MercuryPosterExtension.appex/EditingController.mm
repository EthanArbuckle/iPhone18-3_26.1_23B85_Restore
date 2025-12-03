@interface EditingController
- (_TtC22MercuryPosterExtension17EditingController)init;
- (id)initialLookIdentifierForEditor:(id)editor;
- (id)looksForEditor:(id)editor;
- (int64_t)activeAppearanceMenuSelectionForEditor:(id)editor;
- (void)editor:(id)editor appearanceMenuDidChangeSelectedStyle:(int64_t)style;
- (void)editor:(id)editor didFinishTransitionToLook:(id)look;
- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment;
- (void)editor:(id)editor didTransitionToLook:(id)look progress:(double)progress;
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
  sub_10000D664(editorCopy, environment);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_10000DD6C(editorCopy, environment, transition);

  swift_unknownObjectRelease();
}

- (id)initialLookIdentifierForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000DF14(editorCopy);

  v6 = sub_1000E98E4();

  return v6;
}

- (id)looksForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000E448(editorCopy);

  sub_100012904(0, &qword_10012FAF0);
  v6.super.isa = sub_1000E9A74().super.isa;

  return v6.super.isa;
}

- (int64_t)activeAppearanceMenuSelectionForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  v6 = sub_10000EC4C(editorCopy);

  return v6;
}

- (void)editor:(id)editor appearanceMenuDidChangeSelectedStyle:(int64_t)style
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000EE30(editorCopy, style);
}

- (void)editor:(id)editor didTransitionToLook:(id)look progress:(double)progress
{
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;
  sub_10000F040(editorCopy, lookCopy, progress);
}

- (void)editor:(id)editor didFinishTransitionToLook:(id)look
{
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;
  sub_10000F480(editorCopy, lookCopy);
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_10000F810(editorCopy, views, lookCopy);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor finalizeWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v6;
  editorCopy = editor;
  selfCopy = self;
  sub_100010148(editorCopy, sub_1000128F4);
}

- (void)editorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_100010710(invalidateCopy);
}

- (_TtC22MercuryPosterExtension17EditingController)init
{
  v3 = OBJC_IVAR____TtC22MercuryPosterExtension17EditingController_resources;
  *(&self->super.isa + v3) = sub_1000A1738(_swiftEmptyArrayStorage);
  v5.receiver = self;
  v5.super_class = type metadata accessor for EditingController();
  return [(EditingController *)&v5 init];
}

@end