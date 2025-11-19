@interface _LSQuery
- (BOOL)isEqual:(id)a3;
- (id)_init;
- (id)resolveExpensiveQueryRemotelyUsingResolver:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4;
- (void)setLegacy:(BOOL)a3;
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
  v3 = [(_LSQuery *)self isLegacy];
  v5.receiver = self;
  v5.super_class = _LSQuery;
  return [(_LSQuery *)&v5 hash]^ v3;
}

- (void)setLegacy:(BOOL)a3
{
  self->_legacy = a3;
  if (a3 && ([__LSDefaultsGetSharedInstance() isServer] & 1) == 0)
  {
    __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();
    __LAUNCH_SERVICES_IS_ABORTING_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();

    __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION_BECAUSE_THIS_PROCESS_IS_USING_INSECURE_SPI__();
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v7) = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(_LSQuery *)v5 isLegacy];
    v7 = v6 ^ [(_LSQuery *)self isLegacy]^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4
{
  v5 = a4;
  v4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[_LSQuery(Internal) _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSQuery/LSQuery.mm", 121);
  v5[2](v5, 0, v4);
}

- (id)resolveExpensiveQueryRemotelyUsingResolver:(id)a3 error:(id *)a4
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end