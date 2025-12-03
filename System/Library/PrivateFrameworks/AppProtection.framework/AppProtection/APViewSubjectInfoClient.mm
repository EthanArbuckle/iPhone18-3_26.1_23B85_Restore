@interface APViewSubjectInfoClient
- (_TtC13AppProtection23APViewSubjectInfoClient)init;
- (void)authenticateForViewSubjectWithBundleID:(id)d reasonDescription:(id)description completion:(id)completion;
- (void)effectiveContainerFor:(id)for completion:(id)completion;
- (void)effectiveContainerLocalizedNameFor:(id)for completion:(id)completion;
- (void)getProcessCanHostViewSubjectWithBundleID:(id)d completion:(id)completion;
@end

@implementation APViewSubjectInfoClient

- (void)getProcessCanHostViewSubjectWithBundleID:(id)d completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_185B67E4C();
  v8 = v7;
  v9 = *(&self->super.isa + OBJC_IVAR____TtC13AppProtection23APViewSubjectInfoClient_connection);
  selfCopy = self;
  [v9 auditToken];
  if (v6 != 0xD00000000000001BLL || 0x8000000185B74C90 != v8)
  {
    sub_185B6859C();
  }

  v11 = sub_185B67FBC();
  v5[2](v5, v11, 0);

  _Block_release(v5);
}

- (void)authenticateForViewSubjectWithBundleID:(id)d reasonDescription:(id)description completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_185B67E4C();
  v10 = v9;
  if (description)
  {
    v11 = sub_185B67E4C();
    description = v12;
  }

  else
  {
    v11 = 0;
  }

  _Block_copy(v7);
  selfCopy = self;
  sub_185AF6310(v8, v10, v11, description, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)effectiveContainerLocalizedNameFor:(id)for completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_185B67E4C();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_185AF66D8(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)effectiveContainerFor:(id)for completion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = sub_185B67E1C();
  v4[2](v4, v5, 0);

  _Block_release(v4);
}

- (_TtC13AppProtection23APViewSubjectInfoClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end