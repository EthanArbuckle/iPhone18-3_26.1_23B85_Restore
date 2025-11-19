@interface NSURL(FPAdditions)
+ (id)fp_additionalContainerPathsForBookmarks;
+ (id)fp_backupManifestDirectory;
+ (id)fp_cloudStorageDirectory;
+ (id)fp_homeDirectory;
+ (id)fp_homeDirectoryForUserID:()FPAdditions;
+ (id)fp_homeDirectoryPathForUserID:()FPAdditions;
+ (id)fp_insecureTempDirectory;
+ (id)fp_insecureTempDirectoryIgnoringPersona;
+ (id)fp_lmdURL;
+ (id)fp_personaSharedDirectory;
+ (id)fp_personaSharedDirectoryPathForUserID:()FPAdditions;
+ (id)fp_secureTempDirectory;
+ (id)fp_secureTempDirectoryIgnoringPersona;
+ (id)fp_supportDirectory;
+ (id)fp_supportDirectoryForVolume:()FPAdditions;
+ (id)fp_tempDirectoryForEnterprisePersona;
+ (id)fp_uncachedContainerURLForSecurityApplicationGroupIdentifier:()FPAdditions forPrimaryPersona:;
+ (void)fp_tempDirectoryForEnterprisePersona;
- (BOOL)fp_associateThumbnailFromDocumentAtURL:()FPAdditions error:;
- (BOOL)fp_associateThumbnailToVersionAtURL:()FPAdditions thumbnailMetadata:error:;
- (BOOL)fp_isInSyncableRootFast;
- (BOOL)fp_isLocationOrInLocation:()FPAdditions relativeTo:;
- (BOOL)fp_matchesAlternateContentsURL:()FPAdditions;
- (BOOL)fp_removeACLWithError:()FPAdditions;
- (id)_fp_componentsRelativeToRoot:()FPAdditions;
- (id)fp_addDocumentTrackingWithError:()FPAdditions;
- (id)fp_bouncedNameWithIndex:()FPAdditions;
- (id)fp_commonDirectDescendantOf:()FPAdditions;
- (id)fp_directorySizeWithError:()FPAdditions;
- (id)fp_fpfsProviderDomainID:()FPAdditions skipTypeCheck:error:;
- (id)fp_fpfsRootURL;
- (id)fp_mountOnName;
- (id)fp_moveToTempFolderWithFilename:()FPAdditions error:;
- (id)fp_realpathURL;
- (id)fp_relativePathOf:()FPAdditions;
- (id)fp_relativePathWithRealpath:()FPAdditions;
- (id)fp_resolveDetachedRootLogicalLocation:()FPAdditions error:;
- (id)fp_scopeDescription;
- (id)fp_shortDescription;
- (id)fp_uniqueTempFolderWithError:()FPAdditions;
- (id)fp_volumeUUID;
- (uint64_t)_fp_partOfAppInboxWithURLComponents:()FPAdditions;
- (uint64_t)_fp_relationshipToItemAtURL:()FPAdditions bothAreRealpaths:;
- (uint64_t)fp_attachSecurityScopeFromURL:()FPAdditions;
- (uint64_t)fp_checkSandboxFileMetadataRead;
- (uint64_t)fp_hasThumbnailOnImmutableDocument;
- (uint64_t)fp_isAppInboxOrDescendants;
- (uint64_t)fp_isFolder;
- (uint64_t)fp_isPackage;
- (uint64_t)fp_isSymlink;
- (uint64_t)fp_makeWritableOnFD:()FPAdditions error:;
- (uint64_t)fp_makeWritableWithError:()FPAdditions;
- (uint64_t)fp_matchesApplicationContainerURL:()FPAdditions;
- (uint64_t)fp_matchesApplicationDataOrGroupContainerURL:()FPAdditions;
- (uint64_t)fp_matchesCloudDocsURL:()FPAdditions;
- (uint64_t)fp_matchesEDSLocation;
- (uint64_t)fp_matchesFPFSURL:()FPAdditions;
- (uint64_t)fp_matchesFileProviderHeuristics:()FPAdditions options:;
- (uint64_t)fp_matchesFileProviderURL:()FPAdditions;
- (uint64_t)fp_matchesLiveFilesURL:()FPAdditions;
- (uint64_t)fp_matchesOtherBookmarkContainersURL:()FPAdditions;
- (uint64_t)fp_matchesUbiquitousHeuristics;
- (uint64_t)fp_removeFileProviderXattrsWithError:()FPAdditions;
- (void)fp_hideExtension:()FPAdditions;
- (void)fp_issueSandboxExtensionOfClass:()FPAdditions report:error:;
- (void)fp_makeWritableAndRemoveNonExportableAttributes;
- (void)fp_mountOnName;
- (void)fp_volumeUUID;
@end

@implementation NSURL(FPAdditions)

- (id)fp_realpathURL
{
  v2 = [a1 path];
  v3 = [v2 fp_realpath];

  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:{objc_msgSend(a1, "hasDirectoryPath")}];
  }

  else
  {
    v4 = a1;
  }

  v5 = v4;

  return v5;
}

