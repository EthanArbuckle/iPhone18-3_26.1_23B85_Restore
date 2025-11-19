@interface NSURLProtectionSpace(SafariServicesExtras)
- (BOOL)_sf_canAuthenticate;
- (id)_sf_highLevelDomainAndPort;
- (id)_sf_identities;
- (void)_sf_canAuthenticate;
@end

@implementation NSURLProtectionSpace(SafariServicesExtras)

- (id)_sf_highLevelDomainAndPort
{
  v2 = [a1 host];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [v2 safari_highLevelDomainFromHost];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  v7 = [v3 stringWithFormat:@"%@:%ld", v6, objc_msgSend(a1, "port")];

  return v7;
}

- (id)_sf_identities
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = 0;
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v2 setValue:*MEMORY[0x1E697B010] forKey:*MEMORY[0x1E697AFF8]];
    [v2 setValue:*MEMORY[0x1E697B268] forKey:*MEMORY[0x1E697B260]];
    [v2 setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697B328]];
    [v2 setValue:@"com.apple.identities" forKey:*MEMORY[0x1E697ABD0]];
    if (SecItemCopyMatching(v2, &result))
    {
      v3 = 0;
    }

    else
    {
      v4 = result;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [a1 distinguishedNames];
        v6 = WBS_LOG_CHANNEL_PREFIXClientAuthentication();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v6;
          v8 = [v4 count];
          v9 = [v5 count];
          *buf = 134218240;
          *&buf[4] = v8;
          *&buf[12] = 2048;
          *&buf[14] = v9;
          _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_DEFAULT, "Unfiltered identities count: %lu, distinguished names count: %lu", buf, 0x16u);
        }

        if (v5)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v29 = 0;
          Current = CFAbsoluteTimeGetCurrent();
          v16 = MEMORY[0x1E69E9820];
          v17 = 3221225472;
          v18 = __60__NSURLProtectionSpace_SafariServicesExtras___sf_identities__block_invoke;
          v19 = &unk_1E8496438;
          v22 = Current;
          v20 = v5;
          v21 = buf;
          v11 = [v4 safari_filterObjectsUsingBlock:&v16];
          v12 = WBS_LOG_CHANNEL_PREFIXClientAuthentication();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v11 count];
            v14 = *(*&buf[8] + 24);
            *v24 = 134218240;
            v25 = v13;
            v26 = 2048;
            v27 = v14;
            _os_log_impl(&dword_1D4644000, v12, OS_LOG_TYPE_DEFAULT, "Filtered identities count: %lu, expired count: %lu", v24, 0x16u);
          }

          if ([v11 count])
          {
            v3 = v11;
          }

          else
          {
            v3 = 0;
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v3 = v4;
        }
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_sf_canAuthenticate
{
  v2 = [a1 authenticationMethod];
  if ([v2 isEqualToString:*MEMORY[0x1E695AB48]] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", *MEMORY[0x1E695AB58]) & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", *MEMORY[0x1E695AB60]) & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", *MEMORY[0x1E695AB50]) & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", *MEMORY[0x1E695AB68]))
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:*MEMORY[0x1E695AB40]])
  {
    v5 = [a1 _sf_identities];
    v3 = [v5 count] != 0;
  }

  else
  {
    if (([v2 isEqualToString:*MEMORY[0x1E695AB78]] & 1) == 0)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(NSURLProtectionSpace(SafariServicesExtras) *)v2 _sf_canAuthenticate];
      }
    }

    v3 = 0;
  }

  return v3;
}

- (void)_sf_canAuthenticate
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "Tried to authenticate with unsupported authentication method: %@", &v2, 0xCu);
}

@end