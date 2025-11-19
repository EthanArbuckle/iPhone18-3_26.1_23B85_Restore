@interface APExtensionInfoClient
- (_TtC13AppProtection21APExtensionInfoClient)init;
- (void)authenticateForExtensionWithUUID:(id)a3 reasonDescription:(id)a4 completion:(id)a5;
- (void)getExtensionIsFirstPartyForUUID:(id)a3 completion:(id)a4;
@end

@implementation APExtensionInfoClient

- (void)authenticateForExtensionWithUUID:(id)a3 reasonDescription:(id)a4 completion:(id)a5
{
  v8 = sub_185B67AFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a5);
  sub_185B67ADC();
  if (a4)
  {
    v15 = sub_185B67E4C();
    a4 = v16;
  }

  else
  {
    v15 = 0;
  }

  _Block_copy(v14);
  v17 = self;
  sub_185B1858C(v13, v15, a4, v17, v14);
  _Block_release(v14);
  _Block_release(v14);

  (*(v9 + 8))(v13, v8);
}

- (void)getExtensionIsFirstPartyForUUID:(id)a3 completion:(id)a4
{
  v5 = sub_185B67AFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_185B67ADC();
  if (sub_185AE97DC(v10) == 2)
  {
    sub_185AD0C64();
    v12 = sub_185B6825C();
  }

  else
  {
    v12 = sub_185B67FBC();
  }

  v13 = v12;
  v11[2](v11, v12, 0);
  _Block_release(v11);

  (*(v6 + 8))(v10, v5);
}

- (_TtC13AppProtection21APExtensionInfoClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end