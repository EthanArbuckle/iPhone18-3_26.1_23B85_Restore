@interface IconChangeAlertManager
- (_TtC17CSUIAUpcallBundle22IconChangeAlertManager)init;
- (_TtC17CSUIAUpcallBundle22IconChangeAlertManager)initWithIdentity:(id)a3;
- (void)showAlertWithCompletion:(id)a3;
@end

@implementation IconChangeAlertManager

- (_TtC17CSUIAUpcallBundle22IconChangeAlertManager)initWithIdentity:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC17CSUIAUpcallBundle22IconChangeAlertManager_identity) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for IconChangeAlertManager();
  v4 = a3;
  return [(IconChangeAlertManager *)&v6 init];
}

- (void)showAlertWithCompletion:(id)a3
{
  v5 = sub_1C70(&qword_19388, &qword_ECC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_D8E4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = sub_C0AC;
  v12[6] = v10;
  v13 = self;
  sub_1F6C(0, 0, v8, &unk_EFE8, v12);
}

- (_TtC17CSUIAUpcallBundle22IconChangeAlertManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end