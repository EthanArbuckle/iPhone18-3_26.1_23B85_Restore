@interface AFUEndpointStatusController
- (void)uarpDeviceManagerAppliedStagedAssets:(id)a3 deviceEndpoint:(id)a4 layer3Flags:(int64_t)a5;
- (void)uarpDeviceManagerAssetTransferProgress:(id)a3 deviceEndpoint:(id)a4 deviceAsset:(id)a5 bytesTransferred:(int64_t)a6 totalBytes:(int64_t)a7;
- (void)uarpDeviceManagerAssetTransferStatus:(id)a3 deviceEndpoint:(id)a4 deviceAsset:(id)a5 transferStatus:(int64_t)a6;
- (void)uarpDeviceManagerConnectionInterrupted:(void *)a1;
- (void)uarpDeviceManagerEndpointReachable:(id)a3 deviceEndpoint:(id)a4;
- (void)uarpDeviceManagerEndpointUnreachable:(id)a3 deviceEndpoint:(id)a4;
- (void)uarpDeviceManagerRescindedAssets:(id)a3 deviceEndpoint:(id)a4;
@end

@implementation AFUEndpointStatusController

- (void)uarpDeviceManagerEndpointReachable:(id)a3 deviceEndpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_23D43F260(v7, &unk_284F757B8, sub_23D440F34, &block_descriptor_53);
}

- (void)uarpDeviceManagerEndpointUnreachable:(id)a3 deviceEndpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_23D43F260(v7, &unk_284F75768, sub_23D440AF0, &block_descriptor_47);
}

- (void)uarpDeviceManagerAssetTransferProgress:(id)a3 deviceEndpoint:(id)a4 deviceAsset:(id)a5 bytesTransferred:(int64_t)a6 totalBytes:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;
  sub_23D43F55C(v13, a6, a7);
}

- (void)uarpDeviceManagerAssetTransferStatus:(id)a3 deviceEndpoint:(id)a4 deviceAsset:(id)a5 transferStatus:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = self;
  sub_23D43F874(v11, a6);
}

- (void)uarpDeviceManagerAppliedStagedAssets:(id)a3 deviceEndpoint:(id)a4 layer3Flags:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_23D43F260(v8, &unk_284F75678, sub_23D43FEE4, &block_descriptor_29);
}

- (void)uarpDeviceManagerRescindedAssets:(id)a3 deviceEndpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_23D43F260(v7, &unk_284F75628, sub_23D43FBA8, &block_descriptor_23);
}

- (void)uarpDeviceManagerConnectionInterrupted:(void *)a1
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0xD8);
  v2 = a1;
  v1();
}

@end