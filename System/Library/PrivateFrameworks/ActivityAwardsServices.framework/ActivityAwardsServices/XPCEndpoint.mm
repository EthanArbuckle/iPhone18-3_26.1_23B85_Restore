@interface XPCEndpoint
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC22ActivityAwardsServices11XPCEndpoint)init;
- (void)transportEvent:(unint64_t)a3 data:(id)a4;
- (void)transportRequest:(unint64_t)a3 data:(NSData *)a4 completion:(id)a5;
@end

@implementation XPCEndpoint

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1DB1073FC(v7);

  return v9 & 1;
}

- (void)transportRequest:(unint64_t)a3 data:(NSData *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26270, &unk_1DB127910);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1DB126490();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1DB128670;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1DB127E20;
  v17[5] = v16;
  v18 = a4;
  v19 = self;
  sub_1DB11F730(0, 0, v12, &unk_1DB128690, v17);
}

- (_TtC22ActivityAwardsServices11XPCEndpoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)transportEvent:(unint64_t)a3 data:(id)a4
{
  if (a4)
  {
    v4 = a4;
    v5 = sub_1DB126100();
    sub_1DB10A96C(v5, v6);
  }

  if (qword_1EDEC89F8 != -1)
  {
    swift_once();
  }

  v7 = sub_1DB126230();
  __swift_project_value_buffer(v7, qword_1EDEC8A00);
  v8._countAndFlagsBits = 0xD000000000000061;
  v8._object = 0x80000001DB129670;
  v9._object = 0x80000001DB1296E0;
  v9._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v8, v9);
}

@end