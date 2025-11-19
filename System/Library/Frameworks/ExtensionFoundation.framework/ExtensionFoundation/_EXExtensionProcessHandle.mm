@interface _EXExtensionProcessHandle
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)valid;
- (NSString)description;
- (RBSProcessIdentity)processIdentity;
- (_EXExtensionProcessHandle)init;
- (id)makeLibXPCConnectionAndReturnError:(id *)a3;
- (id)makeSessionXPCConnection;
- (id)makeXPCConnectionRetainProcess:(BOOL)a3 error:(id *)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)setAssertion:(id)a3;
- (void)setLaunchAssertion:(id)a3;
@end

@implementation _EXExtensionProcessHandle

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____EXExtensionProcessHandle_assertion);
  v3 = self;
  [v2 invalidate];
  [*(&v3->super.isa + OBJC_IVAR____EXExtensionProcessHandle_launchAssertion) invalidate];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for _EXExtensionProcessHandle();
  [(_EXExtensionProcessHandle *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _EXExtensionProcessHandle.encode(with:)(v4);
}

- (NSString)description
{
  v2 = self;
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

- (void)setLaunchAssertion:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____EXExtensionProcessHandle_launchAssertion);
  *(&self->super.isa + OBJC_IVAR____EXExtensionProcessHandle_launchAssertion) = a3;
  v3 = a3;
}

- (void)setAssertion:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____EXExtensionProcessHandle_assertion);
  *(&self->super.isa + OBJC_IVAR____EXExtensionProcessHandle_assertion) = a3;
  v3 = a3;
}

- (RBSProcessIdentity)processIdentity
{
  v2 = [*(&self->super.isa + OBJC_IVAR____EXExtensionProcessHandle_innerProcessHandle) identity];

  return v2;
}

- (void)invalidate
{
  v2 = self;
  _EXExtensionProcessHandle.invalidate()();
}

- (id)makeXPCConnectionRetainProcess:(BOOL)a3 error:(id *)a4
{
  v6 = self;
  v7.super.isa = _EXExtensionProcessHandle.makeXPCConnectionRetainProcess(_:)(a3).super.isa;

  if (v8.super.isa)
  {
    if (a4)
    {
      v9 = _convertErrorToNSError(_:)();

      v10 = v9;
      isa = 0;
      *a4 = v9;
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

- (id)makeLibXPCConnectionAndReturnError:(id *)a3
{
  v3 = self;
  v4 = _EXExtensionProcessHandle.makeLibXPCConnection()();

  return v4;
}

- (id)makeSessionXPCConnection
{
  v2 = self;
  v3 = _EXExtensionProcessHandle.makeSessionXPCConnection()();

  return v3;
}

- (BOOL)valid
{
  v2 = *(&self->super.isa + OBJC_IVAR____EXExtensionProcessHandle_invalidationLock);
  v3 = self;
  os_unfair_lock_lock(v2 + 4);
  v4 = *(&v3->super.isa + OBJC_IVAR____EXExtensionProcessHandle_assertion);
  if (v4)
  {
    v5 = [v4 isValid];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(v2 + 4);

  return v5;
}

- (_EXExtensionProcessHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end