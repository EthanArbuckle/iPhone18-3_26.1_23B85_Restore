@interface ARViewerViewController
@end

@implementation ARViewerViewController

void __57___ARViewerViewController__remoteViewControllerInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28532F310];
  v1 = _remoteViewControllerInterface_sHostInterface;
  _remoteViewControllerInterface_sHostInterface = v0;
}

void __45___ARViewerViewController__exportedInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853314B0];
  v1 = _exportedInterface_sVendorInterface;
  _exportedInterface_sVendorInterface = v0;
}

@end