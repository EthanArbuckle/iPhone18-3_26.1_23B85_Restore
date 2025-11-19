@interface NSURL(LSURLOverrideAdditions)
- (BOOL)conformsToOverridePatternWithKey:()LSURLOverrideAdditions;
- (BOOL)isiWorkURL;
- (__CFString)iWorkDocumentName;
- (id)fmfURL;
- (id)fmipURL;
- (id)iCloudEmailPrefsURL;
- (id)iTunesStoreURL;
- (id)iWorkApplicationName;
- (id)keynoteLiveURL;
- (id)keynoteLiveURL_noFragment;
@end

@implementation NSURL(LSURLOverrideAdditions)

- (BOOL)conformsToOverridePatternWithKey:()LSURLOverrideAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = 0;
  }

  else
  {
    v6 = [a1 absoluteString];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:@"/var/mobile/Library/Caches/com.apple.itunesstored/url-resolution.plist"];
      v8 = v7;
      if (v7 && ([v7 objectForKey:v4], (v9 = objc_claimAutoreleasedReturnValue()) != 0) || (v10 = objc_msgSend(objc_alloc(MEMORY[0x1E695DF20]), "initWithContentsOfFile:", @"/System/Library/CoreServices/iTunesStoreURLPatterns.plist"), (v11 = v10) != 0) && (-[LaunchServices::URLOverrides objectForKey:](v10, "objectForKey:", v4), v9 = objc_claimAutoreleasedReturnValue(), v11, v9))
      {
        v12 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v9 options:1 error:0];
        v5 = [v12 rangeOfFirstMatchInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}] != 0x7FFFFFFFFFFFFFFFLL || v13 != 0;
      }

      else
      {
        v9 = LaunchServices::URLOverrides::getLog(v10);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138477827;
          v18 = v4;
          _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "No URL pattern found for key %{private}@", &v17, 0xCu);
        }

        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isiWorkURL
{
  LaunchServices::URLOverrides::State::State(&v4, a1, 1);
  if (((v5 & 1) != 0 || v6 == 1) && v7 == 1 && LaunchServices::URLOverrides::State::pathHasCaseInsensitivePrefix(&v4, &cfstr_Iw.isa))
  {
    v1 = [v4 fragment];
    v2 = v1 != 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)iWorkApplicationName
{
  if (![a1 isiWorkURL])
  {
    v6 = 0;
    goto LABEL_16;
  }

  v2 = [a1 fragment];
  v3 = [v2 componentsSeparatedByString:@"/"];

  if ([v3 count])
  {
    v4 = [v3 objectAtIndex:0];
    if ([v4 isEqualToString:@"pages"])
    {
      v5 = @"com.apple.Pages";
    }

    else if ([v4 isEqualToString:@"keynote"])
    {
      v5 = @"com.apple.Keynote";
    }

    else
    {
      if (![v4 isEqualToString:@"numbers"])
      {
        goto LABEL_13;
      }

      v5 = @"com.apple.Numbers";
    }

    v7 = +[LSApplicationWorkspace defaultWorkspace];
    v8 = [v7 applicationIsInstalled:v5];

    if (v8)
    {
      v9 = [LSApplicationProxy applicationProxyForIdentifier:v5];
      v10 = [v9 localizedName];
LABEL_14:
      v6 = v10;

      goto LABEL_15;
    }

LABEL_13:
    v9 = [v3 objectAtIndex:0];
    v10 = [v9 capitalizedString];
    goto LABEL_14;
  }

  v6 = 0;
LABEL_15:

LABEL_16:

  return v6;
}

- (__CFString)iWorkDocumentName
{
  if ([a1 isiWorkURL])
  {
    v2 = [a1 fragment];
    v3 = [v2 componentsSeparatedByString:@"/"];

    if ([v3 count] < 3)
    {
      v5 = 0;
    }

    else
    {
      v4 = [v3 objectAtIndex:{objc_msgSend(v3, "count") - 1}];
      v5 = CFURLCreateStringByReplacingPercentEscapes(*MEMORY[0x1E695E480], v4, &stru_1EEF65710);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fmfURL
{
  LaunchServices::URLOverrides::State::State(&v3, a1, 1);
  if (((v4 & 1) != 0 || v5 == 1) && (_os_feature_enabled_impl() & 1) == 0)
  {
    v1 = [_LSURLOverride fmfURL:&v3];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)fmipURL
{
  LaunchServices::URLOverrides::State::State(&v3, a1, 1);
  if (((v4 & 1) != 0 || v5 == 1) && (_os_feature_enabled_impl() & 1) == 0)
  {
    v1 = [_LSURLOverride fmipURL:&v3];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)iTunesStoreURL
{
  LaunchServices::URLOverrides::State::State(&v3, a1, 1);
  if (((v4 & 1) != 0 || v5 == 1) && (_os_feature_enabled_impl() & 1) == 0)
  {
    v1 = [_LSURLOverride iTunesStoreURL:&v3];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)iCloudEmailPrefsURL
{
  LaunchServices::URLOverrides::State::State(v3, a1, 1);
  if (_os_feature_enabled_impl())
  {
    v1 = 0;
  }

  else
  {
    v1 = [_LSURLOverride iCloudEmailPrefsURL:v3];
  }

  return v1;
}

- (id)keynoteLiveURL
{
  LaunchServices::URLOverrides::State::State(v3, a1, 1);
  if (_os_feature_enabled_impl())
  {
    v1 = 0;
  }

  else
  {
    v1 = [_LSURLOverride keynoteLiveURL:v3];
  }

  return v1;
}

- (id)keynoteLiveURL_noFragment
{
  LaunchServices::URLOverrides::State::State(v3, a1, 1);
  if (_os_feature_enabled_impl())
  {
    v1 = 0;
  }

  else
  {
    v1 = [_LSURLOverride keynoteLiveURL_noFragment:v3];
  }

  return v1;
}

@end