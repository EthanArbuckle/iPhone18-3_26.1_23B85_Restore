@interface BAARequestSigner
- (NSDate)date;
- (_TtC14ACSEFoundation16BAARequestSigner)init;
- (_TtC14ACSEFoundation16BAARequestSigner)initWithDate:(id)date;
- (void)signWithRequest:(NSURLRequest *)request completionHandler:(id)handler;
@end

@implementation BAARequestSigner

- (NSDate)date
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  sub_23C417A7C(self + OBJC_IVAR____TtC14ACSEFoundation16BAARequestSigner_date, &v13 - v5, &qword_27E1F45C0, &qword_23C438CB0);
  v7 = sub_23C436F2C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_23C436EDC();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

- (_TtC14ACSEFoundation16BAARequestSigner)initWithDate:(id)date
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - v10;
  if (date)
  {
    sub_23C436EFC();
    v12 = sub_23C436F2C();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_23C436F2C();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  sub_23C417A7C(v11, v9, &qword_27E1F45C0, &qword_23C438CB0);
  v14 = type metadata accessor for BAARequestSigner();
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v15 = objc_allocWithZone(v14);
  v16 = sub_23C427658(v9, v20);
  sub_23C41ED98(v11, &qword_27E1F45C0, &qword_23C438CB0);
  swift_getObjectType();
  v17 = *((*MEMORY[0x277D85000] & *self) + 0x30);
  v18 = *((*MEMORY[0x277D85000] & *self) + 0x34);
  swift_deallocPartialClassInstance();
  return v16;
}

- (void)signWithRequest:(NSURLRequest *)request completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = request;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23C43726C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23C438F50;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23C438F60;
  v15[5] = v14;
  requestCopy = request;
  selfCopy = self;
  sub_23C42A9E0(0, 0, v10, &unk_23C438F70, v15);
}

- (_TtC14ACSEFoundation16BAARequestSigner)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end