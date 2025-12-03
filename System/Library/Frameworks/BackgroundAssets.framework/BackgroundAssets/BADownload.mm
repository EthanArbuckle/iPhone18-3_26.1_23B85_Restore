@interface BADownload
+ (id)classesForSerialization;
- (BADownload)copyAsNonEssential;
- (BADownload)init;
- (BADownload)initWithCoder:(id)coder;
- (BADownloadState)state;
- (BADownloaderPriority)priority;
- (BOOL)cloneDownloadToFinalDestinationURL:(id *)l error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEssential;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)initPrivatelyWithApplicationGroupIdentifier:(id)identifier;
- (id)stagedDownloadedFileURL;
- (int64_t)necessity;
- (uint64_t)clientSpecifiedFileSize;
- (uint64_t)internalState;
- (uint64_t)isForManagedAssetPack;
- (void)encodeWithCoder:(id)coder;
- (void)setClientSpecifiedFileSize:(void *)size;
- (void)setInternalState:(void *)state;
- (void)setIsForManagedAssetPack:(void *)pack;
- (void)setNecessity:(int64_t)necessity;
- (void)setPriority:(int64_t)priority;
- (void)setStagedDownloadedFileURL:(void *)l;
- (void)syncTo:(id)to;
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

- (void)syncTo:(id)to
{
  toCopy = to;
  priority = [toCopy priority];
  priority2 = 1000;
  if (priority <= 1000)
  {
    priority2 = [toCopy priority];
  }

  [(BADownload *)self setPriority:priority2];
  -[BADownload setNecessity:](self, "setNecessity:", [toCopy necessity]);
  stagedDownloadedFileURL = [(BADownload *)toCopy stagedDownloadedFileURL];
  [(BADownload *)self setStagedDownloadedFileURL:stagedDownloadedFileURL];

  internalState = [(BADownload *)toCopy internalState];
  [(BADownload *)self setInternalState:internalState];
}

