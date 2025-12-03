@interface APStateDump
- (APStateDump)init;
- (APStateDump)initWithState:(id)state accesses:(id)accesses authAssertions:(id)assertions dtoEnabled:(BOOL)enabled;
- (BOOL)writeToFileHandle:(id)handle error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APStateDump

- (APStateDump)initWithState:(id)state accesses:(id)accesses authAssertions:(id)assertions dtoEnabled:(BOOL)enabled
{
  *(&self->super.isa + OBJC_IVAR___APStateDump_clientState) = state;
  *(&self->super.isa + OBJC_IVAR___APStateDump_extantAccesses) = *(accesses + OBJC_IVAR____TtCE13AppProtectionCSo11APStateDumpP33_08AD371E34EDC7245D13D99B4228357017AccessListWrapper_accesses);
  *(&self->super.isa + OBJC_IVAR___APStateDump_authAssertions) = *(assertions + OBJC_IVAR____TtCE13AppProtectionCSo11APStateDumpP33_08AD371E34EDC7245D13D99B4228357019AssertionMapWrapper_authAssertions);
  *(&self->super.isa + OBJC_IVAR___APStateDump_dtoEnabled) = enabled;
  v8.receiver = self;
  v8.super_class = APStateDump;
  stateCopy = state;

  return [(APStateDump *)&v8 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_185B57BC4(coderCopy);
}

- (BOOL)writeToFileHandle:(id)handle error:(id *)error
{
  handleCopy = handle;
  selfCopy = self;
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