@interface NEFilterBlockPage
- (NEFilterBlockPage)init;
- (id)page;
@end

@implementation NEFilterBlockPage

- (NEFilterBlockPage)init
{
  v11.receiver = self;
  v11.super_class = NEFilterBlockPage;
  v2 = [(NEFilterBlockPage *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    formActionURL = v2->_formActionURL;
    v2->_formActionURL = &stru_1F3880810;

    remediationButtonText = v2->_remediationButtonText;
    v2->_remediationButtonText = @"Request Access";

    v6 = [v3 URLForResource:@"blockpage" withExtension:@"html"];
    pageTemplateURL = v2->_pageTemplateURL;
    v2->_pageTemplateURL = v6;

    unblockStyle = v2->_unblockStyle;
    v2->_unblockStyle = &stru_1F3880810;

    organization = v2->_organization;
    v2->_organization = &stru_1F3880810;
  }

  return v2;
}

- (id)page
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      v18 = 0;
      v3 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v2 encoding:4 error:&v18];
      v4 = v18;
      v5 = v4;
      if (v3)
      {

        v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v7 = [v6 URLForResource:@"blockpage_style" withExtension:@"css"];
        if (v7)
        {
          *buf = 0;
          v8 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v7 encoding:4 error:buf];
        }

        else
        {
          v8 = 0;
        }

        v11 = [v3 stringByReplacingOccurrencesOfString:@"UNBLOCK_URL_NO_LOC" withString:a1[4]];
        v12 = [v11 stringByReplacingOccurrencesOfString:@"UNBLOCK_BUTTON_TEXT_NO_LOC" withString:a1[6]];

        v13 = [v12 stringByReplacingOccurrencesOfString:@"UNBLOCK_STYLE_NO_LOC" withString:a1[5]];

        v10 = [v13 stringByReplacingOccurrencesOfString:@"PROVIDER_ORGANIZATION_NO_LOC" withString:a1[1]];

        if (a1[3])
        {
          v14 = [v10 stringByReplacingOccurrencesOfString:@"USER_VISIBLE_RESTRICTED_URL_NO_LOC" withString:?];

          v10 = v14;
        }

        if (v8)
        {
          v15 = [v10 stringByReplacingOccurrencesOfString:@"INCLUDE_CSS_FILE_NO_LOC" withString:v8];

          v10 = v15;
        }

        goto LABEL_16;
      }

      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v5;
        _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_INFO, "Error loading block page: %@", buf, 0xCu);
      }
    }

    v3 = 0;
    v10 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v10 = 0;
LABEL_17:
  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

@end