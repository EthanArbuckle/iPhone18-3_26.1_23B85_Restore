@interface ClockPosterExtensionEditingController
- (id)looksForEditor:(id)editor;
- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidInvalidate:(id)invalidate;
@end

@implementation ClockPosterExtensionEditingController

- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment
{
  swift_getObjectType();
  editorCopy = editor;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000072E0(environment, selfCopy);
  v8 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC20ClockPosterExtension37ClockPosterExtensionEditingController_editor);
  *(&selfCopy->super.super.isa + OBJC_IVAR____TtC20ClockPosterExtension37ClockPosterExtensionEditingController_editor) = editorCopy;
  v9 = editorCopy;

  sub_100004C6C();
  swift_unknownObjectRelease();
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100007700(environment, selfCopy);
  swift_unknownObjectRelease();
}

- (void)editor:(id)editor finalizeWithCompletion:(id)completion
{
  v7 = sub_100008B68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  if (*(&self->super.super.isa + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController))
  {
    editorCopy = editor;
    selfCopy = self;

    sub_100008968();

    sub_100007CE0(v11, [editorCopy environment]);
    swift_unknownObjectRelease();
    (*(v8 + 8))(v11, v7);
    v12[2](v12);

    _Block_release(v12);
  }

  else
  {
    editorCopy2 = editor;
    selfCopy2 = self;
    _Block_release(v12);
    __break(1u);
  }
}

- (void)editorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_1000080A0(&OBJC_IVAR____TtC20ClockPosterExtension37ClockPosterExtensionEditingController_editor);
}

- (id)looksForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000813C();

  sub_100008448(0, &qword_100016450, PREditingLook_ptr);
  v6.super.isa = sub_100008CE8().super.isa;

  return v6.super.isa;
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_100008358(views);

  swift_unknownObjectRelease();
}

@end