+ (id)fp_homeDirectory
{
  v0 = geteuid();
  if (v0)
  {
    v1 = [MEMORY[0x1E695DFF8] fp_homeDirectoryForUserID:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (uint64_t)fp_matchesEDSLocation
{
  v2 = [@"PersonaVolumes/<uuid>/Containers/Data/InternalDaemon/<uuid>/Library/CloudStorage/<uuid>" componentsSeparatedByString:@"/"];
  if (fpfs_supports_sokoban())
  {
    v3 = 0;
  }

  else
  {
    v3 = [@"PersonaVolumes/<uuid>/Containers/Data/InternalDaemon/<uuid>/Library/Mobile Documents" componentsSeparatedByString:@"/"];
  }

  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var"];
  v5 = [v4 fp_relativePathWithRealpath:a1];

  if (v5)
  {
    v6 = [@"PersonaVolumes/<uuid>/Containers/Shared/AppGroup/<uuid>/File Provider Storage" componentsSeparatedByString:@"/"];
    v7 = [v5 componentsSeparatedByString:@"/"];
    v8 = [v7 count];
    if (v8 >= [v6 count] || (v9 = objc_msgSend(v7, "count"), v9 >= objc_msgSend(v2, "count")) || (v10 = objc_msgSend(v7, "count"), v10 >= objc_msgSend(0, "count")) || (v11 = objc_msgSend(v7, "count"), v11 >= objc_msgSend(v3, "count")))
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __43__NSURL_FPAdditions__fp_matchesEDSLocation__block_invoke;
      aBlock[3] = &unk_1E793A9A8;
      v16 = v7;
      v13 = _Block_copy(aBlock);
      if (v13[2](v13, v6) & 1) != 0 || (v13[2](v13, v2) & 1) != 0 || (v13[2](v13, 0))
      {
        v12 = 1;
      }

      else if (fpfs_supports_sokoban())
      {
        v12 = 0;
      }

      else
      {
        v12 = v13[2](v13, v3);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)fp_lmdURL
{
  v0 = [MEMORY[0x1E695DFF8] fp_homeDirectory];
  v1 = [v0 URLByAppendingPathComponent:@"Library/Mobile Documents" isDirectory:1];

  return v1;
}

- (id)fp_shortDescription
{
  v1 = [a1 path];
  v2 = [v1 fp_prettyPath];

  return v2;
}

- (uint64_t)fp_checkSandboxFileMetadataRead
{
  getpid();
  v2 = (*MEMORY[0x1E69E9BD0] | *MEMORY[0x1E69E9BC8]);
  v3 = [a1 path];
  v11 = [v3 fileSystemRepresentation];
  v4 = sandbox_check();

  if (!v4)
  {
    return 1;
  }

  v13 = 0;
  v5 = [a1 checkResourceIsReachableAndReturnError:{&v13, v11}];
  v6 = v13;
  if (v5 && (v12 = 0, [a1 getResourceValue:&v12 forKey:*MEMORY[0x1E695DBC8] error:0]) && objc_msgSend(v12, "BOOLValue"))
  {
    v7 = [a1 path];
    v8 = [v7 stringByDeletingLastPathComponent];
    [v8 fileSystemRepresentation];
    v9 = sandbox_check() == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)fp_issueSandboxExtensionOfClass:()FPAdditions report:error:
{
  v8 = [a1 path];
  if ([a1 hasDirectoryPath])
  {
    v9 = [v8 stringByAppendingString:@"/"];

    v8 = v9;
  }

  v10 = *MEMORY[0x1E69E9BE8];
  v11 = *MEMORY[0x1E69E9BF0];
  [v8 fileSystemRepresentation];
  v12 = sandbox_extension_issue_file();
  if (v12)
  {
    a5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v12 length:strlen(v12) + 1 freeWhenDone:1];
  }

  else if (a5)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *__error();
    v15 = [a1 path];
    v16 = __error();
    *a5 = [v13 fp_errorWithPOSIXCode:v14 description:{@"couldn't issue sandbox extension %s for '%@': %s", a3, v15, strerror(*v16)}];

    a5 = 0;
  }

  return a5;
}

+ (id)fp_personaSharedDirectory
{
  v0 = geteuid();
  if (v0)
  {
    v1 = [MEMORY[0x1E695DFF8] fp_personaSharedDirectoryPathForUserID:v0];
    if (v1)
    {
      v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:v1 isDirectory:1];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)fp_homeDirectoryPathForUserID:()FPAdditions
{
  v3 = copyHomeDirectoryCompat(a3);
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
    free(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)fp_personaSharedDirectoryPathForUserID:()FPAdditions
{
  if (fp_personaSharedDirectoryPathForUserID__once != -1)
  {
    +[NSURL(FPAdditions) fp_personaSharedDirectoryPathForUserID:];
  }

  v4 = fp_personaSharedDirectoryPathForUserID__pathByPersonaID;
  objc_sync_enter(v4);
  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];

  v7 = [v6 userPersonaUniqueString];
  v8 = v7;
  v9 = @"__FPDefaultPersona__";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [fp_personaSharedDirectoryPathForUserID__pathByPersonaID objectForKeyedSubscript:v10];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    if ([v6 isEnterprisePersona])
    {
      if (fpfs_supports_sokoban())
      {
        [kFPGroupContainerIdentifier fileSystemRepresentation];
      }

      v14 = container_create_or_lookup_path_for_current_user();
    }

    else
    {
      v14 = copyHomeDirectoryCompat(a3);
    }

    v15 = v14;
    if (v14)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
      free(v15);
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        +[NSURL(FPAdditions) fp_personaSharedDirectoryPathForUserID:];
      }

      [fp_personaSharedDirectoryPathForUserID__pathByPersonaID setObject:v13 forKeyedSubscript:v10];
    }

    else
    {
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[NSURL(FPAdditions) fp_personaSharedDirectoryPathForUserID:];
      }

      v13 = 0;
    }
  }

  objc_sync_exit(v4);

  return v13;
}

+ (id)fp_homeDirectoryForUserID:()FPAdditions
{
  v0 = [MEMORY[0x1E695DFF8] fp_homeDirectoryPathForUserID:?];
  if (v0)
  {
    v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v0 isDirectory:1];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

+ (id)fp_tempDirectoryForEnterprisePersona
{
  v0 = [MEMORY[0x1E695DFF8] fp_personaSharedDirectory];
  v1 = [v0 URLByAppendingPathComponent:@"tmp/com.apple.fileproviderd"];

  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = 0;
  v3 = [v2 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:&v7];
  v4 = v7;

  if ((v3 & 1) == 0)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[NSURL(FPAdditions) fp_tempDirectoryForEnterprisePersona];
    }
  }

  return v1;
}

+ (id)fp_secureTempDirectory
{
  v0 = [MEMORY[0x1E69DF068] sharedManager];
  v1 = [v0 currentPersona];

  if ([v1 isEnterprisePersona])
  {
    [MEMORY[0x1E695DFF8] fp_tempDirectoryForEnterprisePersona];
  }

  else
  {
    [MEMORY[0x1E695DFF8] fp_secureTempDirectoryIgnoringPersona];
  }
  v2 = ;

  return v2;
}

+ (id)fp_secureTempDirectoryIgnoringPersona
{
  if (fp_secureTempDirectoryIgnoringPersona_once != -1)
  {
    +[NSURL(FPAdditions) fp_secureTempDirectoryIgnoringPersona];
  }

  v1 = fp_secureTempDirectoryIgnoringPersona_sandboxedTemporaryDirectory;

  return v1;
}

+ (id)fp_insecureTempDirectory
{
  v0 = [MEMORY[0x1E69DF068] sharedManager];
  v1 = [v0 currentPersona];

  if ([v1 isEnterprisePersona])
  {
    [MEMORY[0x1E695DFF8] fp_tempDirectoryForEnterprisePersona];
  }

  else
  {
    [MEMORY[0x1E695DFF8] fp_insecureTempDirectoryIgnoringPersona];
  }
  v2 = ;

  return v2;
}

+ (id)fp_insecureTempDirectoryIgnoringPersona
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = [MEMORY[0x1E695DFF8] fp_insecureTempDirectoryIgnoringPersonaString];
  v2 = [v0 fileURLWithPath:v1 isDirectory:1];

  return v2;
}

