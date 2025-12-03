@interface MonogramPosterEditor
- (id)leadingMenuElementsForEditor:(id)editor;
- (id)looksForEditor:(id)editor;
- (id)trailingMenuElementsForEditor:(id)editor;
- (void)editor:(PREditor *)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor didUpdateSelectedTimeFontConfiguration:(id)configuration;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidInvalidate:(id)invalidate;
@end

@implementation MonogramPosterEditor

- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100016FEC(editorCopy, environment);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_100020BF8(environment, transition);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor didUpdateSelectedTimeFontConfiguration:(id)configuration
{
  editorCopy = editor;
  configurationCopy = configuration;
  selfCopy = self;
  sub_1000183E8(editorCopy, configurationCopy);
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_100020ED4(editorCopy, views);

  swift_unknownObjectRelease();
}

- (void)editor:(PREditor *)editor finalizeWithCompletion:(id)completion
{
  v7 = sub_100003598(&qword_100042038, &qword_100029D38);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = editor;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_100026B60();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100029D48;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100029D58;
  v15[5] = v14;
  editorCopy = editor;
  selfCopy = self;
  sub_10001FFA4(0, 0, v10, &unk_100029D68, v15);
}

- (void)editorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_1000217EC();
}

- (id)looksForEditor:(id)editor
{
  sub_1000219D4();
  sub_10000B82C(0, &qword_100042030, PREditingLook_ptr);
  v3.super.isa = sub_100026B00().super.isa;

  return v3.super.isa;
}

- (id)leadingMenuElementsForEditor:(id)editor
{
  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100029900;
  editorCopy = editor;
  selfCopy = self;
  *(v5 + 32) = sub_1000195D0();

  sub_10000B82C(0, &qword_100041F60, UIMenuElement_ptr);
  v8.super.isa = sub_100026B00().super.isa;

  return v8.super.isa;
}

- (id)trailingMenuElementsForEditor:(id)editor
{
  swift_beginAccess();
  editorCopy = editor;
  selfCopy = self;
  LOBYTE(self) = sub_100026320();
  swift_endAccess();
  if (self)
  {
    sub_100003598(&qword_100040F98, &qword_1000293D0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100029900;
    *(v7 + 32) = sub_100019B4C();

    sub_10000B82C(0, &qword_100041F60, UIMenuElement_ptr);
    isa = sub_100026B00().super.isa;

    v9 = isa;
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

@end