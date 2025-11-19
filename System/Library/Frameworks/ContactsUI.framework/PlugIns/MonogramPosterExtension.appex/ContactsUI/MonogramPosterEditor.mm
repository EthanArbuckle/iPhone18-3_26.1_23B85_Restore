@interface MonogramPosterEditor
- (id)leadingMenuElementsForEditor:(id)a3;
- (id)looksForEditor:(id)a3;
- (id)trailingMenuElementsForEditor:(id)a3;
- (void)editor:(PREditor *)a3 finalizeWithCompletion:(id)a4;
- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)editor:(id)a3 didUpdateSelectedTimeFontConfiguration:(id)a4;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidInvalidate:(id)a3;
@end

@implementation MonogramPosterEditor

- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_100016FEC(v6, a4);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_100020BF8(a4, a5);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 didUpdateSelectedTimeFontConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000183E8(v6, v7);
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_100020ED4(v8, a4);

  swift_unknownObjectRelease();
}

- (void)editor:(PREditor *)a3 finalizeWithCompletion:(id)a4
{
  v7 = sub_100003598(&qword_100042038, &qword_100029D38);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_10001FFA4(0, 0, v10, &unk_100029D68, v15);
}

- (void)editorDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000217EC();
}

- (id)looksForEditor:(id)a3
{
  sub_1000219D4();
  sub_10000B82C(0, &qword_100042030, PREditingLook_ptr);
  v3.super.isa = sub_100026B00().super.isa;

  return v3.super.isa;
}

- (id)leadingMenuElementsForEditor:(id)a3
{
  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100029900;
  v6 = a3;
  v7 = self;
  *(v5 + 32) = sub_1000195D0();

  sub_10000B82C(0, &qword_100041F60, UIMenuElement_ptr);
  v8.super.isa = sub_100026B00().super.isa;

  return v8.super.isa;
}

- (id)trailingMenuElementsForEditor:(id)a3
{
  swift_beginAccess();
  v5 = a3;
  v6 = self;
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