+ (id)fp_cloudStorageDirectory
{
  v0 = [MEMORY[0x1E695DFF8] fp_personaSharedDirectory];
  v1 = [v0 URLByAppendingPathComponent:kFPPath_Library_Slash_CloudStorage_Slash];

  return v1;
}

+ (id)fp_supportDirectory
{
  v0 = [MEMORY[0x1E695DFF8] fp_personaSharedDirectory];
  v1 = [v0 URLByAppendingPathComponent:@"Library/Application Support/FileProvider"];

  return v1;
}

+ (id)fp_backupManifestDirectory
{
  v0 = [MEMORY[0x1E695DFF8] fp_supportDirectory];
  v1 = [v0 URLByAppendingPathComponent:@"backup" isDirectory:1];

  return v1;
}

+ (id)fp_supportDirectoryForVolume:()FPAdditions
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = a3;
  v5 = [v3 fp_personaSharedDirectory];
  v6 = [v5 fp_mountOnName];

  v7 = [v4 fp_mountOnName];

  if ([v6 fp_relationshipToItemAtURL:v7] == 1)
  {
    v8 = [MEMORY[0x1E695DFF8] fp_supportDirectory];
  }

  else
  {
    v9 = [kFPPath_DotCloudStorage_Slash stringByAppendingPathComponent:@"System"];
    v8 = [v7 URLByAppendingPathComponent:v9 isDirectory:1];
  }

  return v8;
}

- (id)fp_scopeDescription
{
  v2 = MEMORY[0x1AC593480]();
  v3 = _CFURLPromiseCopyPhysicalURL();
  v4 = v3;
  if (v3 && ([v3 isEqual:a1] & 1) == 0)
  {
    v7 = MEMORY[0x1AC593480](v4);
    v10 = MEMORY[0x1E696AEC0];
    v11 = [a1 fp_shortDescription];
    if (v2)
    {
      v12 = @"s";
    }

    else
    {
      v12 = @"n";
    }

    v13 = [v4 lastPathComponent];
    v14 = v13;
    if (v7)
    {
      v15 = @"s";
    }

    else
    {
      v15 = @"n";
    }

    v9 = [v10 stringWithFormat:@"%@ (%@) -> %@ (%@)", v11, v12, v13, v15];
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [a1 fp_shortDescription];
    v7 = v6;
    v8 = @"s";
    if (!v2)
    {
      v8 = @"n";
    }

    v9 = [v5 stringWithFormat:@"%@ (%@)", v6, v8];
  }

  return v9;
}

- (id)fp_relativePathOf:()FPAdditions
{
  v4 = a3;
  v5 = [a1 fp_realpathURL];
  v6 = [v4 fp_realpathURL];

  v7 = [v5 fp_relativePathWithRealpath:v6];

  return v7;
}

- (id)fp_relativePathWithRealpath:()FPAdditions
{
  v4 = a3;
  v5 = [a1 path];
  v6 = [v4 path];

  v7 = 0;
  if (v5 && v6)
  {
    v7 = [v5 fp_relativePathWithRealpath:v6];
  }

  return v7;
}

- (uint64_t)_fp_relationshipToItemAtURL:()FPAdditions bothAreRealpaths:
{
  v6 = a3;
  v7 = 2;
  v32 = 2;
  if (v6)
  {
    v8 = [a1 fp_relativePathWithRealpath:v6];
    if (v8)
    {
      v9 = v8;
      v7 = [v8 length] == 0;
LABEL_29:

      goto LABEL_30;
    }

    v10 = *MEMORY[0x1E695DD70];
    [a1 removeCachedResourceValueForKey:*MEMORY[0x1E695DD70]];
    v11 = *MEMORY[0x1E695DB78];
    [a1 removeCachedResourceValueForKey:*MEMORY[0x1E695DB78]];
    [a1 removeCachedResourceValueForKey:*MEMORY[0x1E695DB00]];
    [a1 removeCachedResourceValueForKey:*MEMORY[0x1E695DBE8]];
    [a1 removeCachedResourceValueForKey:*MEMORY[0x1E695DC38]];
    v30 = 0;
    v31 = 0;
    v12 = [a1 getResourceValue:&v31 forKey:v10 error:&v30];
    v13 = v31;
    v14 = v30;
    if (v12)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v28 = 0;
      v29 = 0;
      v16 = [v6 getResourceValue:&v29 forKey:v10 error:&v28];
      v17 = v29;
      v18 = v28;

      if (!v16 || !v17 || ![v13 isEqual:v17])
      {
LABEL_11:
        if (a4)
        {
          v9 = 0;
          v7 = v32;
        }

        else
        {
          v22 = [a1 fp_realpathURL];
          v23 = [v6 fp_realpathURL];
          v9 = [v22 fp_relativePathWithRealpath:v23];
          if ([v9 isEqualToString:&stru_1F1F94B20])
          {
            v7 = 1;
            v32 = 1;
          }

          else if (v9)
          {
            v7 = 0;
            v32 = 0;
          }

          else
          {
            v7 = v32;
          }
        }

        goto LABEL_28;
      }

      v26 = 0;
      v27 = 0;
      [a1 getResourceValue:&v27 forKey:v11 error:&v26];
      v19 = v27;
      v14 = v26;

      if ([v19 BOOLValue])
      {
        v20 = [MEMORY[0x1E696AC08] defaultManager];
        v25 = v14;
        v21 = [v20 getRelationship:&v32 ofDirectoryAtURL:a1 toItemAtURL:v6 error:&v25];
        v18 = v25;

        if (v21)
        {
          v7 = v32;
          if ((a4 & 1) != 0 || v32 != 2)
          {

            v9 = 0;
LABEL_28:

            goto LABEL_29;
          }
        }

        v14 = v18;
      }
    }

    v18 = v14;
    goto LABEL_11;
  }

LABEL_30:

  return v7;
}

