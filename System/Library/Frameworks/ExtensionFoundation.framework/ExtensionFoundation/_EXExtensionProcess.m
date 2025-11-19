@interface _EXExtensionProcess
+ (id)extensionProcessWithConfiguration:(id)a3 error:(id *)a4;
+ (void)extensionProcessWithConfiguration:(id)a3 completionHandler:(id)a4;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isValid;
- (BOOL)matchesProcess:(id)a3;
- (RBSProcessIdentity)processIdentity;
- (_EXExtensionIdentity)extensionIdentity;
- (_EXExtensionProcess)init;
- (_EXExtensionProcess)initWithProcessHandle:(id)a3;
- (_EXExtensionProcess)initWithProcessHandle:(id)a3 configuration:(id)a4;
- (_EXHostConfiguration)configuration;
- (id)makeLibXPCConnectionWithError:(id *)a3;
- (id)makeSessionXPCConnectionWithError:(id *)a3;
- (id)makeXPCConnectionWithError:(id *)a3;
- (id)newXPCConnectionWithError:(id *)a3;
- (id)processPredicate;
- (void)invalidate;
- (void)setConfiguration:(id)a3;
@end

@implementation _EXExtensionProcess

+ (id)extensionProcessWithConfiguration:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = specialized static _EXExtensionProcess.extensionProcess(configuration:)(v4);

  return v5;
}

+ (void)extensionProcessWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a3;
  specialized static _EXExtensionProcess.extensionProcess(configuration:completionHandler:)(v7, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned _EXExtensionProcess?, @unowned NSError?) -> (), v6);
}

- (id)newXPCConnectionWithError:(id *)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____EXExtensionProcess__processHandle);
  v5 = self;
  v6.super.isa = _EXExtensionProcessHandle.makeXPCConnectionRetainProcess(_:)(1).super.isa;

  if (v7.super.isa)
  {
    if (a3)
    {
      v8 = _convertErrorToNSError(_:)();

      v9 = v8;
      result = 0;
      *a3 = v8;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    return v6.super.isa;
  }

  return result;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  result = [*(*(&self->super.isa + OBJC_IVAR____EXExtensionProcess__processHandle) + OBJC_IVAR____EXExtensionProcessHandle_innerProcessHandle) auditToken];
  v5 = v7;
  *retstr->var0 = v6;
  *&retstr->var0[4] = v5;
  return result;
}

- (_EXExtensionProcess)initWithProcessHandle:(id)a3 configuration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = specialized _EXExtensionProcess.init(processHandle:configuration:)(v5, v6);

  return v7;
}

- (_EXExtensionProcess)initWithProcessHandle:(id)a3
{
  v3 = a3;
  v4 = specialized _EXExtensionProcess.init(processHandle:)(v3);

  return v4;
}

- (id)makeXPCConnectionWithError:(id *)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____EXExtensionProcess__processHandle);
  v5 = self;
  v6.super.isa = _EXExtensionProcessHandle.makeXPCConnectionRetainProcess(_:)(0).super.isa;

  if (v7.super.isa)
  {
    if (a3)
    {
      v8 = _convertErrorToNSError(_:)();

      v9 = v8;
      isa = 0;
      *a3 = v8;
    }

    else
    {

      isa = 0;
    }
  }

  else
  {
    isa = v6.super.isa;
  }

  return isa;
}

- (id)makeLibXPCConnectionWithError:(id *)a3
{
  v3 = self;
  v4 = _EXExtensionProcess.makeLibXPCConnection()();

  return v4;
}

- (id)makeSessionXPCConnectionWithError:(id *)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____EXExtensionProcess__processHandle);
  v5 = self;
  v6 = _EXExtensionProcessHandle.makeSessionXPCConnection()();
  if (v6)
  {
    v7 = v6;

    v8 = v7;
  }

  else
  {
    v9 = objc_opt_self();
    v10 = MEMORY[0x1865F36D0](0xD000000000000027, 0x80000001848C4DD0);
    v11 = [v9 _EX_errorWithCode_description_];

    swift_willThrow();
    if (a3)
    {
      v12 = _convertErrorToNSError(_:)();

      v13 = v12;
      v8 = 0;
      *a3 = v12;
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

- (void)invalidate
{
  v2 = self;
  _EXExtensionProcess.invalidate()();
}

- (BOOL)isValid
{
  v2 = self;
  v3 = _EXExtensionProcess.isValid.getter();

  return v3 & 1;
}

- (_EXHostConfiguration)configuration
{
  v3 = OBJC_IVAR____EXExtensionProcess_configuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setConfiguration:(id)a3
{
  v5 = OBJC_IVAR____EXExtensionProcess_configuration;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_EXExtensionIdentity)extensionIdentity
{
  v2 = self;
  v3 = [(_EXExtensionProcess *)v2 configuration];
  v4 = [(_EXHostConfiguration *)v3 extensionIdentity];

  return v4;
}

- (RBSProcessIdentity)processIdentity
{
  v2 = [*(*(&self->super.isa + OBJC_IVAR____EXExtensionProcess__processHandle) + OBJC_IVAR____EXExtensionProcessHandle_innerProcessHandle) identity];

  return v2;
}

- (BOOL)matchesProcess:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  [(_EXExtensionProcess *)v5 auditToken];
  [v4 auditToken];
  LOBYTE(self) = _EXAuditTokenEqual(&v9, &v8);

  v6 = *MEMORY[0x1E69E9840];
  return self;
}

- (id)processPredicate
{
  v2 = self;
  [(_EXExtensionProcess *)v2 rbs_pid];
  isa = Int32._bridgeToObjectiveC()().super.super.isa;
  v4 = [objc_opt_self() predicateMatchingIdentifier_];

  return v4;
}

- (_EXExtensionProcess)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end