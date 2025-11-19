@interface BookReaderActionTarget
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (NSArray)keyCommands;
- (_TtC5Books22BookReaderActionTarget)init;
- (void)books_disableTheme:(id)a3;
- (void)books_editTheme:(id)a3;
- (void)books_enableTheme:(id)a3;
- (void)books_search:(id)a3;
- (void)books_toggleBookmark:(id)a3;
- (void)books_toggleTheme:(id)a3;
- (void)copy:(id)a3;
- (void)validateCommand:(id)a3;
@end

@implementation BookReaderActionTarget

- (NSArray)keyCommands
{
  v2 = self;
  v3 = sub_1004E1298();

  if (v3)
  {
    sub_10000A7C4(0, &qword_100ADA970);
    v4.super.isa = sub_1007A25D4().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)copy:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100226F6C();

    sub_100007840(v6, &unk_100AD5B40);
    swift_unknownObjectRelease();
  }

  else
  {

    sub_100007840(v6, &unk_100AD5B40);
  }
}

- (void)books_toggleBookmark:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = self;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = sub_1004A8620();
    sub_1004A8804((v6 & 1) == 0);

    sub_100007840(v7, &unk_100AD5B40);
    swift_unknownObjectRelease();
  }

  else
  {

    sub_100007840(v7, &unk_100AD5B40);
  }
}

- (void)books_search:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = sub_1004E950C(v8);
    sub_1006AA3D8(v6, v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_100007840(v8, &unk_100AD5B40);
}

- (void)books_toggleTheme:(id)a3
{
  v5 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  if (a3)
  {
    v8 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    v9 = self;
  }

  v10 = sub_1004E8A10(v15);
  v11 = sub_1007A2744();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_1007A26F4();
  v12 = self;
  v13 = sub_1007A26E4();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = v12;
  *(v14 + 40) = v10;
  sub_1003457A0(0, 0, v7, &unk_10082CA38, v14);

  sub_100007840(v15, &unk_100AD5B40);
}

- (void)books_enableTheme:(id)a3
{
  v5 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  if (a3)
  {
    v8 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    v9 = self;
  }

  v10 = sub_1004E97B8(v15);
  v11 = sub_1007A2744();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_1007A26F4();
  v12 = self;
  v13 = sub_1007A26E4();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = v12;
  *(v14 + 40) = v10;
  sub_1003457A0(0, 0, v7, &unk_10082CA30, v14);

  sub_100007840(v15, &unk_100AD5B40);
}

- (void)books_disableTheme:(id)a3
{
  v5 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  if (a3)
  {
    v8 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v9 = self;
  }

  v10 = sub_1007A2744();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_1007A26F4();
  v11 = self;
  v12 = sub_1007A26E4();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  sub_1003457A0(0, 0, v7, &unk_10082CA28, v13);

  sub_100007840(v14, &unk_100AD5B40);
}

- (void)books_editTheme:(id)a3
{
  v5 = sub_10079EF54();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v10 = self;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_1007A1344();
    sub_1006AB9E8(v8);
    swift_unknownObjectRelease();
    (*(v6 + 8))(v8, v5);
  }

  sub_100007840(v11, &unk_100AD5B40);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_1004E5EA8(a3, v10);

  sub_100007840(v10, &unk_100AD5B40);
  return v8 & 1;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004E6FE0(v4);
}

- (_TtC5Books22BookReaderActionTarget)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end