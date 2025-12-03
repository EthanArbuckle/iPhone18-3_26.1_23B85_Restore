@interface AFUEndpointStatusController
- (void)uarpDeviceManagerAppliedStagedAssets:(id)assets deviceEndpoint:(id)endpoint layer3Flags:(int64_t)flags;
- (void)uarpDeviceManagerAssetTransferProgress:(id)progress deviceEndpoint:(id)endpoint deviceAsset:(id)asset bytesTransferred:(int64_t)transferred totalBytes:(int64_t)bytes;
- (void)uarpDeviceManagerAssetTransferStatus:(id)status deviceEndpoint:(id)endpoint deviceAsset:(id)asset transferStatus:(int64_t)transferStatus;
- (void)uarpDeviceManagerConnectionInterrupted:(void *)interrupted;
- (void)uarpDeviceManagerEndpointReachable:(id)reachable deviceEndpoint:(id)endpoint;
- (void)uarpDeviceManagerEndpointUnreachable:(id)unreachable deviceEndpoint:(id)endpoint;
- (void)uarpDeviceManagerRescindedAssets:(id)assets deviceEndpoint:(id)endpoint;
@end

@implementation AFUEndpointStatusController

- (void)uarpDeviceManagerEndpointReachable:(id)reachable deviceEndpoint:(id)endpoint
{
  reachableCopy = reachable;
  endpointCopy = endpoint;
  selfCopy = self;
  sub_23D43F260(endpointCopy, &unk_284F757B8, sub_23D440F34, &block_descriptor_53);
}

- (void)uarpDeviceManagerEndpointUnreachable:(id)unreachable deviceEndpoint:(id)endpoint
{
  unreachableCopy = unreachable;
  endpointCopy = endpoint;
  selfCopy = self;
  sub_23D43F260(endpointCopy, &unk_284F75768, sub_23D440AF0, &block_descriptor_47);
}

- (void)uarpDeviceManagerAssetTransferProgress:(id)progress deviceEndpoint:(id)endpoint deviceAsset:(id)asset bytesTransferred:(int64_t)transferred totalBytes:(int64_t)bytes
{
  progressCopy = progress;
  endpointCopy = endpoint;
  assetCopy = asset;
  selfCopy = self;
  sub_23D43F55C(endpointCopy, transferred, bytes);
}

- (void)uarpDeviceManagerAssetTransferStatus:(id)status deviceEndpoint:(id)endpoint deviceAsset:(id)asset transferStatus:(int64_t)transferStatus
{
  statusCopy = status;
  endpointCopy = endpoint;
  assetCopy = asset;
  selfCopy = self;
  sub_23D43F874(endpointCopy, transferStatus);
}

- (void)uarpDeviceManagerAppliedStagedAssets:(id)assets deviceEndpoint:(id)endpoint layer3Flags:(int64_t)flags
{
  assetsCopy = assets;
  endpointCopy = endpoint;
  selfCopy = self;
  sub_23D43F260(endpointCopy, &unk_284F75678, sub_23D43FEE4, &block_descriptor_29);
}

- (void)uarpDeviceManagerRescindedAssets:(id)assets deviceEndpoint:(id)endpoint
{
  assetsCopy = assets;
  endpointCopy = endpoint;
  selfCopy = self;
  sub_23D43F260(endpointCopy, &unk_284F75628, sub_23D43FBA8, &block_descriptor_23);
}

- (void)uarpDeviceManagerConnectionInterrupted:(void *)interrupted
{
  v1 = *((*MEMORY[0x277D85000] & *interrupted) + 0xD8);
  interruptedCopy = interrupted;
  v1();
}

@end