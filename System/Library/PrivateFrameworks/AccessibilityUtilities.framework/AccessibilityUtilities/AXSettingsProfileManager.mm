@interface AXSettingsProfileManager
- (AXSettingsProfileManager)init;
- (BOOL)handleUserProfileDidChangeToUser:(id)user;
- (BOOL)handleUserProfileWillChangeFromUser:(id)user;
- (BOOL)startGuestModeSessionWithData:(id)data;
- (BOOL)updateProfileFor:(id)for withProperties:(id)properties;
- (NSURL)guestPassLocalStorageURL;
- (id)_getAXFileURLForPersona:(id)persona;
- (void)createPreferencesStorageFileIfNeededAtPath:(id)path;
- (void)deleteAllGuestPassProfiles;
- (void)deleteGuestPassProfile:(id)profile;
- (void)endGuestModeSession;
- (void)storeGuestPassProfile:(id)profile name:(id)name;
@end

@implementation AXSettingsProfileManager

- (AXSettingsProfileManager)init
{
  v3.receiver = self;
  v3.super_class = AXSettingsProfileManager;
  result = [(AXSettingsProfileManager *)&v3 init];
  if (result)
  {
    result->_containerURLLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)createPreferencesStorageFileIfNeededAtPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v4 = MEMORY[0x1E696AC00];
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
    v15 = 0;
    v6 = [v4 fileHandleForReadingFromURL:v5 error:&v15];
    v7 = v15;

    v14 = 0;
    v8 = [v6 readDataToEndOfFileAndReturnError:&v14];
    v9 = v14;

    if (!v8)
    {
      v10 = AXLogSettings();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18B15E000, v10, OS_LOG_TYPE_DEFAULT, "No saved settings existed for current profile, creating storage", buf, 2u);
      }

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager createFileAtPath:pathCopy contents:0 attributes:0];
    }

    v12 = 0;
    [v6 closeAndReturnError:&v12];
  }
}

- (BOOL)handleUserProfileDidChangeToUser:(id)user
{
  v4 = [(AXSettingsProfileManager *)self _getAXFileURLForPersona:user];
  v5 = [v4 URLByAppendingPathComponent:@"Accessibility.plist"];

  path = [v5 path];
  [(AXSettingsProfileManager *)self createPreferencesStorageFileIfNeededAtPath:path];

  v38 = 0;
  v7 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:v5 error:&v38];
  v8 = v38;
  if (v8)
  {
    v9 = AXLogSettings();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AXSettingsProfileManager handleUserProfileDidChangeToUser:];
    }
  }

  v37 = 0;
  v10 = [v7 readDataToEndOfFileAndReturnError:&v37];
  v11 = v37;

  v36 = 0;
  [v7 closeAndReturnError:&v36];
  v12 = v36;

  if (v10 && [v10 length])
  {
    v13 = v10;
    v14 = v12;
LABEL_15:
    v24 = v14;
    v30 = 0;
    v25 = [MEMORY[0x1E696AE40] propertyListWithData:v13 options:0 format:0 error:&v30];
    v14 = v30;

    v26 = v25 != 0;
    v27 = AXLogSettings();
    v28 = v27;
    if (v25)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18B15E000, v28, OS_LOG_TYPE_DEFAULT, "profileDidChange: Successfully retrieved property list", buf, 2u);
      }

      v28 = +[AXSettings sharedInstance];
      [v28 updateWithManagedAssetsRepresentation:v25];
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [AXSettingsProfileManager handleUserProfileDidChangeToUser:];
    }

    goto LABEL_28;
  }

  v15 = AXLogSettings();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B15E000, v15, OS_LOG_TYPE_DEFAULT, "profileDidChange: Data is nil, saving current settings for this new user", buf, 2u);
  }

  v16 = +[AXSettings sharedInstance];
  managedAssetsRepresentation = [v16 managedAssetsRepresentation];

  v34 = 0;
  v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:managedAssetsRepresentation format:100 options:0 error:&v34];
  v14 = v34;

  if (v13)
  {
    v33 = v14;
    v18 = [MEMORY[0x1E696AC00] fileHandleForWritingToURL:v5 error:&v33];
    v19 = v33;

    v32 = 0;
    v20 = [v18 writeData:v13 error:&v32];
    v21 = v32;

    v31 = 0;
    [v18 closeAndReturnError:&v31];
    v14 = v31;

    v22 = AXLogSettings();
    v23 = v22;
    if (v20)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18B15E000, v23, OS_LOG_TYPE_DEFAULT, "profileDidChange: Successfully created new file for user managed asset representation", buf, 2u);
      }

      goto LABEL_15;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [AXSettingsProfileManager handleUserProfileDidChangeToUser:];
    }

    v26 = 0;
    v25 = managedAssetsRepresentation;
  }

  else
  {
    v25 = AXLogSettings();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [AXSettingsProfileManager handleUserProfileDidChangeToUser:];
    }

    v26 = 0;
    v13 = managedAssetsRepresentation;
  }

