@interface LSDRebuildService
@end

@implementation LSDRebuildService

void __34___LSDRebuildService_XPCInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFA31E0];
  v3 = +[_LSDRebuildService XPCInterface]::result;
  +[_LSDRebuildService XPCInterface]::result = v2;

  v4 = +[_LSDRebuildService XPCInterface]::result;
  if (+[_LSDRebuildService XPCInterface]::result || ([MEMORY[0x1E696AAA8] currentHandler], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 32), *(a1 + 40), @"LSDRebuildService.mm", 44, @"Failed to create XPC interface object."), v12, (v4 = +[_LSDRebuildService XPCInterface]::result) != 0))
  {
    v5 = XNSGetPropertyListClasses();
    [v4 setClasses:v5 forSelector:sel_performRebuildRegistration_personaUniqueStrings_reply_ argumentIndex:0 ofReply:0];

    v6 = +[_LSDRebuildService XPCInterface]::result;
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    [v6 setClasses:v9 forSelector:sel_performRebuildRegistration_personaUniqueStrings_reply_ argumentIndex:1 ofReply:0];

    [+[_LSDRebuildService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performRebuildRegistration_personaUniqueStrings_reply_ argumentIndex:0 ofReply:1];
    v10 = +[_LSDRebuildService XPCInterface]::result;
    v11 = objc_opt_class();

    [v10 setClass:v11 forSelector:sel_noteMigratorRunningWithReply_ argumentIndex:0 ofReply:1];
  }
}

@end