@interface LSDAppProtectionService
@end

@implementation LSDAppProtectionService

void __40___LSDAppProtectionService_XPCInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFA0D98];
  v3 = +[_LSDAppProtectionService XPCInterface]::result;
  +[_LSDAppProtectionService XPCInterface]::result = v2;

  v4 = +[_LSDAppProtectionService XPCInterface]::result;
  if (+[_LSDAppProtectionService XPCInterface]::result || ([MEMORY[0x1E696AAA8] currentHandler], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 32), *(a1 + 40), @"LSDAppProtectionService.m", 349, @"Failed to create XPC interface object."), v20, (v4 = +[_LSDAppProtectionService XPCInterface]::result) != 0))
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v16 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    [v4 setClasses:? forSelector:? argumentIndex:? ofReply:?];

    [+[_LSDAppProtectionService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setHiddenApplications_completion_ argumentIndex:0 ofReply:1];
    v7 = +[_LSDAppProtectionService XPCInterface]::result;
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v17 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    [v7 setClasses:? forSelector:? argumentIndex:? ofReply:?];

    [+[_LSDAppProtectionService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setLockedApplications_completion_ argumentIndex:0 ofReply:1];
    v10 = +[_LSDAppProtectionService XPCInterface]::result;
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v18 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    [v10 setClasses:? forSelector:? argumentIndex:? ofReply:?];

    v13 = +[_LSDAppProtectionService XPCInterface]::result;
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v19 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    [v13 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  }
}

@end