LABEL_28:

  return v26;
}

- (BOOL)handleUserProfileWillChangeFromUser:(id)user
{
  userCopy = user;
  v5 = +[AXSettings sharedInstance];
  managedAssetsRepresentation = [v5 managedAssetsRepresentation];

  v7 = [(AXSettingsProfileManager *)self _getAXFileURLForPersona:userCopy];

  v8 = [v7 URLByAppendingPathComponent:@"Accessibility.plist"];

  path = [v8 path];
  [(AXSettingsProfileManager *)self createPreferencesStorageFileIfNeededAtPath:path];

  v20 = 0;
  v10 = [MEMORY[0x1E696AC00] fileHandleForWritingToURL:v8 error:&v20];
  v11 = v20;
  v19 = 0;
  v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:managedAssetsRepresentation format:100 options:0 error:&v19];
  v13 = v19;

  v18 = 0;
  v14 = [v10 writeData:v12 error:&v18];
  v15 = v18;

  if (v14)
  {
    [v10 closeAndReturnError:0];
  }

  else
  {
    v16 = AXLogSettings();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [AXSettingsProfileManager handleUserProfileWillChangeFromUser:];
    }
  }

  return v14;
}

- (BOOL)updateProfileFor:(id)for withProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = [(AXSettingsProfileManager *)self _getAXFileURLForPersona:for];
  v8 = [v7 URLByAppendingPathComponent:@"Accessibility.plist"];

  path = [v8 path];
  [(AXSettingsProfileManager *)self createPreferencesStorageFileIfNeededAtPath:path];

  v20 = 0;
  v10 = [MEMORY[0x1E696AC00] fileHandleForWritingToURL:v8 error:&v20];
  v11 = v20;
  v19 = 0;
  v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:propertiesCopy format:100 options:0 error:&v19];

  v13 = v19;
  v18 = 0;
  v14 = [v10 writeData:v12 error:&v18];
  v15 = v18;

  if (v14)
  {
    [v10 closeAndReturnError:0];
  }

  else
  {
    v16 = AXLogSettings();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [AXSettingsProfileManager updateProfileFor:withProperties:];
    }
  }

  return v14;
}

- (id)_getAXFileURLForPersona:(id)persona
{
  v18 = *MEMORY[0x1E69E9840];
  personaCopy = persona;
  v4 = container_query_create();
  if (v4)
  {
    container_query_set_class();
    container_query_operation_set_flags();
    [personaCopy UTF8String];
    container_query_set_persona_unique_string();
    if (container_query_get_single_result())
    {
      [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:container_get_path() isDirectory:1 relativeToURL:0];
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v5 = v16 = 0;
      AX_PERFORM_WITH_LOCK();
      if ((v14[3] & 1) == 0 && (v6 = container_copy_sandbox_token(), container_query_free(), v6) && (v7 = sandbox_extension_consume(), free(v6), v7 < 0))
      {
        v11 = AXLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = __error();
          [(AXSettingsProfileManager *)v12 _getAXFileURLForPersona:buf, v11];
        }

        sandbox_extension_release();
        v4 = 0;
      }

      else
      {
        v4 = v5;
      }

      _Block_object_dispose(&v13, 8);
    }

    else
    {
      container_query_get_last_error();
      v8 = container_error_copy_unlocalized_description();
      v9 = AXLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AXSettingsProfileManager _getAXFileURLForPersona:];
      }

      free(v8);
      sandbox_extension_release();
      container_query_free();
      v4 = 0;
    }
  }

  else
  {
    sandbox_extension_release();
    container_query_free();
  }

  return v4;
}

