@interface ICCameraItem
- (ICCameraItem)initWithDictionary:(id)dictionary parentFolder:(id)folder device:(id)device;
- (ICCameraItem)initWithName:(id)name parentFolder:(id)folder device:(id)device;
- (NSString)fileSystemPath;
- (id)description;
- (id)valueForUndefinedKey:(id)key;
- (void)appendToPath:(id)path;
- (void)flushMetadataCache;
- (void)flushThumbnailCache;
- (void)requestMetadata;
- (void)requestThumbnail;
- (void)setMetadataState:(unint64_t)state;
- (void)setUTI:(id)i;
@end

@implementation ICCameraItem

- (ICCameraItem)initWithName:(id)name parentFolder:(id)folder device:(id)device
{
  nameCopy = name;
  folderCopy = folder;
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = ICCameraItem;
  v11 = [(ICCameraItem *)&v17 init];
  v12 = v11;
  if (v11)
  {
    [(ICCameraItem *)v11 setName:nameCopy];
    [(ICCameraItem *)v12 setParentFolder:folderCopy];
    -[ICCameraItem setParentID:](v12, "setParentID:", [folderCopy objectID]);
    atomic_fetch_add(NextICAObjectID__sLastICObjectID, 2u);
    v13 = atomic_load(NextICAObjectID__sLastICObjectID);
    [(ICCameraItem *)v12 setObjectID:v13];
    [(ICCameraItem *)v12 setOwnerID:0];
    [(ICCameraItem *)v12 setTwinID:0];
    [(ICCameraItem *)v12 setDevice:deviceCopy];
    v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    [(ICCameraItem *)v12 setUserData:v14];

    v15 = v12;
  }

  return v12;
}

- (void)setUTI:(id)i
{
  iCopy = i;
  identifier = [*MEMORY[0x1E6982DC8] identifier];
  v5 = [iCopy isEqualToString:identifier];

  if (v5)
  {
    v6 = MEMORY[0x1E69637D0];
  }

  else
  {
    identifier2 = [*MEMORY[0x1E6982E30] identifier];
    v8 = [iCopy isEqualToString:identifier2];

    if (v8)
    {
      v6 = MEMORY[0x1E69637F8];
    }

    else
    {
      identifier3 = [*MEMORY[0x1E6982EE8] identifier];
      v10 = [iCopy isEqualToString:identifier3];

      if (v10)
      {
        v6 = MEMORY[0x1E6963850];
      }

      else
      {
        identifier4 = [*MEMORY[0x1E6982CD0] identifier];
        v12 = [iCopy isEqualToString:identifier4];

        if (v12)
        {
          v6 = MEMORY[0x1E6963748];
        }

        else
        {
          v6 = MEMORY[0x1E6963798];
        }
      }
    }
  }

  self->_UTI = *v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"\n%@ <%p>:\n", objc_opt_class(), self];
  device = [(ICCameraItem *)self device];
  name = [device name];
  [v3 appendFormat:@"  device                  : %@\n", name];

  [v3 appendFormat:@"  parentID                : 0x%lx\n", -[ICCameraItem parentID](self, "parentID")];
  [v3 appendFormat:@"  objectID                : 0x%lx\n", -[ICCameraItem objectID](self, "objectID")];
  parentFolder = [(ICCameraItem *)self parentFolder];
  name2 = [parentFolder name];
  [v3 appendFormat:@"  parentFolder            : %@\n", name2];

  name3 = [(ICCameraItem *)self name];
  [v3 appendFormat:@"  name                    : %@\n", name3];

  v9 = [(ICCameraItem *)self UTI];
  [v3 appendFormat:@"  UTI                     : %@\n", v9];

  isLocked = [(ICCameraItem *)self isLocked];
  v11 = "NO";
  if (isLocked)
  {
    v11 = "YES";
  }

  [v3 appendFormat:@"  locked                  : %s\n", v11];
  creationDate = [(ICCameraItem *)self creationDate];
  [v3 appendFormat:@"  creationDate            : %@\n", creationDate];

  modificationDate = [(ICCameraItem *)self modificationDate];
  [v3 appendFormat:@"  modificationDate        : %@\n", modificationDate];

  return v3;
}

- (void)setMetadataState:(unint64_t)state
{
  if ([(ICCameraItem *)self privMetadataState]!= state)
  {

    [(ICCameraItem *)self setPrivMetadataState:state];
  }
}

