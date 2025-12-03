@interface AppAttestHandler
- (BOOL)supported;
- (_TtC17AppAttestInternal16AppAttestHandler)init;
- (void)createKeyWith:(id)with completion:(id)completion;
- (void)getKeyFor:(id)for credential:(id)credential completion:(id)completion;
- (void)signWithClientUUID:(id)d blob:(id)blob credential:(id)credential completion:(id)completion;
@end

@implementation AppAttestHandler

- (BOOL)supported
{
  selfCopy = self;
  sub_2261AA444();
  v3 = sub_22619DFA0();

  return v3 & 1;
}

- (void)createKeyWith:(id)with completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (with)
  {
    v7 = sub_2261E3DDC();
    with = v8;
  }

  else
  {
    v7 = 0;
  }

  _Block_copy(v6);
  selfCopy = self;
  sub_2261B8014(v7, with, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)signWithClientUUID:(id)d blob:(id)blob credential:(id)credential completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = sub_2261E3DDC();
  v12 = v11;
  blobCopy = blob;
  credentialCopy = credential;
  selfCopy = self;
  v16 = sub_2261E3BBC();
  v18 = v17;

  v19 = sub_2261E3DDC();
  v21 = v20;

  _Block_copy(v9);
  sub_2261C09C8(v10, v12, v16, v18, v19, v21, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);

  sub_22619C840(v16, v18);
}

- (void)getKeyFor:(id)for credential:(id)credential completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = sub_2261E3DDC();
  v9 = v8;
  v10 = sub_2261E3DDC();
  v12 = v11;
  _Block_copy(v6);
  selfCopy = self;
  sub_2261C1EA4(v7, v9, v10, v12, selfCopy, v6);
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