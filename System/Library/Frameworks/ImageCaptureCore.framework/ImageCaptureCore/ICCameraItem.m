@interface ICCameraItem
- (ICCameraItem)initWithDictionary:(id)a3 parentFolder:(id)a4 device:(id)a5;
- (ICCameraItem)initWithName:(id)a3 parentFolder:(id)a4 device:(id)a5;
- (NSString)fileSystemPath;
- (id)description;
- (id)valueForUndefinedKey:(id)a3;
- (void)appendToPath:(id)a3;
- (void)flushMetadataCache;
- (void)flushThumbnailCache;
- (void)requestMetadata;
- (void)requestThumbnail;
- (void)setMetadataState:(unint64_t)a3;
- (void)setUTI:(id)a3;
@end

@implementation ICCameraItem

- (ICCameraItem)initWithName:(id)a3 parentFolder:(id)a4 device:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = ICCameraItem;
  v11 = [(ICCameraItem *)&v17 init];
  v12 = v11;
  if (v11)
  {
    [(ICCameraItem *)v11 setName:v8];
    [(ICCameraItem *)v12 setParentFolder:v9];
    -[ICCameraItem setParentID:](v12, "setParentID:", [v9 objectID]);
    atomic_fetch_add(NextICAObjectID__sLastICObjectID, 2u);
    v13 = atomic_load(NextICAObjectID__sLastICObjectID);
    [(ICCameraItem *)v12 setObjectID:v13];
    [(ICCameraItem *)v12 setOwnerID:0];
    [(ICCameraItem *)v12 setTwinID:0];
    [(ICCameraItem *)v12 setDevice:v10];
    v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    [(ICCameraItem *)v12 setUserData:v14];

    v15 = v12;
  }

  return v12;
}

- (void)setUTI:(id)a3
{
  v13 = a3;
  v4 = [*MEMORY[0x1E6982DC8] identifier];
  v5 = [v13 isEqualToString:v4];

  if (v5)
  {
    v6 = MEMORY[0x1E69637D0];
  }

  else
  {
    v7 = [*MEMORY[0x1E6982E30] identifier];
    v8 = [v13 isEqualToString:v7];

    if (v8)
    {
      v6 = MEMORY[0x1E69637F8];
    }

    else
    {
      v9 = [*MEMORY[0x1E6982EE8] identifier];
      v10 = [v13 isEqualToString:v9];

      if (v10)
      {
        v6 = MEMORY[0x1E6963850];
      }

      else
      {
        v11 = [*MEMORY[0x1E6982CD0] identifier];
        v12 = [v13 isEqualToString:v11];

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
  v4 = [(ICCameraItem *)self device];
  v5 = [v4 name];
  [v3 appendFormat:@"  device                  : %@\n", v5];

  [v3 appendFormat:@"  parentID                : 0x%lx\n", -[ICCameraItem parentID](self, "parentID")];
  [v3 appendFormat:@"  objectID                : 0x%lx\n", -[ICCameraItem objectID](self, "objectID")];
  v6 = [(ICCameraItem *)self parentFolder];
  v7 = [v6 name];
  [v3 appendFormat:@"  parentFolder            : %@\n", v7];

  v8 = [(ICCameraItem *)self name];
  [v3 appendFormat:@"  name                    : %@\n", v8];

  v9 = [(ICCameraItem *)self UTI];
  [v3 appendFormat:@"  UTI                     : %@\n", v9];

  v10 = [(ICCameraItem *)self isLocked];
  v11 = "NO";
  if (v10)
  {
    v11 = "YES";
  }

  [v3 appendFormat:@"  locked                  : %s\n", v11];
  v12 = [(ICCameraItem *)self creationDate];
  [v3 appendFormat:@"  creationDate            : %@\n", v12];

  v13 = [(ICCameraItem *)self modificationDate];
  [v3 appendFormat:@"  modificationDate        : %@\n", v13];

  return v3;
}

- (void)setMetadataState:(unint64_t)a3
{
  if ([(ICCameraItem *)self privMetadataState]!= a3)
  {

    [(ICCameraItem *)self setPrivMetadataState:a3];
  }
}

- (id)valueForUndefinedKey:(id)a3
{
  if ([a3 isEqual:@"thumbnail"])
  {
    v4 = [(ICCameraItem *)self thumbnail];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v3 = [(ICCameraItem *)self device];
  v4 = [v3 volumePath];

  if (v4)
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

- (void)appendToPath:(id)a3
{
  v9 = a3;
  v4 = [(ICCameraItem *)self device];
  v5 = [v4 volumePath];

  if (v5)
  {
    v6 = [(ICCameraItem *)self parentFolder];

    if (v6)
    {
      v7 = [(ICCameraItem *)self parentFolder];
      [v7 appendToPath:v9];
    }

    else
    {
      [v9 appendString:v5];
    }

    v8 = [(ICCameraItem *)self name];
    [v9 appendFormat:@"/%@", v8];
  }
}

- (ICCameraItem)initWithDictionary:(id)a3 parentFolder:(id)a4 device:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28.receiver = self;
  v28.super_class = ICCameraItem;
  v11 = [(ICCameraItem *)&v28 init];
  v12 = v11;
  if (v11)
  {
    [(ICCameraItem *)v11 setDevice:v10];
    [(ICCameraItem *)v12 setParentFolder:v9];
    -[ICCameraItem setParentID:](v12, "setParentID:", [v9 objectID]);
    v13 = [v8 objectForKeyedSubscript:@"icao"];
    -[ICCameraItem setObjectID:](v12, "setObjectID:", [v13 unsignedIntegerValue]);

    [(ICCameraItem *)v12 setOwnerID:0];
    [(ICCameraItem *)v12 setTwinID:0];
    v14 = [v8 objectForKeyedSubscript:@"ifil"];
    [(ICCameraItem *)v12 setName:v14];

    v15 = [v8 objectForKeyedSubscript:@"AddedAfterContentCatalogCompleted"];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 BOOLValue];
    }

    else
    {
      v17 = 0;
    }

    [(ICCameraItem *)v12 setAddedAfterContentCatalogCompleted:v17];
    v18 = [v8 objectForKeyedSubscript:@"file"];
    v19 = [v18 unsignedIntValue];

    v20 = MEMORY[0x1E6982DC8];
    if (v19 != 1684632165)
    {
      v20 = MEMORY[0x1E6982D60];
    }

    v21 = [*v20 identifier];
    [(ICCameraItem *)v12 setUTI:v21];

    v22 = [v8 objectForKeyedSubscript:@"lock"];
    -[ICCameraItem setLocked:](v12, "setLocked:", [v22 unsignedIntValue] == 1);

    v23 = [v8 objectForKeyedSubscript:@"ICAObjectInTemporaryStoreKey"];
    -[ICCameraItem setInTemporaryStore:](v12, "setInTemporaryStore:", [v23 isEqualToString:@"YES"]);

    v24 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    [(ICCameraItem *)v12 setUserData:v24];

    v25 = [v8 objectForKeyedSubscript:@"PTPObjH"];
    -[ICCameraItem setPtpObjectHandle:](v12, "setPtpObjectHandle:", [v25 unsignedIntValue]);

    [(ICCameraItem *)v12 setCreationDate:0];
    [(ICCameraItem *)v12 setModificationDate:0];
    v26 = v12;
  }

  return v12;
}

@end