- (uint64_t)fp_isSymlink
{
  v2 = [a1 startAccessingSecurityScopedResource];
  v6 = 0;
  [a1 getResourceValue:&v6 forKey:*MEMORY[0x1E695DBC8] error:0];
  v3 = v6;
  if (v2)
  {
    [a1 stopAccessingSecurityScopedResource];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)fp_isFolder
{
  v2 = [a1 startAccessingSecurityScopedResource];
  memset(&v9, 0, sizeof(v9));
  v3 = [a1 path];
  v4 = lstat([v3 fileSystemRepresentation], &v9);

  if (v4 < 0 || (v9.st_mode & 0xF000) != 0x4000)
  {
    if (v2)
    {
      [a1 stopAccessingSecurityScopedResource];
    }

    return 0;
  }

  else
  {
    v8 = 0;
    [a1 getResourceValue:&v8 forKey:*MEMORY[0x1E695DBA0] error:0];
    v5 = v8;
    if (v2)
    {
      [a1 stopAccessingSecurityScopedResource];
    }

    v6 = [v5 BOOLValue] ^ 1;
  }

  return v6;
}

- (uint64_t)fp_isPackage
{
  v2 = [a1 startAccessingSecurityScopedResource];
  v8 = 0;
  [a1 getResourceValue:&v8 forKey:*MEMORY[0x1E695DB78] error:0];
  v3 = v8;
  if (([v3 BOOLValue] & 1) == 0)
  {
    if (v2)
    {
      [a1 stopAccessingSecurityScopedResource];
    }

    v4 = 0;
    goto LABEL_9;
  }

  v7 = 0;
  [a1 getResourceValue:&v7 forKey:*MEMORY[0x1E695DBA0] error:0];
  v4 = v7;
  if (v2)
  {
    [a1 stopAccessingSecurityScopedResource];
  }

  if (![v4 BOOLValue])
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v5 = [v3 BOOLValue];
LABEL_10:

  return v5;
}

- (void)fp_hideExtension:()FPAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v3 = *MEMORY[0x1E695DB60];
  v7 = 0;
  v4 = [a1 setResourceValue:v2 forKey:v3 error:&v7];
  v5 = v7;

  if ((v4 & 1) == 0)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(FPAdditions) *)a1 fp_hideExtension:v5];
    }
  }
}

- (uint64_t)fp_removeFileProviderXattrsWithError:()FPAdditions
{
  v5 = open([a1 fileSystemRepresentation], 2097158);
  if (v5 < 0 && (*__error() != 21 || (v5 = open([a1 fileSystemRepresentation], 1048836), v5 < 0)))
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(NSURL(FPAdditions) *)a1 fp_removeFileProviderXattrsWithError:v11];
    }
  }

  else
  {
    v6 = v5;
    v7 = 0;
    for (i = 1; ; i = 0)
    {
      v9 = i;
      if (fremovexattr(v6, _fileprovider_xattrs[v7], 0) < 0 && *__error() != 93)
      {
        break;
      }

      v7 = 1;
      if ((v9 & 1) == 0)
      {
        close(v6);
        return 1;
      }
    }

    if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
    }

    close(v6);
  }

  return 0;
}

- (BOOL)fp_removeACLWithError:()FPAdditions
{
  section = __fp_create_section();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [NSURL(FPAdditions) fp_removeACLWithError:];
  }

  v6 = fpfs_clear_file_acl([a1 fileSystemRepresentation]);
  v7 = v6;
  if (a3 && v6 < 0)
  {
    *a3 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
  }

  __fp_leave_section_Debug(&section);
  return v7 >= 0;
}

- (uint64_t)fp_makeWritableWithError:()FPAdditions
{
  v5 = open([a1 fileSystemRepresentation], 33028);
  if ((v5 & 0x80000000) != 0)
  {
    if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
    }

    return 0;
  }

  else
  {
    v6 = v5;
    v7 = [a1 fp_makeWritableOnFD:v5 error:a3];
    close(v6);
    return v7;
  }
}

- (uint64_t)fp_makeWritableOnFD:()FPAdditions error:
{
  memset(&v13, 0, sizeof(v13));
  if (fstat(a3, &v13) < 0)
  {
    if (a4)
    {
      v10 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
      v11 = v10;
      result = 0;
      *a4 = v10;
      return result;
    }

    return 0;
  }

  if ((v13.st_mode & 0x80) == 0)
  {
    if (v13.st_mode)
    {
      v6 = v13.st_mode | 0x80;
    }

    else
    {
      v6 = 493;
    }

    if (fchmod(a3, v6) < 0)
    {
      if (a4)
      {
        *a4 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
      }

      v12 = fp_current_or_default_log();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [NSURL(FPAdditions) fp_makeWritableOnFD:error:];
    }
  }

  if (fp_makeWritableOnFD_error__onceToken != -1)
  {
    [NSURL(FPAdditions) fp_makeWritableOnFD:error:];
  }

  result = 1;
  if (fp_makeWritableOnFD_error__mobile_uid && fp_makeWritableOnFD_error__mobile_gid && *&v13.st_uid != __PAIR64__(fp_makeWritableOnFD_error__mobile_gid, fp_makeWritableOnFD_error__mobile_uid))
  {
    if ((fchown(a3, fp_makeWritableOnFD_error__mobile_uid, fp_makeWritableOnFD_error__mobile_gid) & 0x80000000) == 0)
    {
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [NSURL(FPAdditions) fp_makeWritableOnFD:error:];
      }

      return 1;
    }

    if (a4)
    {
      *a4 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
    }

    v12 = fp_current_or_default_log();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

LABEL_28:
    [NSURL(FPAdditions) fp_makeWritableOnFD:error:];
LABEL_29:

    return 0;
  }

  return result;
}

- (void)fp_makeWritableAndRemoveNonExportableAttributes
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_0_6(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_6_3(&dword_1AAAE1000, "[ERROR] Unable to open %@, error %@", v4, v5);
}

- (id)fp_addDocumentTrackingWithError:()FPAdditions
{
  v4 = [a1 fileSystemRepresentation];
  getpid();
  v5 = (*MEMORY[0x1E69E9BD0] | *MEMORY[0x1E69E9BC8]);
  if (sandbox_check())
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [NSURL(FPAdditions) fp_addDocumentTrackingWithError:];
    }

    v7 = 0;
    v8 = *__error();
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v9 = open(v4, 260, v4);
  if (v9 < 0)
  {
    v8 = *__error();
    if (v8 == 2)
    {
      v7 = 0;
      v8 = 2;
      if (!a3)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [NSURL(FPAdditions) fp_addDocumentTrackingWithError:];
    }

    v7 = 0;
    if (a3)
    {
LABEL_20:
      if (!v7)
      {
        *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:v8 userInfo:0];
      }
    }
  }

  else
  {
    v10 = v9;
    DocumentId = GSLibraryGetOrAllocateDocumentId();
    if (DocumentId)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DocumentId];
      v8 = 0;
    }

    else
    {
      v8 = *__error();
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [NSURL(FPAdditions) fp_addDocumentTrackingWithError:];
      }

      v7 = 0;
    }

    close(v10);
    if (a3)
    {
      goto LABEL_20;
    }
  }

LABEL_22:

  return v7;
}

