@interface ATXAnchorModelLinkActionDetails
+ (id)encodedStringForLinkAction:(id)a3;
+ (id)linkActionFromEncodedString:(id)a3;
- (ATXAnchorModelLinkActionDetails)initWithBundleID:(id)a3 actionId:(id)a4 linkAction:(id)a5;
- (ATXAnchorModelLinkActionDetails)initWithBundleID:(id)a3 actionId:(id)a4 linkActionEncodedString:(id)a5;
@end

@implementation ATXAnchorModelLinkActionDetails

- (ATXAnchorModelLinkActionDetails)initWithBundleID:(id)a3 actionId:(id)a4 linkAction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = ATXAnchorModelLinkActionDetails;
  v11 = [(ATXAnchorModelLinkActionDetails *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    bundleId = v11->_bundleId;
    v11->_bundleId = v12;

    v14 = [v9 copy];
    actionId = v11->_actionId;
    v11->_actionId = v14;

    v16 = [v10 copy];
    linkAction = v11->_linkAction;
    v11->_linkAction = v16;
  }

  return v11;
}

- (ATXAnchorModelLinkActionDetails)initWithBundleID:(id)a3 actionId:(id)a4 linkActionEncodedString:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() linkActionFromEncodedString:v8];

  v12 = [(ATXAnchorModelLinkActionDetails *)self initWithBundleID:v10 actionId:v9 linkAction:v11];
  return v12;
}

+ (id)encodedStringForLinkAction:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v11 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v11];
  v6 = v11;
  v7 = v5;
  objc_autoreleasePoolPop(v4);

  if (v6)
  {
    v8 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[ATXAnchorModelLinkActionDetails encodedStringForLinkAction:];
    }

    v9 = 0;
  }

  else
  {
    v9 = [v7 base64EncodedStringWithOptions:0];
  }

  return v9;
}

+ (id)linkActionFromEncodedString:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v3 options:0];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v11 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v11];
    v7 = v11;
    objc_autoreleasePoolPop(v5);
    if (v7)
    {
      v8 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[ATXAnchorModelLinkActionDetails linkActionFromEncodedString:];
      }

      v9 = 0;
    }

    else
    {
      v9 = v6;
    }
  }

  else
  {
    v7 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[ATXAnchorModelLinkActionDetails linkActionFromEncodedString:];
    }

    v9 = 0;
  }

  return v9;
}

+ (void)encodedStringForLinkAction:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Unable to serialize Link action: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)linkActionFromEncodedString:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Unable to decode data from encoded Link action encoded string: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end