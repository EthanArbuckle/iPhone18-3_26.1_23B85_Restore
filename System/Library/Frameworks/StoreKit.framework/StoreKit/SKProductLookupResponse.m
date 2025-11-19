@interface SKProductLookupResponse
- (SKProductLookupResponse)initWithCoder:(id)a3;
- (SKProductLookupResponse)initWithResult:(id)a3 extensionID:(id)a4 productURL:(id)a5 isEntitled:(BOOL)a6 parameters:(id)a7 deepLinkURL:(id)a8 hasPresentationEntitlement:(BOOL)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKProductLookupResponse

- (SKProductLookupResponse)initWithResult:(id)a3 extensionID:(id)a4 productURL:(id)a5 isEntitled:(BOOL)a6 parameters:(id)a7 deepLinkURL:(id)a8 hasPresentationEntitlement:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v23 = a7;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = SKProductLookupResponse;
  v19 = [(SKProductLookupResponse *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_resultDictionary, a3);
    objc_storeStrong(&v20->_extensionBundleID, a4);
    objc_storeStrong(&v20->_productURL, a5);
    v20->_isEntitled = a6;
    objc_storeStrong(&v20->_parameters, a7);
    objc_storeStrong(&v20->_deepLinkURL, a8);
    v20->_hasPresentationEntitlement = a9;
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  resultDictionary = self->_resultDictionary;
  v12 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:resultDictionary requiringSecureCoding:1 error:&v12];
  v7 = v12;
  [v4 encodeObject:v6 forKey:@"resultDictionary"];
  if (v7)
  {
    if (SKLogHandleForCategory_onceToken_1 != -1)
    {
      [SKProductLookupResponse encodeWithCoder:];
    }

    if (os_log_type_enabled(SKLogHandleForCategory_logHandles_9_1, OS_LOG_TYPE_ERROR))
    {
      [SKProductLookupResponse encodeWithCoder:];
    }
  }

  parameters = self->_parameters;
  v11 = 0;
  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:parameters requiringSecureCoding:1 error:&v11];
  v10 = v11;
  if (v10)
  {
    if (SKLogHandleForCategory_onceToken_1 != -1)
    {
      [SKProductLookupResponse encodeWithCoder:];
    }

    if (os_log_type_enabled(SKLogHandleForCategory_logHandles_9_1, OS_LOG_TYPE_ERROR))
    {
      [SKProductLookupResponse encodeWithCoder:];
    }
  }

  [v4 encodeObject:v9 forKey:@"parameters"];
  [v4 encodeObject:self->_extensionBundleID forKey:@"extensionBundleID"];
  [v4 encodeObject:self->_productURL forKey:@"productURL"];
  [v4 encodeObject:self->_deepLinkURL forKey:@"deepLinkURL"];
  [v4 encodeBool:self->_isEntitled forKey:@"isEntitled"];
  [v4 encodeBool:self->_hasPresentationEntitlement forKey:@"hasPresentationEntitlement"];
}

- (SKProductLookupResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = SKProductLookupResponse;
  v5 = [(SKProductLookupResponse *)&v33 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resultDictionary"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v7 setWithObjects:{v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v32 = 0;
    v15 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v14 fromData:v6 error:&v32];
    v16 = v32;
    if (v16)
    {
      if (SKLogHandleForCategory_onceToken_1 != -1)
      {
        [SKProductLookupResponse encodeWithCoder:];
      }

      if (os_log_type_enabled(SKLogHandleForCategory_logHandles_9_1, OS_LOG_TYPE_ERROR))
      {
        [SKProductLookupResponse initWithCoder:];
      }
    }

    v17 = [v15 copy];
    resultDictionary = v5->_resultDictionary;
    v5->_resultDictionary = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleID"];
    extensionBundleID = v5->_extensionBundleID;
    v5->_extensionBundleID = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productURL"];
    productURL = v5->_productURL;
    v5->_productURL = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deepLinkURL"];
    deepLinkURL = v5->_deepLinkURL;
    v5->_deepLinkURL = v23;

    v5->_isEntitled = [v4 decodeBoolForKey:@"isEntitled"];
    v5->_hasPresentationEntitlement = [v4 decodeBoolForKey:@"hasPresentationEntitlement"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameters"];
    v31 = 0;
    v26 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v14 fromData:v25 error:&v31];
    v27 = v31;
    if (v27)
    {
      if (SKLogHandleForCategory_onceToken_1 != -1)
      {
        [SKProductLookupResponse encodeWithCoder:];
      }

      if (os_log_type_enabled(SKLogHandleForCategory_logHandles_9_1, OS_LOG_TYPE_ERROR))
      {
        [SKProductLookupResponse initWithCoder:];
      }
    }

    v28 = [v26 copy];
    parameters = v5->_parameters;
    v5->_parameters = v28;
  }

  return v5;
}

@end