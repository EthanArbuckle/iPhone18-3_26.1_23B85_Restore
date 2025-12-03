@interface PHCameraSmartSharingMetadata
+ (BOOL)storeMetadata:(id)metadata forPhotoLibrary:(id)library error:(id *)error;
+ (id)_metadataFileURLForPhotoLibrary:(id)library;
+ (id)_readMetadataFromFileURL:(id)l;
+ (id)retrieveMetadataForPhotoLibrary:(id)library;
- (BOOL)hasActiveLibraryScope;
- (PHCameraSmartSharingMetadata)init;
- (PHCameraSmartSharingMetadata)initWithCoder:(id)coder;
- (PHCameraSmartSharingMetadata)initWithLibraryScopeIdentifier:(id)identifier filterContactIDs:(id)ds homeLocations:(id)locations isOnTrip:(BOOL)trip;
- (PHCameraSmartSharingMetadata)initWithLibraryScopeIdentifier:(id)identifier identities:(id)identities homeLocations:(id)locations frequentLocations:(id)frequentLocations locationShiftingRequired:(BOOL)required;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHCameraSmartSharingMetadata

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:+[PHCameraSmartSharingMetadata version](PHCameraSmartSharingMetadata forKey:{"version"), @"version"}];
  libraryScopeLocalIdentifier = [(PHCameraSmartSharingMetadata *)self libraryScopeLocalIdentifier];
  [coderCopy encodeObject:libraryScopeLocalIdentifier forKey:@"libraryScopeLocalIdentifier"];

  identities = [(PHCameraSmartSharingMetadata *)self identities];
  [coderCopy encodeObject:identities forKey:@"identities"];

  creationDate = [(PHCameraSmartSharingMetadata *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"creationDate"];

  homeLocations = [(PHCameraSmartSharingMetadata *)self homeLocations];
  [coderCopy encodeObject:homeLocations forKey:@"homeLocations"];

  frequentLocations = [(PHCameraSmartSharingMetadata *)self frequentLocations];
  [coderCopy encodeObject:frequentLocations forKey:@"frequentLocations"];

  [coderCopy encodeBool:-[PHCameraSmartSharingMetadata locationShiftingRequired](self forKey:{"locationShiftingRequired"), @"locationShiftingRequired"}];
}

- (PHCameraSmartSharingMetadata)initWithCoder:(id)coder
{
  v43 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"version"];
  if (v5 != +[PHCameraSmartSharingMetadata version])
  {
    v30 = PLPhotoKitGetLog();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

      selfCopy = 0;
      goto LABEL_18;
    }

    *buf = 134218240;
    v40 = v5;
    v41 = 2048;
    v42 = +[PHCameraSmartSharingMetadata version];
    v31 = "[PHCameraSmartSharingMetadata] decode warning: version mismatch %ld != %ld";
    v32 = v30;
    v33 = 22;
