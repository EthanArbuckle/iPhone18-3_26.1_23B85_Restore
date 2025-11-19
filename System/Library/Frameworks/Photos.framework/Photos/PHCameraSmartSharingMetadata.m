@interface PHCameraSmartSharingMetadata
+ (BOOL)storeMetadata:(id)a3 forPhotoLibrary:(id)a4 error:(id *)a5;
+ (id)_metadataFileURLForPhotoLibrary:(id)a3;
+ (id)_readMetadataFromFileURL:(id)a3;
+ (id)retrieveMetadataForPhotoLibrary:(id)a3;
- (BOOL)hasActiveLibraryScope;
- (PHCameraSmartSharingMetadata)init;
- (PHCameraSmartSharingMetadata)initWithCoder:(id)a3;
- (PHCameraSmartSharingMetadata)initWithLibraryScopeIdentifier:(id)a3 filterContactIDs:(id)a4 homeLocations:(id)a5 isOnTrip:(BOOL)a6;
- (PHCameraSmartSharingMetadata)initWithLibraryScopeIdentifier:(id)a3 identities:(id)a4 homeLocations:(id)a5 frequentLocations:(id)a6 locationShiftingRequired:(BOOL)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHCameraSmartSharingMetadata

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  [v9 encodeInteger:+[PHCameraSmartSharingMetadata version](PHCameraSmartSharingMetadata forKey:{"version"), @"version"}];
  v4 = [(PHCameraSmartSharingMetadata *)self libraryScopeLocalIdentifier];
  [v9 encodeObject:v4 forKey:@"libraryScopeLocalIdentifier"];

  v5 = [(PHCameraSmartSharingMetadata *)self identities];
  [v9 encodeObject:v5 forKey:@"identities"];

  v6 = [(PHCameraSmartSharingMetadata *)self creationDate];
  [v9 encodeObject:v6 forKey:@"creationDate"];

  v7 = [(PHCameraSmartSharingMetadata *)self homeLocations];
  [v9 encodeObject:v7 forKey:@"homeLocations"];

  v8 = [(PHCameraSmartSharingMetadata *)self frequentLocations];
  [v9 encodeObject:v8 forKey:@"frequentLocations"];

  [v9 encodeBool:-[PHCameraSmartSharingMetadata locationShiftingRequired](self forKey:{"locationShiftingRequired"), @"locationShiftingRequired"}];
}

- (PHCameraSmartSharingMetadata)initWithCoder:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"version"];
  if (v5 != +[PHCameraSmartSharingMetadata version])
  {
    v30 = PLPhotoKitGetLog();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

      v29 = 0;
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
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"libraryScopeLocalIdentifier"];
    libraryScopeLocalIdentifier = self->_libraryScopeLocalIdentifier;
    self->_libraryScopeLocalIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = self->_creationDate;
    self->_creationDate = v8;

    v10 = MEMORY[0x1E695DFD8];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"identities"];
    v14 = v13;
    v15 = MEMORY[0x1E695E0F0];
    v16 = (v13 ? v13 : MEMORY[0x1E695E0F0]);
    objc_storeStrong(&self->_identities, v16);

    v17 = MEMORY[0x1E695DFD8];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    v19 = [v17 setWithArray:v18];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"homeLocations"];
    v21 = v20;
    v22 = (v20 ? v20 : v15);
    objc_storeStrong(&self->_homeLocations, v22);

    v23 = MEMORY[0x1E695DFD8];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    v25 = [v23 setWithArray:v24];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"frequentLocations"];
    v27 = v26;
    v28 = (v26 ? v26 : v15);
    objc_storeStrong(&self->_frequentLocations, v28);

    self->_locationShiftingRequired = [v4 decodeBoolForKey:@"locationShiftingRequired"];
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
  v29 = self;
LABEL_18:

  return v29;
}

- (BOOL)hasActiveLibraryScope
{
  v2 = [(PHCameraSmartSharingMetadata *)self libraryScopeLocalIdentifier];
  v3 = v2 != 0;

  return v3;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(PHCameraSmartSharingMetadata *)self libraryScopeLocalIdentifier];
  v6 = [(PHCameraSmartSharingMetadata *)self creationDate];
  v7 = [(PHCameraSmartSharingMetadata *)self identities];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [(PHCameraSmartSharingMetadata *)self homeLocations];
  v10 = [v9 componentsJoinedByString:{@", "}];
  v11 = [(PHCameraSmartSharingMetadata *)self frequentLocations];
  v12 = [v11 componentsJoinedByString:{@", "}];
  v13 = [v15 stringWithFormat:@"<%@:%p libraryScope:%@ creationDate:%@ identities:[%@] homeLocations:[%@] frequentLocations:[%@] locationShiftingRequired:%d>", v4, self, v5, v6, v8, v10, v12, -[PHCameraSmartSharingMetadata locationShiftingRequired](self, "locationShiftingRequired")];;

  return v13;
}

- (PHCameraSmartSharingMetadata)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PHCameraSmartSharingMetadata.m" lineNumber:147 description:@"Unavailable initializer"];

  return 0;
}

