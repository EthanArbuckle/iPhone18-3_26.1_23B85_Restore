@interface APStateDump
- (APStateDump)init;
- (APStateDump)initWithState:(id)a3 accesses:(id)a4 authAssertions:(id)a5 dtoEnabled:(BOOL)a6;
- (BOOL)writeToFileHandle:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APStateDump

- (APStateDump)initWithState:(id)a3 accesses:(id)a4 authAssertions:(id)a5 dtoEnabled:(BOOL)a6
{
  *(&self->super.isa + OBJC_IVAR___APStateDump_clientState) = a3;
  *(&self->super.isa + OBJC_IVAR___APStateDump_extantAccesses) = *(a4 + OBJC_IVAR____TtCE13AppProtectionCSo11APStateDumpP33_08AD371E34EDC7245D13D99B4228357017AccessListWrapper_accesses);
  *(&self->super.isa + OBJC_IVAR___APStateDump_authAssertions) = *(a5 + OBJC_IVAR____TtCE13AppProtectionCSo11APStateDumpP33_08AD371E34EDC7245D13D99B4228357019AssertionMapWrapper_authAssertions);
  *(&self->super.isa + OBJC_IVAR___APStateDump_dtoEnabled) = a6;
  v8.receiver = self;
  v8.super_class = APStateDump;
  v6 = a3;

  return [(APStateDump *)&v8 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_185B57BC4(v4);
}

- (BOOL)writeToFileHandle:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_185B57F4C();

  return 1;
}

- (APStateDump)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end