LABEL_16:
    _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
    goto LABEL_17;
  }

  v35.receiver = self;
  v35.super_class = PHCameraSmartSharingMetadata;
  self = [(PHCameraSmartSharingMetadata *)&v35 init];
  if (self)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryScopeLocalIdentifier"];
    libraryScopeLocalIdentifier = self->_libraryScopeLocalIdentifier;
    self->_libraryScopeLocalIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = self->_creationDate;
    self->_creationDate = v8;

    v10 = MEMORY[0x1E695DFD8];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"identities"];
    v14 = v13;
    v15 = MEMORY[0x1E695E0F0];
    v16 = (v13 ? v13 : MEMORY[0x1E695E0F0]);
    objc_storeStrong(&self->_identities, v16);

    v17 = MEMORY[0x1E695DFD8];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    v19 = [v17 setWithArray:v18];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"homeLocations"];
    v21 = v20;
    v22 = (v20 ? v20 : v15);
    objc_storeStrong(&self->_homeLocations, v22);

    v23 = MEMORY[0x1E695DFD8];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    v25 = [v23 setWithArray:v24];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"frequentLocations"];
    v27 = v26;
    v28 = (v26 ? v26 : v15);
    objc_storeStrong(&self->_frequentLocations, v28);

    self->_locationShiftingRequired = [coderCopy decodeBoolForKey:@"locationShiftingRequired"];
    if (!self->_creationDate)
    {
      v30 = PLPhotoKitGetLog();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v31 = "[PHCameraSmartSharingMetadata] decode fail, nil field";
      v32 = v30;
      v33 = 2;
      goto LABEL_16;
    }
  }

  self = self;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (BOOL)hasActiveLibraryScope
{
  libraryScopeLocalIdentifier = [(PHCameraSmartSharingMetadata *)self libraryScopeLocalIdentifier];
  v3 = libraryScopeLocalIdentifier != 0;

  return v3;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  libraryScopeLocalIdentifier = [(PHCameraSmartSharingMetadata *)self libraryScopeLocalIdentifier];
  creationDate = [(PHCameraSmartSharingMetadata *)self creationDate];
  identities = [(PHCameraSmartSharingMetadata *)self identities];
  v8 = [identities componentsJoinedByString:{@", "}];
  homeLocations = [(PHCameraSmartSharingMetadata *)self homeLocations];
  v10 = [homeLocations componentsJoinedByString:{@", "}];
  frequentLocations = [(PHCameraSmartSharingMetadata *)self frequentLocations];
  v12 = [frequentLocations componentsJoinedByString:{@", "}];
  v13 = [v15 stringWithFormat:@"<%@:%p libraryScope:%@ creationDate:%@ identities:[%@] homeLocations:[%@] frequentLocations:[%@] locationShiftingRequired:%d>", v4, self, libraryScopeLocalIdentifier, creationDate, v8, v10, v12, -[PHCameraSmartSharingMetadata locationShiftingRequired](self, "locationShiftingRequired")];;

  return v13;
}

- (PHCameraSmartSharingMetadata)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHCameraSmartSharingMetadata.m" lineNumber:147 description:@"Unavailable initializer"];

  return 0;
}

- (PHCameraSmartSharingMetadata)initWithLibraryScopeIdentifier:(id)identifier filterContactIDs:(id)ds homeLocations:(id)locations isOnTrip:(BOOL)trip
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dsCopy = ds;
  locationsCopy = locations;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = dsCopy;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * v15);
        v17 = [PHCameraSmartSharingIdentity alloc];
        v28 = v16;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
        v19 = [(PHCameraSmartSharingIdentity *)v17 initWithPhoneNumber:0 emailAddress:0 contactIdentifiers:v18];
        [v10 addObject:v19];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v13);
  }

  v20 = [(PHCameraSmartSharingMetadata *)self initWithLibraryScopeIdentifier:identifierCopy identities:v10 homeLocations:locationsCopy frequentLocations:0 locationShiftingRequired:0];
  return v20;
}