- (PHCameraSmartSharingMetadata)initWithLibraryScopeIdentifier:(id)a3 filterContactIDs:(id)a4 homeLocations:(id)a5 isOnTrip:(BOOL)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v8;
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

  v20 = [(PHCameraSmartSharingMetadata *)self initWithLibraryScopeIdentifier:v23 identities:v10 homeLocations:v9 frequentLocations:0 locationShiftingRequired:0];
  return v20;
}

- (PHCameraSmartSharingMetadata)initWithLibraryScopeIdentifier:(id)a3 identities:(id)a4 homeLocations:(id)a5 frequentLocations:(id)a6 locationShiftingRequired:(BOOL)a7
{
  v65 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v62.receiver = self;
  v62.super_class = PHCameraSmartSharingMetadata;
  v16 = [(PHCameraSmartSharingMetadata *)&v62 init];
  if (v16)
  {
    v17 = [MEMORY[0x1E695DF00] date];
    creationDate = v16->_creationDate;
    v16->_creationDate = v17;

    v53 = v12;
    v19 = [v12 copy];
    libraryScopeLocalIdentifier = v16->_libraryScopeLocalIdentifier;
    v16->_libraryScopeLocalIdentifier = v19;

    v21 = [v13 copy];
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

    v51 = v14;
    v25 = [v14 copy];
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

    v49 = v15;
    v28 = [v15 copy];
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
    v16->_locationShiftingRequired = a7;
    v31 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v52 = v13;
    v32 = v13;
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
          v38 = [v37 contactIdentifiers];
          v39 = [v38 countByEnumeratingWithState:&v54 objects:v63 count:16];
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
                  objc_enumerationMutation(v38);
                }

                v43 = *(*(&v54 + 1) + 8 * j);
                if ([v43 length])
                {
                  [v31 addObject:v43];
                }
              }

              v40 = [v38 countByEnumeratingWithState:&v54 objects:v63 count:16];
            }

            while (v40);
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v34);
    }

    v44 = [v31 allObjects];
    v45 = [v44 copy];
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

    v13 = v52;
    v12 = v53;
    v14 = v51;
    v15 = v49;
  }

  return v16;
}

+ (BOOL)storeMetadata:(id)a3 forPhotoLibrary:(id)a4 error:(id *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = *MEMORY[0x1E69C0090];
  [*MEMORY[0x1E69C0090] UTF8String];
  v11 = xpc_copy_entitlement_for_self();
  if (v11 == MEMORY[0x1E69E9E10])
  {
    v24 = 0;
    v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v24];
    v15 = v24;
    if (v14)
    {
      v16 = [a1 _metadataFileURLForPhotoLibrary:v9];
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

        if (a5)
        {
          v19 = v17;
          *a5 = v17;
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

      if (a5)
      {
        v21 = v15;
        v13 = 0;
        *a5 = v15;
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

    if (a5)
    {
      [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{@"Missing entitlement %@", v10}];
      *a5 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

+ (id)_readMetadataFromFileURL:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v16 = 0;
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v3 options:0 error:&v16];
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
      v18 = v3;
      v19 = 2112;
      v20 = 0;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_INFO, "[PHCameraSmartSharingMetadata] missing file %@ error:%@", buf, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

+ (id)retrieveMetadataForPhotoLibrary:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v5 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
    v6 = MEMORY[0x1E695DFF8];
    v7 = [v5 photoDirectoryWithType:21 createIfNeeded:0 error:0];
    v8 = [v6 fileURLWithPath:v7];

    v9 = [v8 URLByAppendingPathComponent:@"camera_smart_sharing_metadata.plist"];
    if (v9)
    {
      v10 = [MEMORY[0x1E696AC08] defaultManager];
      v11 = [v9 path];
      v12 = [v10 fileExistsAtPath:v11];

      if (v12)
      {

        v4 = 0;
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

    v4 = +[PHPhotoLibrary sharedPhotoLibrary];
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
  v18 = [v4 requestSandboxExtensionsIfNeededWithError:&v34];
  v22 = v34;
  if ((v18 & 1) == 0)
  {
    v27 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v36 = v22;
      v37 = 2112;
      v38 = v4;
      _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_ERROR, "[PHCameraSmartSharingMetadata] failed to request sandbox extensions:%@ for library:%@", buf, 0x16u);
    }

    goto LABEL_24;
  }

  v19 = [a1 _metadataFileURLForPhotoLibrary:v4];

  v9 = v19;
LABEL_15:
  v20 = [a1 _readMetadataFromFileURL:v9];
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

  if (!v4)
  {
    v4 = +[PHPhotoLibrary sharedPhotoLibrary];
  }

  v30 = [v4 photoAnalysisClient];
  v33 = 0;
  v31 = [v30 requestCameraSmartSharingProcessingForLibraryScopeWithUUID:0 withOptions:0 error:&v33];
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

  v32 = [a1 _readMetadataFromFileURL:v9];
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

+ (id)_metadataFileURLForPhotoLibrary:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [a3 urlForApplicationDataFolderIdentifier:10 error:&v8];
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