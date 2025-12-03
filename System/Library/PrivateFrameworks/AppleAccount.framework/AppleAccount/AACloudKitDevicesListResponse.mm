@interface AACloudKitDevicesListResponse
- (AACloudKitDevicesListResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation AACloudKitDevicesListResponse

- (AACloudKitDevicesListResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v17.receiver = self;
  v17.super_class = AACloudKitDevicesListResponse;
  v4 = [(AAResponse *)&v17 initWithHTTPResponse:response data:data];
  v5 = v4;
  if (v4)
  {
    responseDictionary = [(AAResponse *)v4 responseDictionary];
    v7 = [responseDictionary objectForKeyedSubscript:@"neverEligible"];
    incompatibleDevices = v5->_incompatibleDevices;
    v5->_incompatibleDevices = v7;

    v9 = [(NSArray *)v5->_incompatibleDevices aaf_map:&__block_literal_global_763];
    incompatibleDeviceNames = v5->_incompatibleDeviceNames;
    v5->_incompatibleDeviceNames = v9;

    responseDictionary2 = [(AAResponse *)v5 responseDictionary];
    v12 = [responseDictionary2 objectForKeyedSubscript:@"needsUpgrade"];
    needUpgradeDevices = v5->_needUpgradeDevices;
    v5->_needUpgradeDevices = v12;

    v14 = [(NSArray *)v5->_needUpgradeDevices aaf_map:&__block_literal_global_768];
    needUpgradeDeviceNames = v5->_needUpgradeDeviceNames;
    v5->_needUpgradeDeviceNames = v14;
  }

  return v5;
}

@end