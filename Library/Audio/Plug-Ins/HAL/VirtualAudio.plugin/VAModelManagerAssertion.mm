@interface VAModelManagerAssertion
- (VAModelManagerAssertion)init;
- (void)acquireInPolicy:(NSString *)a3 inDescription:(NSString *)a4 completionHandler:(id)a5;
- (void)invalidateWithCompletionHandler:(id)a3;
@end

@implementation VAModelManagerAssertion

- (void)acquireInPolicy:(NSString *)a3 inDescription:(NSString *)a4 completionHandler:(id)a5
{
  v9 = sub_1D1138(&qword_6E48F8, &qword_516E88);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_51349C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_517048;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_517050;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;

  sub_1D0460(0, 0, v12, &unk_517058, v17);
}

- (void)invalidateWithCompletionHandler:(id)a3
{
  v5 = sub_1D1138(&qword_6E48F8, &qword_516E88);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_51349C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_517000;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_517010;
  v13[5] = v12;

  sub_1D0460(0, 0, v8, &unk_517020, v13);
}

- (VAModelManagerAssertion)init
{
  swift_defaultActor_initialize();
  *&self[1].$defaultActor[8] = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for VAModelManagerAssertion();
  return [(VAModelManagerAssertion *)&v4 init];
}

@end