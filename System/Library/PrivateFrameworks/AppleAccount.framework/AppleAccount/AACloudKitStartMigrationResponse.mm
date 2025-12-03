@interface AACloudKitStartMigrationResponse
- (AACloudKitStartMigrationResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation AACloudKitStartMigrationResponse

- (AACloudKitStartMigrationResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v10.receiver = self;
  v10.super_class = AACloudKitStartMigrationResponse;
  v4 = [(AAResponse *)&v10 initWithHTTPResponse:response data:data];
  v5 = v4;
  if (v4)
  {
    responseDictionary = [(AAResponse *)v4 responseDictionary];
    v7 = [responseDictionary objectForKeyedSubscript:@"status"];
    status = v5->_status;
    v5->_status = v7;
  }

  return v5;
}

@end