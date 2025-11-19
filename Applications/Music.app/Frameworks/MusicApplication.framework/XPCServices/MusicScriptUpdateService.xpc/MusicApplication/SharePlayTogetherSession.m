@interface SharePlayTogetherSession
- (BOOL)isEqual:(id)a3;
- (_TtC9MusicCore24SharePlayTogetherSession)init;
- (void)groupSession:(id)a3 didInvalidateWithError:(id)a4;
- (void)groupSessionDidConnect:(id)a3;
@end

@implementation SharePlayTogetherSession

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = SharePlayTogetherSession.isEqual(_:)(v8);

  sub_100007214(v8, &qword_100605110);
  return v6 & 1;
}

- (_TtC9MusicCore24SharePlayTogetherSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)groupSessionDidConnect:(id)a3
{
  v5 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1004BC4B4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1004BC474();
  swift_unknownObjectRetain_n();
  v9 = self;
  v10 = sub_1004BC464();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = a3;
  v11[5] = v9;
  sub_1000FD6BC(0, 0, v7, &unk_1004D6F68, v11);

  swift_unknownObjectRelease();
}

- (void)groupSession:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_1004BC4B4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1004BC474();
  v10 = a4;
  v11 = self;
  v12 = v10;
  v13 = v11;
  v14 = sub_1004BC464();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v12;
  v15[5] = v13;
  sub_1000FD6BC(0, 0, v8, &unk_1004D6F60, v15);
}

@end