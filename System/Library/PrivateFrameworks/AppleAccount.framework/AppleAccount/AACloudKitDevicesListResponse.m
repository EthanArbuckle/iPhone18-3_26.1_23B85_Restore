@interface AACloudKitDevicesListResponse
- (AACloudKitDevicesListResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
@end

@implementation AACloudKitDevicesListResponse

- (AACloudKitDevicesListResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v17.receiver = self;
  v17.super_class = AACloudKitDevicesListResponse;
  v4 = [(AAResponse *)&v17 initWithHTTPResponse:a3 data:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(AAResponse *)v4 responseDictionary];
    v7 = [v6 objectForKeyedSubscript:@"neverEligible"];
    incompatibleDevices = v5->_incompatibleDevices;
    v5->_incompatibleDevices = v7;

    v9 = [(NSArray *)v5->_incompatibleDevices aaf_map:&__block_literal_global_763];
    incompatibleDeviceNames = v5->_incompatibleDeviceNames;
    v5->_incompatibleDeviceNames = v9;

    v11 = [(AAResponse *)v5 responseDictionary];
    v12 = [v11 objectForKeyedSubscript:@"needsUpgrade"];
    needUpgradeDevices = v5->_needUpgradeDevices;
    v5->_needUpgradeDevices = v12;

    v14 = [(NSArray *)v5->_needUpgradeDevices aaf_map:&__block_literal_global_768];
    needUpgradeDeviceNames = v5->_needUpgradeDeviceNames;
    v5->_needUpgradeDeviceNames = v14;
  }

  return v5;
}

@end