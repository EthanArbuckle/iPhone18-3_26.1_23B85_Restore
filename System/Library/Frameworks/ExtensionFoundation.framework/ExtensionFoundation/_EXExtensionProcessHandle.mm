@interface _EXExtensionProcessHandle
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)valid;
- (NSString)description;
- (RBSProcessIdentity)processIdentity;
- (_EXExtensionProcessHandle)init;
- (id)makeLibXPCConnectionAndReturnError:(id *)error;
- (id)makeSessionXPCConnection;
- (id)makeXPCConnectionRetainProcess:(BOOL)process error:(id *)error;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)setAssertion:(id)assertion;
- (void)setLaunchAssertion:(id)assertion;
@end

@implementation _EXExtensionProcessHandle

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____EXExtensionProcessHandle_assertion);
  selfCopy = self;
  [v2 invalidate];
  [*(&selfCopy->super.isa + OBJC_IVAR____EXExtensionProcessHandle_launchAssertion) invalidate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for _EXExtensionProcessHandle();
  [(_EXExtensionProcessHandle *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _EXExtensionProcessHandle.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  v3 = _EXExtensionProcessHandle.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1865F36D0](v3, v5);

  return v6;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  result = [*(&self->super.isa + OBJC_IVAR____EXExtensionProcessHandle_innerProcessHandle) auditToken];
  v5 = v7;
  *retstr->var0 = v6;
  *&retstr->var0[4] = v5;
  return result;
}

- (void)setLaunchAssertion:(id)assertion
{
  v4 = *(&self->super.isa + OBJC_IVAR____EXExtensionProcessHandle_launchAssertion);
  *(&self->super.isa + OBJC_IVAR____EXExtensionProcessHandle_launchAssertion) = assertion;
  assertionCopy = assertion;
}

- (void)setAssertion:(id)assertion
{
  v4 = *(&self->super.isa + OBJC_IVAR____EXExtensionProcessHandle_assertion);
  *(&self->super.isa + OBJC_IVAR____EXExtensionProcessHandle_assertion) = assertion;
  assertionCopy = assertion;
}

- (RBSProcessIdentity)processIdentity
{
  identity = [*(&self->super.isa + OBJC_IVAR____EXExtensionProcessHandle_innerProcessHandle) identity];

  return identity;
}

- (void)invalidate
{
  selfCopy = self;
  _EXExtensionProcessHandle.invalidate()();
}

- (id)makeXPCConnectionRetainProcess:(BOOL)process error:(id *)error
{
  selfCopy = self;
  v7.super.isa = _EXExtensionProcessHandle.makeXPCConnectionRetainProcess(_:)(process).super.isa;

  if (v8.super.isa)
  {
    if (error)
    {
      v9 = _convertErrorToNSError(_:)();

      v10 = v9;
      isa = 0;
      *error = v9;
    }

    else
    {

      isa = 0;
    }
  }

  else
  {
    isa = v7.super.isa;
  }

  return isa;
}

- (id)makeLibXPCConnectionAndReturnError:(id *)error
{
  selfCopy = self;
  v4 = _EXExtensionProcessHandle.makeLibXPCConnection()();

  return v4;
}

- (id)makeSessionXPCConnection
{
  selfCopy = self;
  v3 = _EXExtensionProcessHandle.makeSessionXPCConnection()();

  return v3;
}

- (BOOL)valid
{
  v2 = *(&self->super.isa + OBJC_IVAR____EXExtensionProcessHandle_invalidationLock);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 4);
  v4 = *(&selfCopy->super.isa + OBJC_IVAR____EXExtensionProcessHandle_assertion);
  if (v4)
  {
    isValid = [v4 isValid];
  }

  else
  {
    isValid = 0;
  }

  os_unfair_lock_unlock(v2 + 4);

  return isValid;
}

- (_EXExtensionProcessHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end