- (BOOL)cloneDownloadToFinalDestinationURL:(id *)l error:(id *)error
{
  v49[2] = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  applicationGroupIdentifier = [(BADownload *)self applicationGroupIdentifier];
  v9 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:applicationGroupIdentifier];

  if (v9)
  {
    v10 = [v9 URLByAppendingPathComponent:@"Library/Caches/com.apple.BackgroundAssets"];

    v47 = 0;
    path = [v10 path];
    v12 = [defaultManager fileExistsAtPath:path isDirectory:&v47];

    if (v12)
    {
      if (v47)
      {
LABEL_6:
        errorCopy = error;
        lCopy = l;
        v46 = defaultManager;
        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];
        v15 = [uUIDString substringToIndex:8];

        v43 = v15;
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"BAFile-%@", v15];
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v16, @"tmp"];
        v42 = v17 = v10;
        v19 = [v10 URLByAppendingPathComponent:?];
        v20 = 0x7FFFFFFFFFFFFFFFLL;
        for (i = 1; ; ++i)
        {
          stagedDownloadedFileURL = [(BADownload *)self stagedDownloadedFileURL];
          v23 = clonefile([stagedDownloadedFileURL fileSystemRepresentation], objc_msgSend(v19, "fileSystemRepresentation"), 3u);
          v24 = v23 == 0;

          if (!v23)
          {
            break;
          }

          v25 = __error();
          v27 = v20-- != 0;
          if (!v27 || *v25 != 17)
          {
            v33 = lCopy;
            defaultManager = v46;
            if (errorCopy)
            {
              v48[0] = @"SourceURL";
              stagedDownloadedFileURL2 = [(BADownload *)self stagedDownloadedFileURL];
              v38 = stagedDownloadedFileURL2;
              if (!stagedDownloadedFileURL2)
              {
                stagedDownloadedFileURL2 = [MEMORY[0x277CBEB68] null];
              }

              v41 = stagedDownloadedFileURL2;
              v48[1] = @"DestURL";
              v49[0] = stagedDownloadedFileURL2;
              null = v19;
              if (!v19)
              {
                null = [MEMORY[0x277CBEB68] null];
              }

              v49[1] = null;
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

              *errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:v40];
            }

            v34 = v42;
            v32 = v43;
            if (!lCopy)
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

        if (lCopy)
        {
          v31 = v19;
          *lCopy = v19;
        }

        v32 = v43;
        v33 = errorCopy;
        defaultManager = v46;
        v34 = v42;
        if (!errorCopy)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      [defaultManager removeItemAtURL:v10 error:0];
    }

    [defaultManager createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:0];
    goto LABEL_6;
  }

  v30 = BAClientLogObject();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [BADownload(VeryPrivate) cloneDownloadToFinalDestinationURL:v30 error:?];
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
  }

  v24 = 0;
  if (l)
  {
    *l = 0;
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

- (BADownload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = BADownload;
  v5 = [(BADownload *)&v21 init];
  if (!v5)
  {
LABEL_15:
    v12 = v5;
    goto LABEL_16;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  uniqueIdentifier = v5->_uniqueIdentifier;
  v5->_uniqueIdentifier = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationGroupIdentifier"];
  applicationGroupIdentifier = v5->_applicationGroupIdentifier;
  v5->_applicationGroupIdentifier = v10;

  if (v5->_identifier && v5->_uniqueIdentifier && v5->_applicationGroupIdentifier)
  {
    -[BADownload setInternalState:](v5, [coderCopy decodeIntegerForKey:@"internalState"]);
    if ([coderCopy containsValueForKey:@"necessity"])
    {
      v13 = [coderCopy decodeIntegerForKey:@"necessity"];
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
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"priority"];
    integerValue = [v15 integerValue];
    if (integerValue >= 1000)
    {
      v17 = 1000;
    }

    else
    {
      v17 = integerValue;
    }

    [(BADownload *)v5 setPriority:v17];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagedDownloadedFileURL"];
    objc_setProperty_atomic(v5, v19, v18, 72);

    -[BADownload setClientSpecifiedFileSize:](v5, [coderCopy decodeIntegerForKey:@"clientSpecifiedFileSize"]);
    -[BADownload setIsForManagedAssetPack:](v5, [coderCopy decodeBoolForKey:@"isForManagedAssetPack"]);

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (void)setClientSpecifiedFileSize:(void *)size
{
  if (size)
  {
    necessity = [size necessity];
    if (a2 || necessity != 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [(BADownload *)size setClientSpecifiedFileSize:a2];
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

- (id)initPrivatelyWithApplicationGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
    identifierCopy = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Provided applicationGroupIdentifier must be a valid string." userInfo:0];
    [identifierCopy raise];
LABEL_9:

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  bundleRecordForCurrentProcess = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  if (!bundleRecordForCurrentProcess)
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"The current process is not contained in an app bundle.So the request app group is not available: %@", identifierCopy];
    v22 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:identifierCopy userInfo:0];
    [v22 raise];

    goto LABEL_9;
  }

  v8 = bundleRecordForCurrentProcess;
  groupContainerURLs = [bundleRecordForCurrentProcess groupContainerURLs];
  allKeys = [groupContainerURLs allKeys];
  v11 = [allKeys containsObject:identifierCopy];

  if ((v11 & 1) == 0)
  {
    identifierCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"The current app has no app groups it is a member of %@", identifierCopy];
    v25 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:identifierCopy2 userInfo:0];
    [v25 raise];

    goto LABEL_10;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v6->_clientSpecifiedFileSize = 0;
  v6->_priority = 0;
  v6->_internalState = 0;
  objc_storeStrong(&v6->_applicationGroupIdentifier, identifier);
  v6->_necessity = 0;
  v14 = MEMORY[0x277CCACA8];
  applicationGroupIdentifier = [(BADownload *)v6 applicationGroupIdentifier];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v18 = [v14 stringWithFormat:@"%@.%@.%@", v13, applicationGroupIdentifier, uUIDString];
  uniqueIdentifier = v6->_uniqueIdentifier;
  v6->_uniqueIdentifier = v18;

  v6->_isForManagedAssetPack = 0;
LABEL_6:
  v20 = v6;
LABEL_11:

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [coderCopy encodeObject:selfCopy->_identifier forKey:@"identifier"];
  [coderCopy encodeInteger:selfCopy->_internalState forKey:@"internalState"];
  [coderCopy encodeInteger:selfCopy->_necessity forKey:@"necessity"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:selfCopy->_priority];
  [coderCopy encodeObject:v5 forKey:@"priority"];

  [coderCopy encodeInteger:selfCopy->_clientSpecifiedFileSize forKey:@"clientSpecifiedFileSize"];
  [coderCopy encodeBool:selfCopy->_isForManagedAssetPack forKey:@"isForManagedAssetPack"];
  [coderCopy encodeObject:selfCopy->_uniqueIdentifier forKey:@"uniqueIdentifier"];
  [coderCopy encodeObject:selfCopy->_applicationGroupIdentifier forKey:@"applicationGroupIdentifier"];
  stagedDownloadedFileURL = selfCopy->_stagedDownloadedFileURL;
  if (stagedDownloadedFileURL)
  {
    [coderCopy encodeObject:stagedDownloadedFileURL forKey:@"stagedDownloadedFileURL"];
  }

  objc_sync_exit(selfCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  if (v6 == v7)
  {
    v5 = +[BAManifestDownload superclass];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [objc_msgSend(v5 allocWithZone:{zone), "initPrivatelyWithApplicationGroupIdentifier:", selfCopy->_applicationGroupIdentifier}];
  if (v9)
  {
    v11 = [(NSString *)selfCopy->_identifier copyWithZone:zone];
    [v9 setIdentifier:v11];

    v12 = [(NSString *)selfCopy->_uniqueIdentifier copyWithZone:zone];
    [v9 setUniqueIdentifier:v12];

    v13 = [(NSString *)selfCopy->_applicationGroupIdentifier copyWithZone:zone];
    [v9 setApplicationGroupIdentifier:v13];

    [(BADownload *)v9 setInternalState:?];
    [v9 setPriority:selfCopy->_priority];
    if (v6 == v7)
    {
      [v9 setNecessity:0];
      clientSpecifiedFileSize = 0;
    }

    else
    {
      [v9 setNecessity:selfCopy->_necessity];
      clientSpecifiedFileSize = selfCopy->_clientSpecifiedFileSize;
    }

    [(BADownload *)v9 setClientSpecifiedFileSize:?];
    v15 = [(NSURL *)selfCopy->_stagedDownloadedFileURL copyWithZone:zone];
    objc_setProperty_atomic(v9, v16, v15, 72);

    [(BADownload *)v9 setIsForManagedAssetPack:?];
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (BADownloaderPriority)priority
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  priority = selfCopy->_priority;
  objc_sync_exit(selfCopy);

  return priority;
}

- (void)setPriority:(int64_t)priority
{
  if (priority > 1000)
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v4)
    {
      [(BADownload *)v4 setPriority:v5, v6, v7, v8, v9, v10, v11];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Priority cannot be set to a value greater than BADownloaderPriorityMax.";
    __break(0xB001u);
  }

  else if (priority >= -1000)
  {
    obj = self;
    objc_sync_enter(obj);
    obj->_priority = priority;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_necessity == 1;
  objc_sync_exit(selfCopy);

  return v3;
}

- (int64_t)necessity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  necessity = selfCopy->_necessity;
  objc_sync_exit(selfCopy);

  return necessity;
}

- (void)setNecessity:(int64_t)necessity
{
  objc_opt_self();
  if (necessity >= 2)
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
    obj->_necessity = necessity;
    objc_sync_exit(obj);
  }
}

- (BADownloadState)state
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  internalState = [(BADownload *)selfCopy internalState];
  if (internalState > 8)
  {
    v4 = BADownloadStateFailed;
  }

  else
  {
    v4 = qword_236E844C8[internalState];
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (BADownload)copyAsNonEssential
{
  v2 = [(BADownload *)self copy];
  [(BADownload *)v2 setNecessity:0];
  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      selfCopy = self;
      objc_sync_enter(selfCopy);
      uniqueIdentifier = selfCopy->_uniqueIdentifier;
      uniqueIdentifier = [(BADownload *)v5 uniqueIdentifier];
      if ([(NSString *)uniqueIdentifier isEqual:uniqueIdentifier])
      {
        identifier = selfCopy->_identifier;
        identifier = [(BADownload *)v5 identifier];
        v11 = [(NSString *)identifier isEqualToString:identifier];
      }

      else
      {
        v11 = 0;
      }

      objc_sync_exit(selfCopy);
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
  identifier = [(BADownload *)self identifier];
  v7 = BADownloadNecessityToString([(BADownload *)self necessity]);
  v8 = [v3 stringWithFormat:@"%@ (%p): [ID:%@, Necessity:%@]", v5, self, identifier, v7];

  return v8;
}

- (void)setInternalState:(void *)state
{
  if (state)
  {
    obj = state;
    objc_sync_enter(obj);
    obj[3] = a2;
    objc_sync_exit(obj);
  }
}

- (void)setStagedDownloadedFileURL:(void *)l
{
  if (l)
  {
    objc_setProperty_atomic(l, newValue, newValue, 72);
  }
}

- (void)setIsForManagedAssetPack:(void *)pack
{
  if (pack)
  {
    obj = pack;
    objc_sync_enter(obj);
    obj[8] = a2;
    objc_sync_exit(obj);
  }
}

- (uint64_t)clientSpecifiedFileSize
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = selfCopy[5];
  objc_sync_exit(selfCopy);

  return v2;
}

- (uint64_t)internalState
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = selfCopy[3];
  objc_sync_exit(selfCopy);

  return v2;
}

- (uint64_t)isForManagedAssetPack
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v2 = selfCopy[8];
    objc_sync_exit(selfCopy);
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
  identifier = [(BADownload *)self identifier];
  v7 = [v3 initWithFormat:@"%@ (%p): %@\n", v5, self, identifier];

  internalState = [(BADownload *)self internalState];
  if ((internalState + 2) > 0xA)
  {
    v9 = @"???";
  }

  else
  {
    v9 = off_278A0D1D8[internalState + 2];
  }

  [v7 appendFormat:@"State: %@\n", v9];
  [v7 appendFormat:@"Priority: %lu\n", -[BADownload priority](self, "priority")];
  v10 = BADownloadNecessityToString([(BADownload *)self necessity]);
  [v7 appendFormat:@"Download Necessity: %@\n", v10];

  uniqueIdentifier = [(BADownload *)self uniqueIdentifier];
  [v7 appendFormat:@"Unique identifier: %@\n", uniqueIdentifier];

  applicationGroupIdentifier = [(BADownload *)self applicationGroupIdentifier];
  [v7 appendFormat:@"App Group identifier: %@\n", applicationGroupIdentifier];

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