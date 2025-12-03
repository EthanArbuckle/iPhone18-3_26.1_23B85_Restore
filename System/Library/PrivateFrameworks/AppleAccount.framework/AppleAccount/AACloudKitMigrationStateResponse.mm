@interface AACloudKitMigrationStateResponse
- (AACloudKitMigrationStateResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation AACloudKitMigrationStateResponse

- (AACloudKitMigrationStateResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v10.receiver = self;
  v10.super_class = AACloudKitMigrationStateResponse;
  v4 = [(AAResponse *)&v10 initWithHTTPResponse:response data:data];
  v5 = v4;
  if (v4)
  {
    responseDictionary = [(AAResponse *)v4 responseDictionary];
    v7 = [responseDictionary objectForKeyedSubscript:@"name"];
    name = v5->_name;
    v5->_name = v7;
  }

  return v5;
}

@end