- (id)valueForUndefinedKey:(id)key
{
  if ([key isEqual:@"thumbnail"])
  {
    thumbnail = [(ICCameraItem *)self thumbnail];
  }

  else
  {
    thumbnail = 0;
  }

  return thumbnail;
}

- (void)requestThumbnail
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1C6F19000, v0, v1, "%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)requestMetadata
{
  __ICOSLogCreate();
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ICCameraItem requestMetadata] - unimplemented in base class"];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_ERROR))
  {
    [ICCameraItem requestThumbnail];
  }
}

- (void)flushThumbnailCache
{
  __ICOSLogCreate();
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ICCameraItem flushThumbnailCache] - unimplemented in base class"];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_ERROR))
  {
    [ICCameraItem requestThumbnail];
  }
}

- (void)flushMetadataCache
{
  __ICOSLogCreate();
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ICCameraItem flushMetadataCache] - unimplemented in base class"];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_ERROR))
  {
    [ICCameraItem requestThumbnail];
  }
}

- (NSString)fileSystemPath
{
  device = [(ICCameraItem *)self device];
  volumePath = [device volumePath];

  if (volumePath)
  {
    v5 = [MEMORY[0x1E696AD60] stringWithCapacity:0];
    [(ICCameraItem *)self appendToPath:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)appendToPath:(id)path
{
  pathCopy = path;
  device = [(ICCameraItem *)self device];
  volumePath = [device volumePath];

  if (volumePath)
  {
    parentFolder = [(ICCameraItem *)self parentFolder];

    if (parentFolder)
    {
      parentFolder2 = [(ICCameraItem *)self parentFolder];
      [parentFolder2 appendToPath:pathCopy];
    }

    else
    {
      [pathCopy appendString:volumePath];
    }

    name = [(ICCameraItem *)self name];
    [pathCopy appendFormat:@"/%@", name];
  }
}

- (ICCameraItem)initWithDictionary:(id)dictionary parentFolder:(id)folder device:(id)device
{
  dictionaryCopy = dictionary;
  folderCopy = folder;
  deviceCopy = device;
  v28.receiver = self;
  v28.super_class = ICCameraItem;
  v11 = [(ICCameraItem *)&v28 init];
  v12 = v11;
  if (v11)
  {
    [(ICCameraItem *)v11 setDevice:deviceCopy];
    [(ICCameraItem *)v12 setParentFolder:folderCopy];
    -[ICCameraItem setParentID:](v12, "setParentID:", [folderCopy objectID]);
    v13 = [dictionaryCopy objectForKeyedSubscript:@"icao"];
    -[ICCameraItem setObjectID:](v12, "setObjectID:", [v13 unsignedIntegerValue]);

    [(ICCameraItem *)v12 setOwnerID:0];
    [(ICCameraItem *)v12 setTwinID:0];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"ifil"];
    [(ICCameraItem *)v12 setName:v14];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"AddedAfterContentCatalogCompleted"];
    v16 = v15;
    if (v15)
    {
      bOOLValue = [v15 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    [(ICCameraItem *)v12 setAddedAfterContentCatalogCompleted:bOOLValue];
    v18 = [dictionaryCopy objectForKeyedSubscript:@"file"];
    unsignedIntValue = [v18 unsignedIntValue];

    v20 = MEMORY[0x1E6982DC8];
    if (unsignedIntValue != 1684632165)
    {
      v20 = MEMORY[0x1E6982D60];
    }

    identifier = [*v20 identifier];
    [(ICCameraItem *)v12 setUTI:identifier];

    v22 = [dictionaryCopy objectForKeyedSubscript:@"lock"];
    -[ICCameraItem setLocked:](v12, "setLocked:", [v22 unsignedIntValue] == 1);

    v23 = [dictionaryCopy objectForKeyedSubscript:@"ICAObjectInTemporaryStoreKey"];
    -[ICCameraItem setInTemporaryStore:](v12, "setInTemporaryStore:", [v23 isEqualToString:@"YES"]);

    v24 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    [(ICCameraItem *)v12 setUserData:v24];

    v25 = [dictionaryCopy objectForKeyedSubscript:@"PTPObjH"];
    -[ICCameraItem setPtpObjectHandle:](v12, "setPtpObjectHandle:", [v25 unsignedIntValue]);

    [(ICCameraItem *)v12 setCreationDate:0];
    [(ICCameraItem *)v12 setModificationDate:0];
    v26 = v12;
  }

  return v12;
}

@end