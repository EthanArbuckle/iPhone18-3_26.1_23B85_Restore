@interface NSURL(ATX)
- (id)schemelessAbsoluteString;
- (uint64_t)atx_isOpenableFaceTimeURL;
- (void)atx_isOpenableFaceTimeURL;
@end

@implementation NSURL(ATX)

- (uint64_t)atx_isOpenableFaceTimeURL
{
  host = [self host];
  v2 = [host isEqualToString:@"facetime.apple.com"];

  if (v2)
  {
    v10 = 0;
    v3 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.facetime" allowPlaceholder:1 error:&v10];
    v4 = v10;
    if (v3)
    {
      applicationState = [v3 applicationState];
      if (-[NSObject isInstalled](applicationState, "isInstalled") && (-[NSObject isRestricted](applicationState, "isRestricted") & 1) == 0 && ([MEMORY[0x277D42590] isFaceTimeSupported] & 1) != 0)
      {
        v6 = 1;
LABEL_14:

        return v6;
      }

      v7 = __atxlog_handle_default();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_226368000, v7, OS_LOG_TYPE_DEFAULT, "isOpenableFaceTimeURL: not allowed", v9, 2u);
      }
    }

    else
    {
      applicationState = __atxlog_handle_default();
      if (os_log_type_enabled(applicationState, OS_LOG_TYPE_ERROR))
      {
        [(NSURL(ATX) *)v4 atx_isOpenableFaceTimeURL];
      }
    }

    v6 = 0;
    goto LABEL_14;
  }

  return 0;
}

- (id)schemelessAbsoluteString
{
  resourceSpecifier = [self resourceSpecifier];
  if ([resourceSpecifier hasPrefix:@"//"])
  {
    v2 = [resourceSpecifier substringFromIndex:{objc_msgSend(@"//", "length")}];

    resourceSpecifier = v2;
  }

  return resourceSpecifier;
}

- (void)atx_isOpenableFaceTimeURL
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "isOpenableFaceTimeURL: could not obtain record: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end