- (PHCameraSmartSharingMetadata)initWithLibraryScopeIdentifier:(id)identifier identities:(id)identities homeLocations:(id)locations frequentLocations:(id)frequentLocations locationShiftingRequired:(BOOL)required
{
  v65 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  identitiesCopy = identities;
  locationsCopy = locations;
  frequentLocationsCopy = frequentLocations;
  v62.receiver = self;
  v62.super_class = PHCameraSmartSharingMetadata;
  v16 = [(PHCameraSmartSharingMetadata *)&v62 init];
  if (v16)
  {
    date = [MEMORY[0x1E695DF00] date];
    creationDate = v16->_creationDate;
    v16->_creationDate = date;

    v53 = identifierCopy;
    v19 = [identifierCopy copy];
    libraryScopeLocalIdentifier = v16->_libraryScopeLocalIdentifier;
    v16->_libraryScopeLocalIdentifier = v19;

    v21 = [identitiesCopy copy];
    v22 = v21;
    v23 = MEMORY[0x1E695E0F0];
    if (v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v16->_identities, v24);

    v51 = locationsCopy;
    v25 = [locationsCopy copy];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v23;
    }

    objc_storeStrong(&v16->_homeLocations, v27);

    v49 = frequentLocationsCopy;
    v28 = [frequentLocationsCopy copy];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = v23;
    }

    objc_storeStrong(&v16->_frequentLocations, v30);

    v50 = v16;
    v16->_locationShiftingRequired = required;
    v31 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v52 = identitiesCopy;
    v32 = identitiesCopy;
    v33 = [v32 countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v59;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v59 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v58 + 1) + 8 * i);
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          contactIdentifiers = [v37 contactIdentifiers];
          v39 = [contactIdentifiers countByEnumeratingWithState:&v54 objects:v63 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v55;
            do
            {
              for (j = 0; j != v40; ++j)
              {
                if (*v55 != v41)
                {
                  objc_enumerationMutation(contactIdentifiers);
                }

                v43 = *(*(&v54 + 1) + 8 * j);
                if ([v43 length])
                {
                  [v31 addObject:v43];
                }
              }

              v40 = [contactIdentifiers countByEnumeratingWithState:&v54 objects:v63 count:16];
            }

            while (v40);
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v34);
    }

    allObjects = [v31 allObjects];
    v45 = [allObjects copy];
    v46 = v45;
    if (v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = MEMORY[0x1E695E0F0];
    }

    v16 = v50;
    objc_storeStrong(&v50->_filterContactIDs, v47);

    identitiesCopy = v52;
    identifierCopy = v53;
    locationsCopy = v51;
    frequentLocationsCopy = v49;
  }

  return v16;
}

+ (BOOL)storeMetadata:(id)metadata forPhotoLibrary:(id)library error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  libraryCopy = library;
  v10 = *MEMORY[0x1E69C0090];
  [*MEMORY[0x1E69C0090] UTF8String];
  v11 = xpc_copy_entitlement_for_self();
  if (v11 == MEMORY[0x1E69E9E10])
  {
    v24 = 0;
    v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:metadataCopy requiringSecureCoding:1 error:&v24];
    v15 = v24;
    if (v14)
    {
      v16 = [self _metadataFileURLForPhotoLibrary:libraryCopy];
      v23 = v15;
      v13 = [v14 writeToURL:v16 options:1073741825 error:&v23];
      v17 = v23;

      if ((v13 & 1) == 0)
      {
        v18 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = v17;
          _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "[PHCameraSmartSharingMetadata] error writing file: %@", buf, 0xCu);
        }

        if (error)
        {
          v19 = v17;
          *error = v17;
        }
      }
    }

    else
    {
      v20 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v15;
        _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "[PHCameraSmartSharingMetadata] archive error: %@", buf, 0xCu);
      }

      if (error)
      {
        v21 = v15;
        v13 = 0;
        *error = v15;
      }

      else
      {
        v13 = 0;
      }

      v17 = v15;
    }
  }

  else
  {
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v10;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "[PHCameraSmartSharingMetadata] missing entitlement %@", buf, 0xCu);
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{@"Missing entitlement %@", v10}];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

