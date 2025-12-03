@interface BACloudKitDownload
- (BACloudKitDownload)init;
- (BACloudKitDownload)initWithCoder:(id)coder;
- (BACloudKitDownload)initWithIdentifier:(id)identifier recordType:(id)type expectedFieldKey:(id)key expectedFieldValue:(id)value assetKey:(id)assetKey applicationGroupIdentifier:(id)groupIdentifier;
- (BACloudKitDownload)initWithIdentifier:(id)identifier recordType:(id)type expectedFieldKey:(id)key expectedFieldValue:(id)value assetKey:(id)assetKey applicationGroupIdentifier:(id)groupIdentifier containerIdentifier:(id)containerIdentifier zoneID:(id)self0 databaseScope:(int64_t)self1 priority:(int64_t)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initWithIdentifier:(void *)identifier query:(void *)query assetKey:(void *)key applicationGroupIdentifier:(void *)groupIdentifier containerIdentifier:(void *)containerIdentifier zoneID:(uint64_t)d databaseScope:(uint64_t)scope priority:;
- (void)encodeWithCoder:(id)coder;
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

- (BACloudKitDownload)initWithIdentifier:(id)identifier recordType:(id)type expectedFieldKey:(id)key expectedFieldValue:(id)value assetKey:(id)assetKey applicationGroupIdentifier:(id)groupIdentifier
{
  v13 = MEMORY[0x277CBC218];
  groupIdentifierCopy = groupIdentifier;
  assetKeyCopy = assetKey;
  valueCopy = value;
  keyCopy = key;
  typeCopy = type;
  identifierCopy = identifier;
  defaultContainer = [v13 defaultContainer];
  containerIdentifier = [defaultContainer containerIdentifier];
  defaultRecordZone = [MEMORY[0x277CBC5E8] defaultRecordZone];
  zoneID = [defaultRecordZone zoneID];
  v23 = [(BACloudKitDownload *)self initWithIdentifier:identifierCopy recordType:typeCopy expectedFieldKey:keyCopy expectedFieldValue:valueCopy assetKey:assetKeyCopy applicationGroupIdentifier:groupIdentifierCopy containerIdentifier:containerIdentifier zoneID:zoneID databaseScope:1 priority:0];

  return v23;
}

- (BACloudKitDownload)initWithIdentifier:(id)identifier recordType:(id)type expectedFieldKey:(id)key expectedFieldValue:(id)value assetKey:(id)assetKey applicationGroupIdentifier:(id)groupIdentifier containerIdentifier:(id)containerIdentifier zoneID:(id)self0 databaseScope:(int64_t)self1 priority:(int64_t)self2
{
  identifierCopy = identifier;
  typeCopy = type;
  keyCopy = key;
  valueCopy = value;
  assetKeyCopy = assetKey;
  groupIdentifierCopy = groupIdentifier;
  containerIdentifierCopy = containerIdentifier;
  dCopy = d;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [keyCopy length])
  {
    if (valueCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ == %%@", keyCopy];
        valueCopy = [MEMORY[0x277CCAC30] predicateWithFormat:keyCopy, valueCopy];
        v31 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:typeCopy predicate:valueCopy];
        self = [(BACloudKitDownload *)self initWithIdentifier:identifierCopy query:v31 assetKey:assetKeyCopy applicationGroupIdentifier:groupIdentifierCopy containerIdentifier:containerIdentifierCopy zoneID:dCopy databaseScope:scope priority:priority];

        selfCopy = self;
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

  keyCopy = [v25 exceptionWithName:v26 reason:v27 userInfo:0];
  [keyCopy raise];
  selfCopy = 0;
LABEL_12:

  return selfCopy;
}

- (BACloudKitDownload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = BACloudKitDownload;
  v5 = [(BADownload *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BACKD.ContainerID"];
    [(BACloudKitDownload *)v5 setContainerID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BACKD.query"];
    [(BACloudKitDownload *)v5 setQuery:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BACKD.assetKey"];
    [(BACloudKitDownload *)v5 setAssetKey:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BACKD.zoneID"];
    [(BACloudKitDownload *)v5 setZoneID:v9];

    -[BACloudKitDownload setDatabaseScope:](v5, "setDatabaseScope:", [coderCopy decodeIntegerForKey:@"BACKD.databaseScope"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = BACloudKitDownload;
  coderCopy = coder;
  [(BADownload *)&v9 encodeWithCoder:coderCopy];
  v5 = [(BACloudKitDownload *)self containerID:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"BACKD.ContainerID"];

  query = [(BACloudKitDownload *)self query];
  [coderCopy encodeObject:query forKey:@"BACKD.query"];

  assetKey = [(BACloudKitDownload *)self assetKey];
  [coderCopy encodeObject:assetKey forKey:@"BACKD.assetKey"];

  zoneID = [(BACloudKitDownload *)self zoneID];
  [coderCopy encodeObject:zoneID forKey:@"BACKD.zoneID"];

  [coderCopy encodeInteger:-[BACloudKitDownload databaseScope](self forKey:{"databaseScope"), @"BACKD.databaseScope"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = BACloudKitDownload;
  return [(BADownload *)&v4 copyWithZone:zone];
}

- (id)initWithIdentifier:(void *)identifier query:(void *)query assetKey:(void *)key applicationGroupIdentifier:(void *)groupIdentifier containerIdentifier:(void *)containerIdentifier zoneID:(uint64_t)d databaseScope:(uint64_t)scope priority:
{
  v15 = a2;
  identifierCopy = identifier;
  queryCopy = query;
  keyCopy = key;
  groupIdentifierCopy = groupIdentifier;
  containerIdentifierCopy = containerIdentifier;
  if (self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v15 length])
    {
      v20 = [OUTLINED_FUNCTION_0_0() exceptionWithName:? reason:? userInfo:?];
      [v20 raise];
    }

    if (([identifierCopy isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      v21 = [OUTLINED_FUNCTION_0_0() exceptionWithName:? reason:? userInfo:?];
      [v21 raise];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![queryCopy length])
    {
      v22 = [OUTLINED_FUNCTION_0_0() exceptionWithName:? reason:? userInfo:?];
      [v22 raise];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![groupIdentifierCopy length])
    {
      v23 = [OUTLINED_FUNCTION_0_0() exceptionWithName:? reason:? userInfo:?];
      [v23 raise];
    }

    if (([containerIdentifierCopy isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      v24 = [OUTLINED_FUNCTION_0_0() exceptionWithName:? reason:? userInfo:?];
      [v24 raise];
    }

    v37.receiver = self;
    v37.super_class = BACloudKitDownload;
    v25 = keyCopy;
    self = objc_msgSendSuper2(&v37, sel_initPrivatelyWithApplicationGroupIdentifier_, keyCopy, d);
    if (self)
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
        v25 = keyCopy;
      }

      else
      {
        v31 = 2;
      }

      [self setIdentifier:v15];
      [self setPriority:scope];
      v32 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:groupIdentifierCopy environment:v31];
      [self setContainerID:v32];

      [self setQuery:identifierCopy];
      [self setAssetKey:queryCopy];
      [self setZoneID:containerIdentifierCopy];
      [self setDatabaseScope:v35];
    }
  }

  else
  {
    v25 = keyCopy;
  }

  return self;
}

@end