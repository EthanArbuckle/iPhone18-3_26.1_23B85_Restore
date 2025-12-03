@interface _LSQuery
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)resolveExpensiveQueryRemotelyUsingResolver:(id)resolver error:(id *)error;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)connection block:(id)block;
- (void)setLegacy:(BOOL)legacy;
@end

@implementation _LSQuery

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _LSQuery;
  return [(_LSQuery *)&v3 init];
}

- (unint64_t)hash
{
  isLegacy = [(_LSQuery *)self isLegacy];
  v5.receiver = self;
  v5.super_class = _LSQuery;
  return [(_LSQuery *)&v5 hash]^ isLegacy;
}

- (void)setLegacy:(BOOL)legacy
{
  self->_legacy = legacy;
  if (legacy && ([__LSDefaultsGetSharedInstance() isServer] & 1) == 0)
  {
    __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();
    __LAUNCH_SERVICES_IS_ABORTING_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();

    __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION_BECAUSE_THIS_PROCESS_IS_USING_INSECURE_SPI__();
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v7) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isLegacy = [(_LSQuery *)v5 isLegacy];
    v7 = isLegacy ^ [(_LSQuery *)self isLegacy]^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_enumerateWithXPCConnection:(id)connection block:(id)block
{
  blockCopy = block;
  v4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[_LSQuery(Internal) _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSQuery/LSQuery.mm", 121);
  blockCopy[2](blockCopy, 0, v4);
}

- (id)resolveExpensiveQueryRemotelyUsingResolver:(id)resolver error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end