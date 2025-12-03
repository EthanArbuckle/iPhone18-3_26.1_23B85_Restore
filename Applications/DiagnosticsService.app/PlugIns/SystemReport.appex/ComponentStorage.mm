@interface ComponentStorage
- (id)checkDiskSpaceForURLResourceKey:(id)key;
- (id)dataAvailable;
- (id)dataAvailableForImportantUsage;
- (id)dataCapacity;
- (id)serialNumber;
- (id)totalDiskCapacity;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentStorage

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  dataCapacity = [(ComponentStorage *)self dataCapacity];
  [attributesCopy setObject:dataCapacity forKeyedSubscript:@"nandCapacity"];

  dataAvailable = [(ComponentStorage *)self dataAvailable];
  [attributesCopy setObject:dataAvailable forKeyedSubscript:@"nandAvailable"];

  dataAvailableForImportantUsage = [(ComponentStorage *)self dataAvailableForImportantUsage];
  [attributesCopy setObject:dataAvailableForImportantUsage forKeyedSubscript:@"nandAvailableForImportantUsage"];

  totalDiskCapacity = [(ComponentStorage *)self totalDiskCapacity];
  [attributesCopy setObject:totalDiskCapacity forKeyedSubscript:@"nandTotalDiskCapacity"];

  serialNumber = [(ComponentStorage *)self serialNumber];
  [attributesCopy setObject:serialNumber forKeyedSubscript:@"serialNumber"];

  v10 = CopyAppleCareNANDInfo();
  [attributesCopy setObject:v10 forKeyedSubscript:@"nandInfo"];
}

- (id)dataCapacity
{
  memset(&v6, 0, 512);
  if (statfs("/", &v6))
  {
    v2 = 0;
  }

  else
  {
    v2 = [NSNumber numberWithUnsignedLongLong:v6.f_blocks * v6.f_bsize];
  }

  stringValue = [v2 stringValue];
  v4 = stringOrNull(stringValue);

  return v4;
}

- (id)dataAvailable
{
  v2 = [(ComponentStorage *)self checkDiskSpaceForURLResourceKey:NSURLVolumeAvailableCapacityKey];
  v3 = numberOrNull(v2);

  return v3;
}

- (id)dataAvailableForImportantUsage
{
  v2 = [(ComponentStorage *)self checkDiskSpaceForURLResourceKey:NSURLVolumeAvailableCapacityForImportantUsageKey];
  v3 = numberOrNull(v2);

  return v3;
}

- (id)totalDiskCapacity
{
  v2 = [(ComponentStorage *)self checkDiskSpaceForURLResourceKey:NSURLVolumeTotalCapacityKey];
  v3 = numberOrNull(v2);

  return v3;
}

- (id)serialNumber
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [&off_1000C8720 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(&off_1000C8720);
        }

        v6 = [DAComponentUtil getIORegistryClass:*(*(&v11 + 1) + 8 * i) property:@"Serial Number" optionalKey:0];
        if (v6)
        {
          v7 = v6;
          v8 = [[NSString alloc] initWithData:v6 encoding:4];
          goto LABEL_11;
        }
      }

      v3 = [&off_1000C8720 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
  v8 = 0;
LABEL_11:
  v9 = stringOrNull(v8);

  return v9;
}

- (id)checkDiskSpaceForURLResourceKey:(id)key
{
  keyCopy = key;
  v4 = [NSURL fileURLWithPath:@"/private/var"];
  v9 = 0;
  v10 = 0;
  [v4 getResourceValue:&v10 forKey:keyCopy error:&v9];
  v5 = v10;
  v6 = v9;
  if (!v5)
  {
    v7 = DiagnosticsKitLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = keyCopy;
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to check resource %@ in system report: %@", buf, 0x16u);
    }
  }

  return v5;
}

@end