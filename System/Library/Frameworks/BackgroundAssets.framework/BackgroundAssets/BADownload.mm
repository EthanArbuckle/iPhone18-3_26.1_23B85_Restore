@interface BADownload
+ (id)classesForSerialization;
- (BADownload)copyAsNonEssential;
- (BADownload)init;
- (BADownload)initWithCoder:(id)a3;
- (BADownloadState)state;
- (BADownloaderPriority)priority;
- (BOOL)cloneDownloadToFinalDestinationURL:(id *)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEssential;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)initPrivatelyWithApplicationGroupIdentifier:(id)a3;
- (id)stagedDownloadedFileURL;
- (int64_t)necessity;
- (uint64_t)clientSpecifiedFileSize;
- (uint64_t)internalState;
- (uint64_t)isForManagedAssetPack;
- (void)encodeWithCoder:(id)a3;
- (void)setClientSpecifiedFileSize:(void *)a1;
- (void)setInternalState:(void *)a1;
- (void)setIsForManagedAssetPack:(void *)a1;
- (void)setNecessity:(int64_t)a3;
- (void)setPriority:(int64_t)a3;
- (void)setStagedDownloadedFileURL:(void *)a1;
- (void)syncTo:(id)a3;
@end

@implementation BADownload

+ (id)classesForSerialization
{
  if (classesForSerialization_onceToken != -1)
  {
    +[BADownload(VeryPrivate) classesForSerialization];
  }

  v3 = classesForSerialization_collections;

  return v3;
}

void __50__BADownload_VeryPrivate__classesForSerialization__block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = +[NSSet _baassets_collectionClasses];
  v1 = classesForSerialization_collections;
  classesForSerialization_collections = v0;

  v2 = classesForSerialization_collections;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:7];
  v4 = [v2 setByAddingObjectsFromArray:{v3, v7, v8, v9, v10, v11, v12}];
  v5 = classesForSerialization_collections;
  classesForSerialization_collections = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncTo:(id)a3
{
  v9 = a3;
  v4 = [v9 priority];
  v5 = 1000;
  if (v4 <= 1000)
  {
    v5 = [v9 priority];
  }

  [(BADownload *)self setPriority:v5];
  -[BADownload setNecessity:](self, "setNecessity:", [v9 necessity]);
  v7 = [(BADownload *)v9 stagedDownloadedFileURL];
  [(BADownload *)self setStagedDownloadedFileURL:v7];

  v8 = [(BADownload *)v9 internalState];
  [(BADownload *)self setInternalState:v8];
}

- (BOOL)cloneDownloadToFinalDestinationURL:(id *)a3 error:(id *)a4
{
  v49[2] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [(BADownload *)self applicationGroupIdentifier];
  v9 = [v7 containerURLForSecurityApplicationGroupIdentifier:v8];

  if (v9)
  {
    v10 = [v9 URLByAppendingPathComponent:@"Library/Caches/com.apple.BackgroundAssets"];

    v47 = 0;
    v11 = [v10 path];
    v12 = [v7 fileExistsAtPath:v11 isDirectory:&v47];

    if (v12)
    {
      if (v47)
      {
LABEL_6:
        v44 = a4;
        v45 = a3;
        v46 = v7;
        v13 = [MEMORY[0x277CCAD78] UUID];
        v14 = [v13 UUIDString];
        v15 = [v14 substringToIndex:8];

        v43 = v15;
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"BAFile-%@", v15];
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v16, @"tmp"];
        v42 = v17 = v10;
        v19 = [v10 URLByAppendingPathComponent:?];
        v20 = 0x7FFFFFFFFFFFFFFFLL;
        for (i = 1; ; ++i)
        {
          v22 = [(BADownload *)self stagedDownloadedFileURL];
          v23 = clonefile([v22 fileSystemRepresentation], objc_msgSend(v19, "fileSystemRepresentation"), 3u);
          v24 = v23 == 0;

          if (!v23)
          {
            break;
          }

          v25 = __error();
          v27 = v20-- != 0;
          if (!v27 || *v25 != 17)
          {
            v33 = v45;
            v7 = v46;
            if (v44)
            {
              v48[0] = @"SourceURL";
              v37 = [(BADownload *)self stagedDownloadedFileURL];
              v38 = v37;
              if (!v37)
              {
                v37 = [MEMORY[0x277CBEB68] null];
              }

              v41 = v37;
              v48[1] = @"DestURL";
              v49[0] = v37;
              v39 = v19;
              if (!v19)
              {
                v39 = [MEMORY[0x277CBEB68] null];
              }

              v49[1] = v39;
              v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
              if (v19)
              {
                if (v38)
                {
                  goto LABEL_31;
                }

LABEL_35:
              }

              else
              {

                if (!v38)
                {
                  goto LABEL_35;
                }
              }

LABEL_31:

              *v44 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:v40];
            }

            v34 = v42;
            v32 = v43;
            if (!v45)
            {
LABEL_22:

              goto LABEL_23;
            }

LABEL_21:
            *v33 = 0;
            goto LABEL_22;
          }

          v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%ld.%@", v16, i, @"tmp"];
          v29 = [v17 URLByAppendingPathComponent:v28];

          v19 = v29;
        }

        if (v45)
        {
          v31 = v19;
          *v45 = v19;
        }

        v32 = v43;
        v33 = v44;
        v7 = v46;
        v34 = v42;
        if (!v44)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      [v7 removeItemAtURL:v10 error:0];
    }

    [v7 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:0];
    goto LABEL_6;
  }

  v30 = BAClientLogObject();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [BADownload(VeryPrivate) cloneDownloadToFinalDestinationURL:v30 error:?];
  }

  if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
  }

  v24 = 0;
  if (a3)
  {
    *a3 = 0;
  }

