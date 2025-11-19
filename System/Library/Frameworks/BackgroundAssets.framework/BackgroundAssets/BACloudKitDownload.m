@interface BACloudKitDownload
- (BACloudKitDownload)init;
- (BACloudKitDownload)initWithCoder:(id)a3;
- (BACloudKitDownload)initWithIdentifier:(id)a3 recordType:(id)a4 expectedFieldKey:(id)a5 expectedFieldValue:(id)a6 assetKey:(id)a7 applicationGroupIdentifier:(id)a8;
- (BACloudKitDownload)initWithIdentifier:(id)a3 recordType:(id)a4 expectedFieldKey:(id)a5 expectedFieldValue:(id)a6 assetKey:(id)a7 applicationGroupIdentifier:(id)a8 containerIdentifier:(id)a9 zoneID:(id)a10 databaseScope:(int64_t)a11 priority:(int64_t)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initWithIdentifier:(void *)a3 query:(void *)a4 assetKey:(void *)a5 applicationGroupIdentifier:(void *)a6 containerIdentifier:(void *)a7 zoneID:(uint64_t)a8 databaseScope:(uint64_t)a9 priority:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BACloudKitDownload

- (BACloudKitDownload)init
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
  if (result)
  {
    v3 = 136315138;
    v4 = "BACloudKitDownload cannot be constructed using -init.";
    _os_log_fault_impl(&dword_236E28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF BackgroundAssets: %s", &v3, 0xCu);
  }

  qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: BACloudKitDownload cannot be constructed using -init.";
  __break(0xB001u);
  return result;
}

- (BACloudKitDownload)initWithIdentifier:(id)a3 recordType:(id)a4 expectedFieldKey:(id)a5 expectedFieldValue:(id)a6 assetKey:(id)a7 applicationGroupIdentifier:(id)a8
{
  v13 = MEMORY[0x277CBC218];
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v26 = [v13 defaultContainer];
  v20 = [v26 containerIdentifier];
  v21 = [MEMORY[0x277CBC5E8] defaultRecordZone];
  v22 = [v21 zoneID];
  v23 = [(BACloudKitDownload *)self initWithIdentifier:v19 recordType:v18 expectedFieldKey:v17 expectedFieldValue:v16 assetKey:v15 applicationGroupIdentifier:v14 containerIdentifier:v20 zoneID:v22 databaseScope:1 priority:0];

  return v23;
}

- (BACloudKitDownload)initWithIdentifier:(id)a3 recordType:(id)a4 expectedFieldKey:(id)a5 expectedFieldValue:(id)a6 assetKey:(id)a7 applicationGroupIdentifier:(id)a8 containerIdentifier:(id)a9 zoneID:(id)a10 databaseScope:(int64_t)a11 priority:(int64_t)a12
{
  v33 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 length])
  {
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ == %%@", v19];
        v32 = [MEMORY[0x277CCAC30] predicateWithFormat:v28, v20];
        v31 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:v18 predicate:v32];
        self = [(BACloudKitDownload *)self initWithIdentifier:v33 query:v31 assetKey:v21 applicationGroupIdentifier:v22 containerIdentifier:v23 zoneID:v24 databaseScope:a11 priority:a12];

        v29 = self;
        goto LABEL_12;
      }

      v25 = MEMORY[0x277CBEAD8];
      v26 = *MEMORY[0x277CBE660];
      v27 = @"expectedFieldValue must be of type: NSString, NSNumber, NSDate, NSData, or NSArray.";
    }

    else
    {
      v25 = MEMORY[0x277CBEAD8];
      v26 = *MEMORY[0x277CBE660];
      v27 = @"expectedFieldValue cannot be passed in as nil.";
    }
  }

  else
  {
    v25 = MEMORY[0x277CBEAD8];
    v26 = *MEMORY[0x277CBE660];
    v27 = @"expectedFieldKey must be a valid string.";
  }

  v28 = [v25 exceptionWithName:v26 reason:v27 userInfo:0];
  [v28 raise];
  v29 = 0;
LABEL_12:

  return v29;
}

