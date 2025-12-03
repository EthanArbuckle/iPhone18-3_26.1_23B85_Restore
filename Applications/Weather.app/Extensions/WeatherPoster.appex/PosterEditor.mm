@interface PosterEditor
- (id)looksForEditor:(id)editor;
- (id)titleContentStylePickerConfigurationForEditor:(id)editor;
- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidInvalidate:(id)invalidate;
@end

@implementation PosterEditor

- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100035AEC(editorCopy, environment);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_10003619C(selfCopy, environment, transition);

  swift_unknownObjectRelease();
}

- (id)looksForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_100036438();

  sub_100013820(0, &qword_100064CE8, PREditingLook_ptr);
  v6.super.isa = sub_10004AA4C().super.isa;

  return v6.super.isa;
}

- (id)titleContentStylePickerConfigurationForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  v6 = sub_100036674();

  return v6;
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_1000367C4(selfCopy, views);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor finalizeWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  editorCopy = editor;
  selfCopy = self;
  sub_100037A34(editorCopy, selfCopy, v6);
  _Block_release(v6);
}

- (void)editorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_100037CDC();
}

@end