LABEL_23:

  v35 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BADownload)init
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
  if (result)
  {
    v3 = 136315138;
    v4 = "BADownload cannot be constructed using -init.";
    _os_log_fault_impl(&dword_236E28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF BackgroundAssets: %s", &v3, 0xCu);
  }

  qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: BADownload cannot be constructed using -init.";
  __break(0xB001u);
  return result;
}

- (BADownload)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = BADownload;
  v5 = [(BADownload *)&v21 init];
  if (!v5)
  {
LABEL_15:
    v12 = v5;
    goto LABEL_16;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  uniqueIdentifier = v5->_uniqueIdentifier;
  v5->_uniqueIdentifier = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationGroupIdentifier"];
  applicationGroupIdentifier = v5->_applicationGroupIdentifier;
  v5->_applicationGroupIdentifier = v10;

  if (v5->_identifier && v5->_uniqueIdentifier && v5->_applicationGroupIdentifier)
  {
    -[BADownload setInternalState:](v5, [v4 decodeIntegerForKey:@"internalState"]);
    if ([v4 containsValueForKey:@"necessity"])
    {
      v13 = [v4 decodeIntegerForKey:@"necessity"];
      objc_opt_self();
      if (v13 >= 2)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13;
      }
    }

    else
    {
      v14 = 0;
    }

    [(BADownload *)v5 setNecessity:v14];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"priority"];
    v16 = [v15 integerValue];
    if (v16 >= 1000)
    {
      v17 = 1000;
    }

    else
    {
      v17 = v16;
    }

    [(BADownload *)v5 setPriority:v17];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagedDownloadedFileURL"];
    objc_setProperty_atomic(v5, v19, v18, 72);

    -[BADownload setClientSpecifiedFileSize:](v5, [v4 decodeIntegerForKey:@"clientSpecifiedFileSize"]);
    -[BADownload setIsForManagedAssetPack:](v5, [v4 decodeBoolForKey:@"isForManagedAssetPack"]);

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (void)setClientSpecifiedFileSize:(void *)a1
{
  if (a1)
  {
    v4 = [a1 necessity];
    if (a2 || v4 != 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [(BADownload *)a1 setClientSpecifiedFileSize:a2];
    }

    else
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(BADownload *)v5 setClientSpecifiedFileSize:v6, v7, v8, v9, v10, v11, v12];
      }

      qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: The provided fileSize for BADownload must be a positive number that matches the actual file size on the server.";
      __break(0xB001u);
    }
  }
}

- (id)initPrivatelyWithApplicationGroupIdentifier:(id)a3
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = BADownload;
  v6 = [(BADownload *)&v26 init];
  if (!v6)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Provided applicationGroupIdentifier must be a valid string." userInfo:0];
    [v21 raise];