- (BACloudKitDownload)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BACloudKitDownload;
  v5 = [(BADownload *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BACKD.ContainerID"];
    [(BACloudKitDownload *)v5 setContainerID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BACKD.query"];
    [(BACloudKitDownload *)v5 setQuery:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BACKD.assetKey"];
    [(BACloudKitDownload *)v5 setAssetKey:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BACKD.zoneID"];
    [(BACloudKitDownload *)v5 setZoneID:v9];

    -[BACloudKitDownload setDatabaseScope:](v5, "setDatabaseScope:", [v4 decodeIntegerForKey:@"BACKD.databaseScope"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = BACloudKitDownload;
  v4 = a3;
  [(BADownload *)&v9 encodeWithCoder:v4];
  v5 = [(BACloudKitDownload *)self containerID:v9.receiver];
  [v4 encodeObject:v5 forKey:@"BACKD.ContainerID"];

  v6 = [(BACloudKitDownload *)self query];
  [v4 encodeObject:v6 forKey:@"BACKD.query"];

  v7 = [(BACloudKitDownload *)self assetKey];
  [v4 encodeObject:v7 forKey:@"BACKD.assetKey"];

  v8 = [(BACloudKitDownload *)self zoneID];
  [v4 encodeObject:v8 forKey:@"BACKD.zoneID"];

  [v4 encodeInteger:-[BACloudKitDownload databaseScope](self forKey:{"databaseScope"), @"BACKD.databaseScope"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = BACloudKitDownload;
  return [(BADownload *)&v4 copyWithZone:a3];
}

- (id)initWithIdentifier:(void *)a3 query:(void *)a4 assetKey:(void *)a5 applicationGroupIdentifier:(void *)a6 containerIdentifier:(void *)a7 zoneID:(uint64_t)a8 databaseScope:(uint64_t)a9 priority:
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v36 = a5;
  v18 = a6;
  v19 = a7;
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v15 length])
    {
      v20 = [OUTLINED_FUNCTION_0_0() exceptionWithName:? reason:? userInfo:?];
      [v20 raise];
    }

    if (([v16 isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      v21 = [OUTLINED_FUNCTION_0_0() exceptionWithName:? reason:? userInfo:?];
      [v21 raise];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v17 length])
    {
      v22 = [OUTLINED_FUNCTION_0_0() exceptionWithName:? reason:? userInfo:?];
      [v22 raise];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v18 length])
    {
      v23 = [OUTLINED_FUNCTION_0_0() exceptionWithName:? reason:? userInfo:?];
      [v23 raise];
    }

    if (([v19 isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      v24 = [OUTLINED_FUNCTION_0_0() exceptionWithName:? reason:? userInfo:?];
      [v24 raise];
    }

    v37.receiver = a1;
    v37.super_class = BACloudKitDownload;
    v25 = v36;
    a1 = objc_msgSendSuper2(&v37, sel_initPrivatelyWithApplicationGroupIdentifier_, v36, a8);
    if (a1)
    {
      v26 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
      if (v26)
      {
        v27 = v26;
        v28 = SecTaskCopyValueForEntitlement(v26, @"com.apple.developer.icloud-container-environment", 0);
        if (v28)
        {
          v29 = v28;
          v30 = CFGetTypeID(v28);
          if (v30 == CFStringGetTypeID())
          {
            v31 = 1;
            if (CFStringCompare(v29, @"production", 1uLL))
            {
              v31 = 2;
            }
          }

          else
          {
            v31 = 2;
          }

          CFRelease(v29);
        }

        else
        {
          v31 = 2;
        }

        CFRelease(v27);
        v25 = v36;
      }

      else
      {
        v31 = 2;
      }

      [a1 setIdentifier:v15];
      [a1 setPriority:a9];
      v32 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:v18 environment:v31];
      [a1 setContainerID:v32];

      [a1 setQuery:v16];
      [a1 setAssetKey:v17];
      [a1 setZoneID:v19];
      [a1 setDatabaseScope:v35];
    }
  }

  else
  {
    v25 = v36;
  }

  return a1;
}

@end