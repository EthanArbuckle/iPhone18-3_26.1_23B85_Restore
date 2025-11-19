@interface _ADCloudKitDeviceCapabilitiesStoreHelper
- (id)recordBuilder;
- (id)tableDescription;
- (void)createIndicesForTableInDatabase:(id)a3;
@end

@implementation _ADCloudKitDeviceCapabilitiesStoreHelper

- (id)recordBuilder
{
  recordBuilder = self->_recordBuilder;
  if (!recordBuilder)
  {
    v4 = objc_alloc_init(ADCloudKitCapabilitiesRecordBuilder);
    v5 = self->_recordBuilder;
    self->_recordBuilder = v4;

    recordBuilder = self->_recordBuilder;
  }

  return recordBuilder;
}

- (void)createIndicesForTableInDatabase:(id)a3
{
  v3 = a3;
  sub_1001BFED0(@"device_capabilities", @"name", v3);
  sub_1001BFED0(@"device_capabilities", @"device_id", v3);
}

- (id)tableDescription
{
  v2 = [SiriCoreSQLiteTableDescription alloc];
  v3 = [SiriCoreSQLiteColumnDescription uniqueTextColumnWithName:@"name"];
  v4 = [[SiriCoreSQLiteColumnDescription alloc] initWithName:@"capability_info" type:@"BLOB" constraints:{0, v3}];
  v9[1] = v4;
  v5 = [SiriCoreSQLiteColumnDescription uniqueTextColumnWithName:@"device_id"];
  v9[2] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:3];
  v7 = [v2 initWithName:@"device_capabilities" columns:v6 constraints:0];

  return v7;
}

@end