+ (id)_readMetadataFromFileURL:(id)l
{
  v21 = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    v16 = 0;
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:lCopy options:0 error:&v16];
    v8 = v16;
    if (v7)
    {
      v15 = v8;
      v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v15];
      v10 = v15;

      if (v9)
      {
        v11 = v9;
        v12 = v11;
      }

      else
      {
        v13 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v10;
          _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "[PHCameraSmartSharingMetadata] retrieveMetadataForLibraryScope error unarchiving file: %@", buf, 0xCu);
        }

        v11 = 0;
        v12 = 0;
      }
    }

    else
    {
      v11 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v8;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "[PHCameraSmartSharingMetadata] retrieveMetadataForLibraryScope error reading file: %@", buf, 0xCu);
      }

      v12 = 0;
      v10 = v8;
    }
  }

  else
  {
    v10 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v18 = lCopy;
      v19 = 2112;
      v20 = 0;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_INFO, "[PHCameraSmartSharingMetadata] missing file %@ error:%@", buf, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

+ (id)retrieveMetadataForPhotoLibrary:(id)library
{
  v39 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if (!libraryCopy)
  {
    systemLibraryPathManager = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
    v6 = MEMORY[0x1E695DFF8];
    v7 = [systemLibraryPathManager photoDirectoryWithType:21 createIfNeeded:0 error:0];
    v8 = [v6 fileURLWithPath:v7];

    v9 = [v8 URLByAppendingPathComponent:@"camera_smart_sharing_metadata.plist"];
    if (v9)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [v9 path];
      v12 = [defaultManager fileExistsAtPath:path];

      if (v12)
      {

        libraryCopy = 0;
        goto LABEL_15;
      }
    }

    v13 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v9;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "[PHCameraSmartSharingMetadata] unable to directly access %@, opening the default photo library, which is slower.", buf, 0xCu);
    }

    libraryCopy = +[PHPhotoLibrary sharedPhotoLibrary];
  }

  v14 = *MEMORY[0x1E69C0088];
  [*MEMORY[0x1E69C0088] UTF8String];
  v9 = xpc_copy_entitlement_for_self();
  [*MEMORY[0x1E69C0090] UTF8String];
  v15 = xpc_copy_entitlement_for_self();
  v16 = v15;
  if (v9 != MEMORY[0x1E69E9E10] && v15 != MEMORY[0x1E69E9E10])
  {
    v22 = PLPhotoKitGetLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v36 = v14;
    v24 = "[PHCameraSmartSharingMetadata] missing entitlement %@";
LABEL_19:
    v25 = v22;
    v26 = 12;
LABEL_20:
    _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
    goto LABEL_24;
  }

  v34 = 0;
  v18 = [libraryCopy requestSandboxExtensionsIfNeededWithError:&v34];
  v22 = v34;
  if ((v18 & 1) == 0)
  {
    v27 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v36 = v22;
      v37 = 2112;
      v38 = libraryCopy;
      _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_ERROR, "[PHCameraSmartSharingMetadata] failed to request sandbox extensions:%@ for library:%@", buf, 0x16u);
    }

    goto LABEL_24;
  }

  v19 = [self _metadataFileURLForPhotoLibrary:libraryCopy];

  v9 = v19;
LABEL_15:
  v20 = [self _readMetadataFromFileURL:v9];
  if (v20)
  {
    v21 = v20;
    goto LABEL_26;
  }

  v29 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_DEFAULT, "[PHCameraSmartSharingMetadata] unable to retrieve metadata, requesting updated cache and trying again.", buf, 2u);
  }

  if (!libraryCopy)
  {
    libraryCopy = +[PHPhotoLibrary sharedPhotoLibrary];
  }

  photoAnalysisClient = [libraryCopy photoAnalysisClient];
  v33 = 0;
  v31 = [photoAnalysisClient requestCameraSmartSharingProcessingForLibraryScopeWithUUID:0 withOptions:0 error:&v33];
  v16 = v33;

  if (!v31)
  {
    v22 = PLPhotoKitGetLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v36 = v16;
    v24 = "[PHCameraSmartSharingMetadata] error requesting updated metadata:%@";
    goto LABEL_19;
  }

  v32 = [self _readMetadataFromFileURL:v9];
  if (v32)
  {
    v21 = v32;
    goto LABEL_25;
  }

  v22 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v24 = "[PHCameraSmartSharingMetadata] failed to retrieve metadata on second try, giving up.";
    v25 = v22;
    v26 = 2;
    goto LABEL_20;
  }

LABEL_24:

  v21 = 0;
LABEL_25:

LABEL_26:

  return v21;
}

+ (id)_metadataFileURLForPhotoLibrary:(id)library
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [library urlForApplicationDataFolderIdentifier:10 error:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = [v3 URLByAppendingPathComponent:@"camera_smart_sharing_metadata.plist"];
  }

  else
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "[PHCameraSmartSharingMetadata] failed to access the metadata file URL. Error: %@", buf, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

@end