- (uint64_t)fp_attachSecurityScopeFromURL:()FPAdditions
{
  if (MEMORY[0x1AC593480](a3))
  {
    MEMORY[0x1AC593440](a1);
  }

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)fp_associateThumbnailFromDocumentAtURL:()FPAdditions error:
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v7 = getGSStorageManagerClass_softClass;
  v22 = getGSStorageManagerClass_softClass;
  if (!getGSStorageManagerClass_softClass)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __getGSStorageManagerClass_block_invoke;
    v18[3] = &unk_1E793A2E8;
    v18[4] = &v19;
    __getGSStorageManagerClass_block_invoke(v18);
    v7 = v20[3];
  }

  v8 = v7;
  _Block_object_dispose(&v19, 8);
  v9 = [v7 manager];
  v10 = [v9 isPermanentStorageSupportedAtURL:a1 error:0];

  if (v10)
  {
    v11 = [a1 startAccessingSecurityScopedResource];
    v12 = [v6 startAccessingSecurityScopedResource];
    v17 = 0;
    [getQLThumbnailAdditionClass() associateThumbnailsForDocumentAtURL:v6 withDocumentAtURL:a1 error:&v17];
    v13 = v17;
    if (v11)
    {
      [a1 stopAccessingSecurityScopedResource];
      if (!v12)
      {
LABEL_6:
        if (!a4)
        {
LABEL_8:
          v15 = v13 == 0;

          goto LABEL_15;
        }

LABEL_7:
        v14 = v13;
        *a4 = v13;
        goto LABEL_8;
      }
    }

    else if (!v12)
    {
      goto LABEL_6;
    }

    [v6 stopAccessingSecurityScopedResource];
    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a4)
  {
    FPNotSupportedError();
    *a4 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_15:

  return v15;
}

- (BOOL)fp_associateThumbnailToVersionAtURL:()FPAdditions thumbnailMetadata:error:
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [a1 startAccessingSecurityScopedResource];
  v11 = [v8 startAccessingSecurityScopedResource];
  QLThumbnailAdditionClass = getQLThumbnailAdditionClass();
  v20 = *MEMORY[0x1E695DA70];
  v21[0] = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v19 = 0;
  LODWORD(QLThumbnailAdditionClass) = [QLThumbnailAdditionClass associateThumbnailImagesDictionary:v13 serializedQuickLookMetadata:v9 withImmutableDocument:1 atURL:a1 error:&v19];

  v14 = v19;
  if (QLThumbnailAdditionClass)
  {
    [a1 fp_hasThumbnailOnImmutableDocument];
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [NSURL(FPAdditions) fp_associateThumbnailToVersionAtURL:thumbnailMetadata:error:];
    }

    if (!v10)
    {
LABEL_3:
      if (!v11)
      {
        goto LABEL_4;
      }

LABEL_11:
      [v8 stopAccessingSecurityScopedResource];
      if (!a5)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if (!v10)
  {
    goto LABEL_3;
  }

  [a1 stopAccessingSecurityScopedResource];
  if (v11)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (a5)
  {
LABEL_5:
    v15 = v14;
    *a5 = v14;
  }

LABEL_6:

  v16 = *MEMORY[0x1E69E9840];
  return v14 == 0;
}

- (uint64_t)fp_hasThumbnailOnImmutableDocument
{
  QLThumbnailAdditionClass = getQLThumbnailAdditionClass();

  return [QLThumbnailAdditionClass hasThumbnailOnImmutableDocumentAtURL:a1];
}

- (id)fp_directorySizeWithError:()FPAdditions
{
  v19 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  [a1 fileSystemRepresentation];
  v6 = dirstat_np();
  if (CFAbsoluteTimeGetCurrent() - Current > 1.0)
  {
    fp_simulate_crash(@"dirstat took more than 1s to return", v7, v8, v9, v10, v11, v12, v13, 0);
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [NSURL(FPAdditions) fp_directorySizeWithError:];
    }
  }

  if (v6 < 0)
  {
    if (a3)
    {
      v16 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
      v17 = v16;
      v15 = 0;
      *a3 = v16;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v19];
  }

  return v15;
}

- (id)fp_uniqueTempFolderWithError:()FPAdditions
{
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 URLForDirectory:99 inDomain:1 appropriateForURL:a1 create:1 error:a3];

  if (v6)
  {
    v7 = [v6 path];
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    v10 = [v7 stringByAppendingPathComponent:v9];

    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = [v11 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:a3];
    v13 = 0;
    if (v12)
    {
      v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:1];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)fp_moveToTempFolderWithFilename:()FPAdditions error:
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 fp_uniqueTempFolderWithError:a4];
  if (v7)
  {
    if (!v6)
    {
      v6 = [a1 lastPathComponent];
    }

    v8 = [v7 URLByAppendingPathComponent:v6];
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v7 path];
    v11 = [v9 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:a4];

    v12 = 0;
    if (v11)
    {
      if ([v9 moveItemAtURL:a1 toURL:v8 error:a4])
      {
        v22 = *MEMORY[0x1E696A3A0];
        v23[0] = *MEMORY[0x1E696A388];
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        v14 = [v8 path];
        v21 = 0;
        v15 = [v9 setAttributes:v13 ofItemAtPath:v14 error:&v21];
        v16 = v21;

        if ((v15 & 1) == 0)
        {
          v17 = fp_current_or_default_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [NSURL(FPAdditions) fp_moveToTempFolderWithFilename:error:];
          }
        }

        v18 = v8;
      }

      else
      {
        v18 = 0;
      }

      v12 = v18;
    }
  }

  else
  {
    v12 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v12;
}

- (uint64_t)fp_matchesFileProviderURL:()FPAdditions
{
  v4 = [a3 URLByAppendingPathComponent:@"Containers/Shared/AppGroup/" isDirectory:1];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 fp_relativePathWithRealpath:a1];
    v7 = [v6 pathComponents];
    if ([v7 count] < 2)
    {
      v9 = 0;
    }

    else
    {
      v8 = [v7 objectAtIndexedSubscript:1];
      v9 = [v8 isEqualToString:@"File Provider Storage"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)fp_isLocationOrInLocation:()FPAdditions relativeTo:
{
  v5 = [a4 URLByAppendingPathComponent:a3 isDirectory:1];
  v6 = [v5 fp_relativePathWithRealpath:a1];
  v7 = v6 != 0;

  return v7;
}

- (uint64_t)fp_matchesCloudDocsURL:()FPAdditions
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [v4 fp_relativePathWithRealpath:a1];
  v6 = [a1 fp_isLocationOrInLocation:@"Library/Mobile Documents" relativeTo:v4];

  return v6;
}

