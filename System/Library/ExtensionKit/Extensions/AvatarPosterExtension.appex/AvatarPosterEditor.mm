@interface AvatarPosterEditor
- (id)leadingMenuElementsForEditor:(id)editor;
- (id)looksForEditor:(id)editor;
- (id)trailingMenuElementsForEditor:(id)editor;
- (void)combinedPickerViewController:(id)controller didSelectRecord:(id)record withStickerConfiguration:(id)configuration;
- (void)combinedPickerViewControllerDidCancel:(id)cancel;
- (void)editor:(PREditor *)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidInvalidate:(id)invalidate;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation AvatarPosterEditor

- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10000FE1C(editorCopy, environment);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_10001824C(environment, transition);

  swift_unknownObjectRelease();
}

- (id)looksForEditor:(id)editor
{
  sub_1000183C4();
  sub_100009C14(0, &unk_10002BB90);
  v3.super.isa = sub_10001A46C().super.isa;

  return v3.super.isa;
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_1000186AC(views);

  swift_unknownObjectRelease();
}

- (void)editor:(PREditor *)editor finalizeWithCompletion:(id)completion
{
  v7 = sub_1000027DC(&qword_10002B750);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = editor;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_10001A4CC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10001C330;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10001C340;
  v14[5] = v13;
  editorCopy = editor;
  selfCopy = self;
  sub_1000170D4(0, 0, v9, &unk_10001C350, v14);
}

- (void)editorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_100018AEC();
}

- (id)trailingMenuElementsForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  v6 = sub_1000123C0(editorCopy);

  if (v6)
  {
    sub_100009C14(0, &qword_10002BAA0);
    v7.super.isa = sub_10001A46C().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (id)leadingMenuElementsForEditor:(id)editor
{
  sub_1000027DC(&unk_10002B860);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10001C200;
  editorCopy = editor;
  selfCopy = self;
  *(v5 + 32) = sub_100012710();

  sub_100009C14(0, &qword_10002BAA0);
  v8.super.isa = sub_10001A46C().super.isa;

  return v8.super.isa;
}

- (void)combinedPickerViewController:(id)controller didSelectRecord:(id)record withStickerConfiguration:(id)configuration
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  configurationCopy = configuration;
  selfCopy = self;
  sub_100018D30(record, configurationCopy);

  swift_unknownObjectRelease();
}

- (void)combinedPickerViewControllerDidCancel:(id)cancel
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_editor);
  selfCopy = self;
  if (v3)
  {
    [v3 dismissViewControllerAnimated:1 completion:0];
  }

  sub_100012C5C();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  selfCopy = self;
  sub_100012C5C();
}

@end