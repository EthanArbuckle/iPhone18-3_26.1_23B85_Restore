@interface AppAttestHandler
- (BOOL)supported;
- (_TtC17AppAttestInternal16AppAttestHandler)init;
- (void)createKeyWith:(id)a3 completion:(id)a4;
- (void)getKeyFor:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)signWithClientUUID:(id)a3 blob:(id)a4 credential:(id)a5 completion:(id)a6;
@end

@implementation AppAttestHandler

- (BOOL)supported
{
  v2 = self;
  sub_2261AA444();
  v3 = sub_22619DFA0();

  return v3 & 1;
}

- (void)createKeyWith:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    v7 = sub_2261E3DDC();
    a3 = v8;
  }

  else
  {
    v7 = 0;
  }

  _Block_copy(v6);
  v9 = self;
  sub_2261B8014(v7, a3, v9, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)signWithClientUUID:(id)a3 blob:(id)a4 credential:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_2261E3DDC();
  v12 = v11;
  v13 = a4;
  v14 = a5;
  v15 = self;
  v16 = sub_2261E3BBC();
  v18 = v17;

  v19 = sub_2261E3DDC();
  v21 = v20;

  _Block_copy(v9);
  sub_2261C09C8(v10, v12, v16, v18, v19, v21, v15, v9);
  _Block_release(v9);
  _Block_release(v9);

  sub_22619C840(v16, v18);
}

- (void)getKeyFor:(id)a3 credential:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_2261E3DDC();
  v9 = v8;
  v10 = sub_2261E3DDC();
  v12 = v11;
  _Block_copy(v6);
  v13 = self;
  sub_2261C1EA4(v7, v9, v10, v12, v13, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC17AppAttestInternal16AppAttestHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end