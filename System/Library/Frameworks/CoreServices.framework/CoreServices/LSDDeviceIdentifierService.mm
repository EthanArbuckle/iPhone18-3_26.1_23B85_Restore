@interface LSDDeviceIdentifierService
@end

@implementation LSDDeviceIdentifierService

void __43___LSDDeviceIdentifierService_XPCInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFA1820];
  v3 = +[_LSDDeviceIdentifierService XPCInterface]::result;
  +[_LSDDeviceIdentifierService XPCInterface]::result = v2;

  v4 = +[_LSDDeviceIdentifierService XPCInterface]::result;
  if (+[_LSDDeviceIdentifierService XPCInterface]::result || ([MEMORY[0x1E696AAA8] currentHandler], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 32), *(a1 + 40), @"LSDDeviceIdentifierService.mm", 287, @"Failed to create XPC interface object."), v7, (v4 = +[_LSDDeviceIdentifierService XPCInterface]::result) != 0))
  {
    [v4 setClass:objc_opt_class() forSelector:sel_getIdentifierOfType_completionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDDeviceIdentifierService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getIdentifierOfType_vendorName_bundleIdentifier_completionHandler_ argumentIndex:1 ofReply:0];
    [+[_LSDDeviceIdentifierService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getIdentifierOfType_vendorName_bundleIdentifier_completionHandler_ argumentIndex:2 ofReply:0];
    [+[_LSDDeviceIdentifierService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getIdentifierOfType_vendorName_bundleIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDDeviceIdentifierService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_generateIdentifiersWithVendorName_bundleIdentifier_ argumentIndex:0 ofReply:0];
    [+[_LSDDeviceIdentifierService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_generateIdentifiersWithVendorName_bundleIdentifier_ argumentIndex:1 ofReply:0];
    [+[_LSDDeviceIdentifierService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_clearIdentifiersForUninstallationWithVendorName_bundleIdentifier_ argumentIndex:0 ofReply:0];
    [+[_LSDDeviceIdentifierService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_clearIdentifiersForUninstallationWithVendorName_bundleIdentifier_ argumentIndex:1 ofReply:0];
    v5 = +[_LSDDeviceIdentifierService XPCInterface]::result;
    v6 = objc_opt_class();

    [v5 setClass:v6 forSelector:sel_urlContainsDeviceIdentifierForAdvertising_completionHandler_ argumentIndex:0 ofReply:0];
  }
}

@end