- (uint64_t)fp_matchesFPFSURL:()FPAdditions
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 fp_relativePathWithRealpath:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hasPrefix:kFPPath_Library_Slash_CloudStorage_Slash];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)fp_matchesLiveFilesURL:()FPAdditions
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 fp_relativePathWithRealpath:a1];
  if ([v3 hasPrefix:@"Library/liveFiles/"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasPrefix:@"Library/LiveFiles/"];
  }

  return v4;
}

- (id)_fp_componentsRelativeToRoot:()FPAdditions
{
  v4 = [a3 URLByAppendingPathComponent:@"Containers/Data/Application/" isDirectory:1];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 fp_relativePathWithRealpath:a1];
    v7 = [v6 pathComponents];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)_fp_partOfAppInboxWithURLComponents:()FPAdditions
{
  v3 = a3;
  if ([v3 count] < 3)
  {
    v6 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:1];
    if ([v4 isEqualToString:@"Documents"])
    {
      v5 = [v3 objectAtIndexedSubscript:2];
      v6 = [v5 isEqualToString:@"Inbox"];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (uint64_t)fp_isAppInboxOrDescendants
{
  v2 = [MEMORY[0x1E695DFF8] fp_homeDirectory];
  v3 = [a1 _fp_componentsRelativeToRoot:v2];

  if (v3)
  {
    v4 = [a1 _fp_partOfAppInboxWithURLComponents:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)fp_additionalContainerPathsForBookmarks
{
  if (fp_additionalContainerPathsForBookmarks_onceToken != -1)
  {
    +[NSURL(FPAdditions) fp_additionalContainerPathsForBookmarks];
  }

  v1 = fp_additionalContainerPathsForBookmarks_additionalContainerPathsForBookmarks;

  return v1;
}

- (uint64_t)fp_matchesOtherBookmarkContainersURL:()FPAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [MEMORY[0x1E695DFF8] fp_additionalContainerPathsForBookmarks];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = 1;
      v10 = [v4 URLByAppendingPathComponent:*(*(&v17 + 1) + 8 * v8) isDirectory:1];
      v11 = [v10 fp_relativePathWithRealpath:a1];
      v12 = [v11 pathComponents];
      v13 = [v12 count];

      if (v13)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (uint64_t)fp_matchesApplicationDataOrGroupContainerURL:()FPAdditions
{
  v4 = a3;
  v5 = [v4 URLByAppendingPathComponent:@"Containers/Shared/AppGroup/" isDirectory:1];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 fp_relativePathWithRealpath:a1];
    v8 = [v7 pathComponents];
    if ([v8 count] > 1)
    {
      v9 = 1;
LABEL_8:

      goto LABEL_9;
    }

    v10 = [a1 _fp_componentsRelativeToRoot:v4];

    if ([v10 count] < 3)
    {
      goto LABEL_6;
    }

    v12 = [v10 objectAtIndexedSubscript:1];
    v13 = [v12 isEqualToString:@"Library"];

    if (v13)
    {
      if ([v10 count] < 3)
      {
        v9 = 1;
      }

      else
      {
        v14 = [v10 objectAtIndexedSubscript:2];
        v15 = [v14 isEqualToString:@"Caches"];

        v9 = v15 ^ 1;
      }

      goto LABEL_7;
    }

    v16 = [v10 objectAtIndexedSubscript:1];
    v17 = [v16 isEqualToString:@"Documents"];

    if (v17)
    {
      v9 = [a1 _fp_partOfAppInboxWithURLComponents:v10] ^ 1;
    }

    else
    {
LABEL_6:
      v9 = 0;
    }

LABEL_7:
    v8 = v10;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9 & 1;
}

- (uint64_t)fp_matchesApplicationContainerURL:()FPAdditions
{
  v2 = [a1 _fp_componentsRelativeToRoot:?];
  v3 = v2;
  if (v2 && [v2 count] >= 2 && (objc_msgSend(v3, "objectAtIndexedSubscript:", 1), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"Documents"), v4, v5))
  {
    v6 = [a1 _fp_partOfAppInboxWithURLComponents:v3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)fp_matchesAlternateContentsURL:()FPAdditions
{
  v4 = [a3 URLByAppendingPathComponent:@"Containers/Data/Application/" isDirectory:1];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 fp_relativePathWithRealpath:a1];
    v7 = [v6 rangeOfString:@"/"];
    v10 = 0;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [v6 substringFromIndex:v7];
      v9 = [v8 hasPrefix:@"/Library/Application Support/Collaboration/com.apple.iWork"];

      if (v9)
      {
        v10 = 1;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)fp_fpfsRootURL
{
  v2 = [MEMORY[0x1E695DFF8] fp_homeDirectory];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 fp_relativePathOf:a1];
    v5 = kFPPath_Library_Slash_CloudStorage_Slash;
    if ([v4 hasPrefix:v5])
    {
      v6 = [v4 substringFromIndex:{objc_msgSend(v5, "length")}];

      v7 = [v6 pathComponents];
      if ([v7 count] >= 2)
      {
        v9 = [v3 URLByAppendingPathComponent:v5];
        v10 = [v7 firstObject];
        v8 = [v9 URLByAppendingPathComponent:v10];
      }

      else
      {
        v8 = 0;
      }

      v4 = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)fp_isInSyncableRootFast
{
  v2 = [a1 path];
  if ([v2 containsString:kFPPath_Library_Slash_CloudStorage_Slash])
  {
  }

  else
  {
    v3 = [a1 path];
    v4 = [v3 containsString:kFPPath_DotCloudStorage_Slash];

    if (!v4)
    {
      return 0;
    }
  }

  v5 = getiopolicy_np(3, 1);
  setiopolicy_np(3, 1, 1);
  v10 = 0;
  if ((fsctl([a1 fileSystemRepresentation], 0x40084A4AuLL, &v10, 1u) & 0x80000000) == 0)
  {
    if (v10)
    {
      v6 = 1;
      goto LABEL_16;
    }

    if ([a1 hasDirectoryPath])
    {
      v9 = 0;
      v6 = fsctl([a1 fileSystemRepresentation], 0x40044A48uLL, &v9, 1u) >= 0 && v9 != 0;
      goto LABEL_16;
    }
  }

  v6 = 0;
LABEL_16:
  if ((v5 & 0x80000000) == 0)
  {
    setiopolicy_np(3, 1, v5);
  }

  return v6;
}

- (uint64_t)fp_matchesFileProviderHeuristics:()FPAdditions options:
{
  v16 = *MEMORY[0x1E69E9840];
  bzero(v15, 0x878uLL);
  [a1 fileSystemRepresentation];
  if (statfs_ext())
  {
    if (*__error() != 2)
    {
      v7 = fp_current_or_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [NSURL(FPAdditions) fp_matchesFileProviderHeuristics:a1 options:?];
      }
    }
  }

  else if ((v15[32] & 0x1200) != 0x1000)
  {
    v12 = 1;
    goto LABEL_22;
  }

  if ((a4 & 2) != 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = [a1 fp_realpathURL];
  }

  v9 = v8;
  v10 = [MEMORY[0x1E695DFF8] fp_homeDirectoryForUserID:a3];
  v11 = [v10 fp_realpathURL];

  if (a4 & 1) != 0 && (([v9 fp_matchesApplicationDataOrGroupContainerURL:v11] & 1) != 0 || (objc_msgSend(v9, "fp_matchesOtherBookmarkContainersURL:", v11)) || (objc_msgSend(v9, "fp_matchesFileProviderURL:", v11) & 1) != 0 || (objc_msgSend(v9, "fp_matchesApplicationContainerURL:", v11) & 1) != 0 || (objc_msgSend(v9, "fp_matchesEDSLocation") & 1) != 0 || (objc_msgSend(v9, "fp_matchesCloudDocsURL:", v11) & 1) != 0 || (objc_msgSend(v9, "fp_matchesFPFSURL:", v11) & 1) != 0 || (objc_msgSend(v9, "fp_matchesLiveFilesURL:", v11))
  {
    v12 = 1;
  }

  else
  {
    v12 = [v9 fp_matchesAlternateContentsURL:v11];
  }

LABEL_22:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (uint64_t)fp_matchesUbiquitousHeuristics
{
  v1 = [a1 fp_realpathURL];
  if ([v1 fp_isInSyncableRootFast])
  {
    v2 = MEMORY[0x1E695E118];
  }

  else
  {
    v3 = [MEMORY[0x1E695DFF8] fp_homeDirectory];
    v4 = [v3 fp_realpathURL];

    if (v4)
    {
      if ([v1 fp_matchesApplicationContainerURL:v4] & 1) != 0 || (objc_msgSend(v1, "fp_matchesLiveFilesURL:", v4))
      {
        v2 = MEMORY[0x1E695E110];
      }

      else
      {
        v6 = [v1 fp_matchesCloudDocsURL:v4];
        v2 = MEMORY[0x1E695E118];
        if ((v6 & 1) == 0 && ![v1 fp_matchesFPFSURL:v4])
        {
          v2 = 0;
        }
      }
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (id)fp_commonDirectDescendantOf:()FPAdditions
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && ([a1 path], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "path"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "hasPrefix:", v6), v6, v5, v7))
  {
    v8 = [a1 pathComponents];
    if ([v8 count])
    {
      v9 = MEMORY[0x1E695DFF8];
      v10 = [v8 objectAtIndexedSubscript:0];
      v11 = [v9 URLWithString:v10];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = v8;
      v12 = [v8 subarrayWithRange:{1, objc_msgSend(v8, "count") - 1}];
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
        while (2)
        {
          v16 = 0;
          v17 = v11;
          do
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v25 + 1) + 8 * v16);
            v19 = [v4 path];
            v20 = [v17 path];
            v21 = [v19 hasPrefix:v20];

            if (!v21)
            {
              v11 = v17;
              goto LABEL_15;
            }

            v11 = [v17 URLByAppendingPathComponent:v18];

            ++v16;
            v17 = v11;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      v8 = v24;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)fp_bouncedNameWithIndex:()FPAdditions
{
  v5 = [a1 startAccessingSecurityScopedResource];
  v6 = [a1 fp_isFolder];
  if (v5)
  {
    [a1 stopAccessingSecurityScopedResource];
  }

  v7 = [a1 lastPathComponent];
  v8 = [v7 fp_bouncedNameWithIndex:a3 isDir:v6];

  return v8;
}

- (id)fp_volumeUUID
{
  v10 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  v6 = xmmword_1AAC26570;
  v7 = 0;
  if (getattrlist([a1 fileSystemRepresentation], &v6, v8, 0x14uLL, 0) < 0)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(FPAdditions) *)a1 fp_volumeUUID];
    }

    v2 = 0;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v8 + 4];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)fp_mountOnName
{
  v10 = *MEMORY[0x1E69E9840];
  bzero(v8, 0x40CuLL);
  v6 = xmmword_1AAC26588;
  v7 = 0;
  if (getattrlist([a1 fileSystemRepresentation], &v6, v8, 0x40CuLL, 1u) < 0)
  {
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(FPAdditions) *)a1 fp_mountOnName];
    }

    v3 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9 + v9[0]];
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2 isDirectory:1];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)fp_uncachedContainerURLForSecurityApplicationGroupIdentifier:()FPAdditions forPrimaryPersona:
{
  v5 = a3;
  v6 = [MEMORY[0x1E69DF068] sharedManager];
  [v6 isSharedIPad];

  v7 = *MEMORY[0x1E69E9980];
  if ((a4 & 1) == 0)
  {
    v8 = [MEMORY[0x1E69DF068] sharedManager];
    v9 = [v8 currentPersona];

    v10 = [v9 userPersonaUniqueString];
    v11 = v10;
    if (v10)
    {
      [v10 UTF8String];
    }

    [v9 isEnterprisePersona];
  }

  container_query_create();
  container_query_set_class();
  v12 = xpc_string_create([v5 UTF8String]);
  container_query_set_group_identifiers();

  container_query_set_transient();
  container_query_operation_set_flags();
  container_query_set_persona_unique_string();
  if (container_query_get_single_result())
  {
    v13 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:container_get_path() isDirectory:1 relativeToURL:0];
  }

  else
  {
    container_query_get_last_error();
    v14 = container_error_copy_unlocalized_description();
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[NSURL(FPAdditions) fp_uncachedContainerURLForSecurityApplicationGroupIdentifier:forPrimaryPersona:];
    }

    free(v14);
    v13 = 0;
  }

  container_query_free();

  return v13;
}

