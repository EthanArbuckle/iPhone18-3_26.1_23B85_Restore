@interface ARViewerRemoteViewController
@end

@implementation ARViewerRemoteViewController

void __63___ARViewerRemoteViewController_serviceViewControllerInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853314B0];
  v1 = serviceViewControllerInterface_sVendorInterface;
  serviceViewControllerInterface_sVendorInterface = v0;
}

void __50___ARViewerRemoteViewController_exportedInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28532F310];
  v1 = exportedInterface_sHostInterface;
  exportedInterface_sHostInterface = v0;
}

@end