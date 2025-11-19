@interface NSURL(ATX)
- (id)schemelessAbsoluteString;
- (uint64_t)atx_isOpenableFaceTimeURL;
- (void)atx_isOpenableFaceTimeURL;
@end

@implementation NSURL(ATX)

- (uint64_t)atx_isOpenableFaceTimeURL
{
  v1 = [a1 host];
  v2 = [v1 isEqualToString:@"facetime.apple.com"];

  if (v2)
  {
    v10 = 0;
    v3 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.facetime" allowPlaceholder:1 error:&v10];
    v4 = v10;
    if (v3)
    {
      v5 = [v3 applicationState];
      if (-[NSObject isInstalled](v5, "isInstalled") && (-[NSObject isRestricted](v5, "isRestricted") & 1) == 0 && ([MEMORY[0x277D42590] isFaceTimeSupported] & 1) != 0)
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
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
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
  v1 = [a1 resourceSpecifier];
  if ([v1 hasPrefix:@"//"])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"//", "length")}];

    v1 = v2;
  }

  return v1;
}

- (void)atx_isOpenableFaceTimeURL
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "isOpenableFaceTimeURL: could not obtain record: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end