- (id)fp_fpfsProviderDomainID:()FPAdditions skipTypeCheck:error:
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = [a1 fp_fpfsRootURL];
  }

  else
  {
    v6 = a1;
  }

  v7 = v6;
  if (!v6)
  {
    if (!a5)
    {
      goto LABEL_31;
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = 2;
LABEL_24:
    [v14 fp_errorWithPOSIXCode:v15];
    *a5 = v19 = 0;
    goto LABEL_32;
  }

  bzero(v25, 0x401uLL);
  size = 0;
  v8 = fpfs_path_return_assigned_provider_domain_xattr([v7 fileSystemRepresentation], &size, v25, 0x401uLL);
  if (!v8)
  {
    if (!a5)
    {
      goto LABEL_31;
    }

    v16 = *__error();
    v17 = v16 == 0;
    v18 = 93;
LABEL_20:
    if (v17)
    {
      v15 = v18;
    }

    else
    {
      v15 = v16;
    }

    v14 = MEMORY[0x1E696ABC0];
    goto LABEL_24;
  }

  v9 = v8;
  v10 = size;
  if (size >= 0x402)
  {
    v11 = malloc_type_malloc(size + 1, 0x748144FEuLL);
    if (v11)
    {
      v12 = v11;
      v13 = [v7 fileSystemRepresentation];
      v10 = getxattr(v13, v9, v12, size, 0, 1);
      if (v10 >= 1 && v10 <= size)
      {
        size = v10;
        goto LABEL_16;
      }

      if (a5)
      {
        v20 = *__error();
        if (v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = 93;
        }

        *a5 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:v21];
      }

      free(v12);
LABEL_31:
      v19 = 0;
      goto LABEL_32;
    }

    if (!a5)
    {
      goto LABEL_31;
    }

    v16 = *__error();
    v17 = v16 == 0;
    v18 = 12;
    goto LABEL_20;
  }

  v12 = v25;
