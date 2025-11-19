@interface AvatarPosterEditor
- (id)leadingMenuElementsForEditor:(id)a3;
- (id)looksForEditor:(id)a3;
- (id)trailingMenuElementsForEditor:(id)a3;
- (void)combinedPickerViewController:(id)a3 didSelectRecord:(id)a4 withStickerConfiguration:(id)a5;
- (void)combinedPickerViewControllerDidCancel:(id)a3;
- (void)editor:(PREditor *)a3 finalizeWithCompletion:(id)a4;
- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidInvalidate:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation AvatarPosterEditor

- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_10000FE1C(v6, a4);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10001824C(a4, a5);

  swift_unknownObjectRelease();
}

- (id)looksForEditor:(id)a3
{
  sub_1000183C4();
  sub_100009C14(0, &unk_10002BB90);
  v3.super.isa = sub_10001A46C().super.isa;

  return v3.super.isa;
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_1000186AC(a4);

  swift_unknownObjectRelease();
}

- (void)editor:(PREditor *)a3 finalizeWithCompletion:(id)a4
{
  v7 = sub_1000027DC(&qword_10002B750);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = a3;
  v16 = self;
  sub_1000170D4(0, 0, v9, &unk_10001C350, v14);
}

- (void)editorDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100018AEC();
}

- (id)trailingMenuElementsForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000123C0(v4);

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

- (id)leadingMenuElementsForEditor:(id)a3
{
  sub_1000027DC(&unk_10002B860);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10001C200;
  v6 = a3;
  v7 = self;
  *(v5 + 32) = sub_100012710();

  sub_100009C14(0, &qword_10002BAA0);
  v8.super.isa = sub_10001A46C().super.isa;

  return v8.super.isa;
}

- (void)combinedPickerViewController:(id)a3 didSelectRecord:(id)a4 withStickerConfiguration:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_100018D30(a4, v9);

  swift_unknownObjectRelease();
}

- (void)combinedPickerViewControllerDidCancel:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_editor);
  v4 = self;
  if (v3)
  {
    [v3 dismissViewControllerAnimated:1 completion:0];
  }

  sub_100012C5C();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = self;
  sub_100012C5C();
}

@end