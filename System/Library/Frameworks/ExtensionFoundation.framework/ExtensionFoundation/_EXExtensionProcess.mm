@interface _EXExtensionProcess
+ (id)extensionProcessWithConfiguration:(id)configuration error:(id *)error;
+ (void)extensionProcessWithConfiguration:(id)configuration completionHandler:(id)handler;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isValid;
- (BOOL)matchesProcess:(id)process;
- (RBSProcessIdentity)processIdentity;
- (_EXExtensionIdentity)extensionIdentity;
- (_EXExtensionProcess)init;
- (_EXExtensionProcess)initWithProcessHandle:(id)handle;
- (_EXExtensionProcess)initWithProcessHandle:(id)handle configuration:(id)configuration;
- (_EXHostConfiguration)configuration;
- (id)makeLibXPCConnectionWithError:(id *)error;
- (id)makeSessionXPCConnectionWithError:(id *)error;
- (id)makeXPCConnectionWithError:(id *)error;
- (id)newXPCConnectionWithError:(id *)error;
- (id)processPredicate;
- (void)invalidate;
- (void)setConfiguration:(id)configuration;
@end

@implementation _EXExtensionProcess

+ (id)extensionProcessWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v5 = specialized static _EXExtensionProcess.extensionProcess(configuration:)(configurationCopy);

  return v5;
}

+ (void)extensionProcessWithConfiguration:(id)configuration completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  configurationCopy = configuration;
  specialized static _EXExtensionProcess.extensionProcess(configuration:completionHandler:)(configurationCopy, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned _EXExtensionProcess?, @unowned NSError?) -> (), v6);
}

- (id)newXPCConnectionWithError:(id *)error
{
  v4 = *(&self->super.isa + OBJC_IVAR____EXExtensionProcess__processHandle);
  selfCopy = self;
  v6.super.isa = _EXExtensionProcessHandle.makeXPCConnectionRetainProcess(_:)(1).super.isa;

  if (v7.super.isa)
  {
    if (error)
    {
      v8 = _convertErrorToNSError(_:)();

      v9 = v8;
      result = 0;
      *error = v8;
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

- (_EXExtensionProcess)initWithProcessHandle:(id)handle configuration:(id)configuration
{
  handleCopy = handle;
  configurationCopy = configuration;
  v7 = specialized _EXExtensionProcess.init(processHandle:configuration:)(handleCopy, configurationCopy);

  return v7;
}

- (_EXExtensionProcess)initWithProcessHandle:(id)handle
{
  handleCopy = handle;
  v4 = specialized _EXExtensionProcess.init(processHandle:)(handleCopy);

  return v4;
}

- (id)makeXPCConnectionWithError:(id *)error
{
  v4 = *(&self->super.isa + OBJC_IVAR____EXExtensionProcess__processHandle);
  selfCopy = self;
  v6.super.isa = _EXExtensionProcessHandle.makeXPCConnectionRetainProcess(_:)(0).super.isa;

  if (v7.super.isa)
  {
    if (error)
    {
      v8 = _convertErrorToNSError(_:)();

      v9 = v8;
      isa = 0;
      *error = v8;
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

- (id)makeLibXPCConnectionWithError:(id *)error
{
  selfCopy = self;
  v4 = _EXExtensionProcess.makeLibXPCConnection()();

  return v4;
}

- (id)makeSessionXPCConnectionWithError:(id *)error
{
  v4 = *(&self->super.isa + OBJC_IVAR____EXExtensionProcess__processHandle);
  selfCopy = self;
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
    _EX_errorWithCode_description_ = [v9 _EX_errorWithCode_description_];

    swift_willThrow();
    if (error)
    {
      v12 = _convertErrorToNSError(_:)();

      v13 = v12;
      v8 = 0;
      *error = v12;
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
  selfCopy = self;
  _EXExtensionProcess.invalidate()();
}

- (BOOL)isValid
{
  selfCopy = self;
  v3 = _EXExtensionProcess.isValid.getter();

  return v3 & 1;
}

- (_EXHostConfiguration)configuration
{
  v3 = OBJC_IVAR____EXExtensionProcess_configuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setConfiguration:(id)configuration
{
  v5 = OBJC_IVAR____EXExtensionProcess_configuration;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = configuration;
  configurationCopy = configuration;
}

- (_EXExtensionIdentity)extensionIdentity
{
  selfCopy = self;
  configuration = [(_EXExtensionProcess *)selfCopy configuration];
  extensionIdentity = [(_EXHostConfiguration *)configuration extensionIdentity];

  return extensionIdentity;
}

- (RBSProcessIdentity)processIdentity
{
  identity = [*(*(&self->super.isa + OBJC_IVAR____EXExtensionProcess__processHandle) + OBJC_IVAR____EXExtensionProcessHandle_innerProcessHandle) identity];

  return identity;
}

- (BOOL)matchesProcess:(id)process
{
  v10 = *MEMORY[0x1E69E9840];
  processCopy = process;
  selfCopy = self;
  [(_EXExtensionProcess *)selfCopy auditToken];
  [processCopy auditToken];
  LOBYTE(self) = _EXAuditTokenEqual(&v9, &v8);

  v6 = *MEMORY[0x1E69E9840];
  return self;
}

- (id)processPredicate
{
  selfCopy = self;
  [(_EXExtensionProcess *)selfCopy rbs_pid];
  isa = Int32._bridgeToObjectiveC()().super.super.isa;
  predicateMatchingIdentifier_ = [objc_opt_self() predicateMatchingIdentifier_];

  return predicateMatchingIdentifier_;
}

- (_EXExtensionProcess)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end