uint64_t __52__AXSettingsProfileManager__getAXFileURLForPersona___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) containerURL];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    result = container_query_free();
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v5 setContainerURL:v6];
  }

  return result;
}

- (BOOL)startGuestModeSessionWithData:(id)data
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = *MEMORY[0x1E69E9980];
  dataCopy = data;
  v7 = [v4 stringWithUTF8String:v5];
  [(AXSettingsProfileManager *)self handleUserProfileWillChangeFromUser:v7];

  v8 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:0 error:0];

  v9 = +[AXSettings sharedInstance];
  v10 = [v9 updateWithManagedAssetsRepresentation:v8 forGuest:1];

  if (v10)
  {
    v11 = +[AXSettings sharedInstance];
    [v11 setGuestPassSessionIsActive:1];

    v15 = @"Enabled";
    v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    AnalyticsSendEvent();
  }

  return v10;
}

- (void)endGuestModeSession
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9980]];
  [(AXSettingsProfileManager *)self handleUserProfileDidChangeToUser:v3];

  v4 = +[AXSettings sharedInstance];
  [v4 setGuestPassSessionIsActive:0];
}

- (void)storeGuestPassProfile:(id)profile name:(id)name
{
  nameCopy = name;
  v7 = MEMORY[0x1E696AEC0];
  v8 = *MEMORY[0x1E69E9980];
  profileCopy = profile;
  v10 = [v7 stringWithUTF8String:v8];
  v11 = [(AXSettingsProfileManager *)self _getAXFileURLForPersona:v10];

  v12 = [v11 URLByAppendingPathComponent:AXGuestPassProfilesPathComponent];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v20 = 0;
  [defaultManager createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v20];
  v14 = v20;

  if (v14)
  {
    v15 = AXLogGuestPass();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AXSettingsProfileManager storeGuestPassProfile:v15 name:?];
    }
  }

  nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", nameCopy];
  v17 = [v12 URLByAppendingPathComponent:nameCopy];

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  path = [v17 path];
  [defaultManager2 createFileAtPath:path contents:profileCopy attributes:0];
}

- (void)deleteGuestPassProfile:(id)profile
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = *MEMORY[0x1E69E9980];
  profileCopy = profile;
  v7 = [v4 stringWithUTF8String:v5];
  v8 = [(AXSettingsProfileManager *)self _getAXFileURLForPersona:v7];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [AXGuestPassProfilesPathComponent stringByAppendingString:@"/%@"];
  profileCopy = [v9 stringWithFormat:v10, profileCopy];

  v12 = [v8 URLByAppendingPathComponent:profileCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v16 = 0;
  [defaultManager removeItemAtURL:v12 error:&v16];
  v14 = v16;

  if (v14)
  {
    v15 = AXLogGuestPass();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AXSettingsProfileManager deleteGuestPassProfile:];
    }
  }
}

- (void)deleteAllGuestPassProfiles
{
  v3 = AXLogGuestPass();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_INFO, "Deleting all saved guest pass profiles", buf, 2u);
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9980]];
  v5 = [(AXSettingsProfileManager *)self _getAXFileURLForPersona:v4];

  v6 = [v5 URLByAppendingPathComponent:AXGuestPassProfilesPathComponent];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  [defaultManager removeItemAtURL:v6 error:&v10];
  v8 = v10;

  if (v8)
  {
    v9 = AXLogGuestPass();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AXSettingsProfileManager deleteGuestPassProfile:];
    }
  }
}

- (NSURL)guestPassLocalStorageURL
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9980]];
  v4 = [(AXSettingsProfileManager *)self _getAXFileURLForPersona:v3];

  return v4;
}

- (void)_getAXFileURLForPersona:(os_log_t)log .cold.1(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&dword_18B15E000, log, OS_LOG_TYPE_ERROR, "Error consuming extension for container: %{darwin.errno}d", buf, 8u);
}

@end