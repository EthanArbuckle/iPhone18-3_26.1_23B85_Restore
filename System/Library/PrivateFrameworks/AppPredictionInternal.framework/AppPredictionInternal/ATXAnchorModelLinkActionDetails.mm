@interface ATXAnchorModelLinkActionDetails
+ (id)encodedStringForLinkAction:(id)action;
+ (id)linkActionFromEncodedString:(id)string;
- (ATXAnchorModelLinkActionDetails)initWithBundleID:(id)d actionId:(id)id linkAction:(id)action;
- (ATXAnchorModelLinkActionDetails)initWithBundleID:(id)d actionId:(id)id linkActionEncodedString:(id)string;
@end

@implementation ATXAnchorModelLinkActionDetails

- (ATXAnchorModelLinkActionDetails)initWithBundleID:(id)d actionId:(id)id linkAction:(id)action
{
  dCopy = d;
  idCopy = id;
  actionCopy = action;
  v19.receiver = self;
  v19.super_class = ATXAnchorModelLinkActionDetails;
  v11 = [(ATXAnchorModelLinkActionDetails *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    bundleId = v11->_bundleId;
    v11->_bundleId = v12;

    v14 = [idCopy copy];
    actionId = v11->_actionId;
    v11->_actionId = v14;

    v16 = [actionCopy copy];
    linkAction = v11->_linkAction;
    v11->_linkAction = v16;
  }

  return v11;
}

- (ATXAnchorModelLinkActionDetails)initWithBundleID:(id)d actionId:(id)id linkActionEncodedString:(id)string
{
  stringCopy = string;
  idCopy = id;
  dCopy = d;
  v11 = [objc_opt_class() linkActionFromEncodedString:stringCopy];

  v12 = [(ATXAnchorModelLinkActionDetails *)self initWithBundleID:dCopy actionId:idCopy linkAction:v11];
  return v12;
}

+ (id)encodedStringForLinkAction:(id)action
{
  actionCopy = action;
  v4 = objc_autoreleasePoolPush();
  v11 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:actionCopy requiringSecureCoding:1 error:&v11];
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

+ (id)linkActionFromEncodedString:(id)string
{
  stringCopy = string;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:stringCopy options:0];
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