LABEL_16:
  v12[v10] = 0;
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
  if (v12 != v25)
  {
    free(v12);
  }

LABEL_32:

  v22 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)fp_resolveDetachedRootLogicalLocation:()FPAdditions error:
{
  if (a3)
  {
    *a3 = 0;
  }

  v7 = getiopolicy_np(3, 1);
  if (v7 != 1)
  {
    setiopolicy_np(3, 1, 1);
  }

  v8 = open([a1 fileSystemRepresentation], 1081604);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = v8;
    v10 = a1;
    v11 = fgetxattr(v9, "com.apple.fileprovider.detached#B", 0, 0, 0, 0);
    if ((v11 & 0x8000000000000000) != 0)
    {
      if (a4)
      {
        v16 = FPNotSupportedError();
LABEL_25:
        v20 = 0;
        *a4 = v16;
LABEL_27:

        close(v9);
        if (!v20)
        {
          v15 = 0;
LABEL_50:

          goto LABEL_51;
        }

        v21 = v10;
        v22 = [MEMORY[0x1E696AE40] propertyListWithData:v20 options:0 format:0 error:a4];
        if (!v22)
        {
          goto LABEL_37;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v22;
          v24 = [v23 objectForKeyedSubscript:@"name"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = [v23 objectForKeyedSubscript:@"parentBookmark"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:v25 options:536871424 relativeToURL:0 bookmarkDataIsStale:0 error:a4];
              v27 = v26;
              if (v26)
              {
                v15 = [v26 URLByAppendingPathComponent:v24 isDirectory:1];
              }

              else
              {
                v15 = 0;
              }
            }

            else if (a4)
            {
              [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:22 itemURL:v21 debugDescription:@"parentBookmark is not a data blob"];
              *a4 = v15 = 0;
            }

            else
            {
              v15 = 0;
            }
          }

          else if (a4)
          {
            [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:22 itemURL:v21 debugDescription:@"name is not a string"];
            *a4 = v15 = 0;
          }

          else
          {
            v15 = 0;
          }

          goto LABEL_49;
        }

        if (a4)
        {
          [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:22 itemURL:v21 debugDescription:@"bookmark is not encoding a dictionary"];
          *a4 = v15 = 0;
        }

        else
        {
LABEL_37:
          v15 = 0;
        }

LABEL_49:

        goto LABEL_50;
      }
    }

    else
    {
      v12 = v11;
      if (a3)
      {
        *a3 = 1;
      }

      if (v11 <= 0x100000)
      {
        v17 = malloc_type_malloc(v11, 0xCB7EFE9AuLL);
        if (v17)
        {
          v18 = v17;
          v19 = fgetxattr(v9, "com.apple.fileprovider.detached#B", v17, v12, 0, 0);
          if (v19 <= v12)
          {
            v20 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v18 length:v19 freeWhenDone:1];
            goto LABEL_27;
          }

          if (a4)
          {
            *a4 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:12 itemURL:v10 debugDescription:@"xattr is too large for the allocated buffer"];
          }

          free(v18);
        }

        else if (a4)
        {
          v13 = MEMORY[0x1E696ABC0];
          v14 = @"cannot allocate buffer";
          goto LABEL_24;
        }
      }

      else if (a4)
      {
        v13 = MEMORY[0x1E696ABC0];
        v14 = @"detach root xattr is too large";
LABEL_24:
        v16 = [v13 fp_errorWithPOSIXCode:12 itemURL:v10 debugDescription:v14];
        goto LABEL_25;
      }
    }

    v20 = 0;
    goto LABEL_27;
  }

  if (a4)
  {
    [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error() itemURL:a1 debugDescription:@"item doesn't exist or is not a directory"];
    *a4 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_51:
  if (v7 != 1)
  {
    setiopolicy_np(3, 1, v7);
  }

  return v15;
}

+ (void)fp_personaSharedDirectoryPathForUserID:()FPAdditions .cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)fp_personaSharedDirectoryPathForUserID:()FPAdditions .cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)fp_tempDirectoryForEnterprisePersona
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fp_hideExtension:()FPAdditions .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)fp_removeFileProviderXattrsWithError:()FPAdditions .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
  v6 = 138412546;
  v7 = a1;
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] failed to open %@, error %@", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)fp_removeACLWithError:()FPAdditions .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fp_makeWritableOnFD:()FPAdditions error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] fixed up permissions on %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fp_makeWritableOnFD:()FPAdditions error:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] fixed up ownership on %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fp_makeWritableOnFD:()FPAdditions error:.cold.4()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fp_addDocumentTrackingWithError:()FPAdditions .cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] sandbox_check for file-write-flags failed at %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fp_addDocumentTrackingWithError:()FPAdditions .cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fp_addDocumentTrackingWithError:()FPAdditions .cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 1024;
  v5 = v0;
  _os_log_error_impl(&dword_1AAAE1000, v1, OS_LOG_TYPE_ERROR, "[ERROR] open failed at %s, errno:%{errno}d", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)fp_associateThumbnailToVersionAtURL:()FPAdditions thumbnailMetadata:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fp_moveToTempFolderWithFilename:()FPAdditions error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fp_matchesFileProviderHeuristics:()FPAdditions options:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  v2 = *__error();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)fp_volumeUUID
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)fp_mountOnName
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  v2 = *__error();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)fp_uncachedContainerURLForSecurityApplicationGroupIdentifier:()FPAdditions forPrimaryPersona:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2080;
  v5 = v0;
  _os_log_error_impl(&dword_1AAAE1000, v1, OS_LOG_TYPE_ERROR, "[ERROR] Error fetching group container for %@: %s", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end