LABEL_9:

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v7 = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  if (!v7)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"The current process is not contained in an app bundle.So the request app group is not available: %@", v5];
    v22 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v21 userInfo:0];
    [v22 raise];

    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 groupContainerURLs];
  v10 = [v9 allKeys];
  v11 = [v10 containsObject:v5];

  if ((v11 & 1) == 0)
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"The current app has no app groups it is a member of %@", v5];
    v25 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v24 userInfo:0];
    [v25 raise];

    goto LABEL_10;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v6->_clientSpecifiedFileSize = 0;
  v6->_priority = 0;
  v6->_internalState = 0;
  objc_storeStrong(&v6->_applicationGroupIdentifier, a3);
  v6->_necessity = 0;
  v14 = MEMORY[0x277CCACA8];
  v15 = [(BADownload *)v6 applicationGroupIdentifier];
  v16 = [MEMORY[0x277CCAD78] UUID];
  v17 = [v16 UUIDString];
  v18 = [v14 stringWithFormat:@"%@.%@.%@", v13, v15, v17];
  uniqueIdentifier = v6->_uniqueIdentifier;
  v6->_uniqueIdentifier = v18;

  v6->_isForManagedAssetPack = 0;
LABEL_6:
  v20 = v6;
LABEL_11:

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [v7 encodeObject:v4->_identifier forKey:@"identifier"];
  [v7 encodeInteger:v4->_internalState forKey:@"internalState"];
  [v7 encodeInteger:v4->_necessity forKey:@"necessity"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:v4->_priority];
  [v7 encodeObject:v5 forKey:@"priority"];

  [v7 encodeInteger:v4->_clientSpecifiedFileSize forKey:@"clientSpecifiedFileSize"];
  [v7 encodeBool:v4->_isForManagedAssetPack forKey:@"isForManagedAssetPack"];
  [v7 encodeObject:v4->_uniqueIdentifier forKey:@"uniqueIdentifier"];
  [v7 encodeObject:v4->_applicationGroupIdentifier forKey:@"applicationGroupIdentifier"];
  stagedDownloadedFileURL = v4->_stagedDownloadedFileURL;
  if (stagedDownloadedFileURL)
  {
    [v7 encodeObject:stagedDownloadedFileURL forKey:@"stagedDownloadedFileURL"];
  }

  objc_sync_exit(v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  if (v6 == v7)
  {
    v5 = +[BAManifestDownload superclass];
  }

  v8 = self;
  objc_sync_enter(v8);
  v9 = [objc_msgSend(v5 allocWithZone:{a3), "initPrivatelyWithApplicationGroupIdentifier:", v8->_applicationGroupIdentifier}];
  if (v9)
  {
    v11 = [(NSString *)v8->_identifier copyWithZone:a3];
    [v9 setIdentifier:v11];

    v12 = [(NSString *)v8->_uniqueIdentifier copyWithZone:a3];
    [v9 setUniqueIdentifier:v12];

    v13 = [(NSString *)v8->_applicationGroupIdentifier copyWithZone:a3];
    [v9 setApplicationGroupIdentifier:v13];

    [(BADownload *)v9 setInternalState:?];
    [v9 setPriority:v8->_priority];
    if (v6 == v7)
    {
      [v9 setNecessity:0];
      clientSpecifiedFileSize = 0;
    }

    else
    {
      [v9 setNecessity:v8->_necessity];
      clientSpecifiedFileSize = v8->_clientSpecifiedFileSize;
    }

    [(BADownload *)v9 setClientSpecifiedFileSize:?];
    v15 = [(NSURL *)v8->_stagedDownloadedFileURL copyWithZone:a3];
    objc_setProperty_atomic(v9, v16, v15, 72);

    [(BADownload *)v9 setIsForManagedAssetPack:?];
  }

  objc_sync_exit(v8);

  return v9;
}

- (BADownloaderPriority)priority
{
  v2 = self;
  objc_sync_enter(v2);
  priority = v2->_priority;
  objc_sync_exit(v2);

  return priority;
}

- (void)setPriority:(int64_t)a3
{
  if (a3 > 1000)
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v4)
    {
      [(BADownload *)v4 setPriority:v5, v6, v7, v8, v9, v10, v11];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Priority cannot be set to a value greater than BADownloaderPriorityMax.";
    __break(0xB001u);
  }

  else if (a3 >= -1000)
  {
    obj = self;
    objc_sync_enter(obj);
    obj->_priority = a3;
    objc_sync_exit(obj);

    return;
  }

  v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
  if (v12)
  {
    [(BADownload *)v12 setPriority:v13, v14, v15, v16, v17, v18, v19];
  }

  qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Priority cannot be set to a value less than BADownloaderPriorityMin.";
  __break(0xB001u);
}

- (BOOL)isEssential
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_necessity == 1;
  objc_sync_exit(v2);

  return v3;
}

- (int64_t)necessity
{
  v2 = self;
  objc_sync_enter(v2);
  necessity = v2->_necessity;
  objc_sync_exit(v2);

  return necessity;
}

- (void)setNecessity:(int64_t)a3
{
  objc_opt_self();
  if (a3 >= 2)
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v5)
    {
      [(BADownload *)v5 setNecessity:v6, v7, v8, v9, v10, v11, v12];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Cannot provide an unsupported BADownloadNecessity.";
    __break(0xB001u);
  }

  else
  {
    obj = self;
    objc_sync_enter(obj);
    obj->_necessity = a3;
    objc_sync_exit(obj);
  }
}

- (BADownloadState)state
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(BADownload *)v2 internalState];
  if (v3 > 8)
  {
    v4 = BADownloadStateFailed;
  }

  else
  {
    v4 = qword_236E844C8[v3];
  }

  objc_sync_exit(v2);

  return v4;
}

- (BADownload)copyAsNonEssential
{
  v2 = [(BADownload *)self copy];
  [(BADownload *)v2 setNecessity:0];
  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self;
      objc_sync_enter(v6);
      uniqueIdentifier = v6->_uniqueIdentifier;
      v8 = [(BADownload *)v5 uniqueIdentifier];
      if ([(NSString *)uniqueIdentifier isEqual:v8])
      {
        identifier = v6->_identifier;
        v10 = [(BADownload *)v5 identifier];
        v11 = [(NSString *)identifier isEqualToString:v10];
      }

      else
      {
        v11 = 0;
      }

      objc_sync_exit(v6);
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(BADownload *)self identifier];
  v7 = BADownloadNecessityToString([(BADownload *)self necessity]);
  v8 = [v3 stringWithFormat:@"%@ (%p): [ID:%@, Necessity:%@]", v5, self, v6, v7];

  return v8;
}

- (void)setInternalState:(void *)a1
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    obj[3] = a2;
    objc_sync_exit(obj);
  }
}

- (void)setStagedDownloadedFileURL:(void *)a1
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 72);
  }
}

- (void)setIsForManagedAssetPack:(void *)a1
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    obj[8] = a2;
    objc_sync_exit(obj);
  }
}

- (uint64_t)clientSpecifiedFileSize
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = v1[5];
  objc_sync_exit(v1);

  return v2;
}

- (uint64_t)internalState
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = v1[3];
  objc_sync_exit(v1);

  return v2;
}

- (uint64_t)isForManagedAssetPack
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = v1[8];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(BADownload *)self identifier];
  v7 = [v3 initWithFormat:@"%@ (%p): %@\n", v5, self, v6];

  v8 = [(BADownload *)self internalState];
  if ((v8 + 2) > 0xA)
  {
    v9 = @"???";
  }

  else
  {
    v9 = off_278A0D1D8[v8 + 2];
  }

  [v7 appendFormat:@"State: %@\n", v9];
  [v7 appendFormat:@"Priority: %lu\n", -[BADownload priority](self, "priority")];
  v10 = BADownloadNecessityToString([(BADownload *)self necessity]);
  [v7 appendFormat:@"Download Necessity: %@\n", v10];

  v11 = [(BADownload *)self uniqueIdentifier];
  [v7 appendFormat:@"Unique identifier: %@\n", v11];

  v12 = [(BADownload *)self applicationGroupIdentifier];
  [v7 appendFormat:@"App Group identifier: %@\n", v12];

  if (self)
  {
    Property = objc_getProperty(self, v13, 72, 1);
  }

  else
  {
    Property = 0;
  }

  [v7 appendFormat:@"Staged file url: %@\n", Property];
  [v7 appendFormat:@"Client file size: %ld\n", -[BADownload clientSpecifiedFileSize](self)];

  return v7;
}

- (id)stagedDownloadedFileURL
{
  if (result)
  {
    return objc_getProperty(result, a2, 72, 1);
  }

  return result;
}

- (void)setClientSpecifiedFileSize:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setClientSpecifiedFileSize:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  obj = a1;
  objc_sync_enter(obj);
  obj[5] = a2;
  objc_sync_exit(obj);
}

- (void)setPriority:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setPriority:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setNecessity:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end