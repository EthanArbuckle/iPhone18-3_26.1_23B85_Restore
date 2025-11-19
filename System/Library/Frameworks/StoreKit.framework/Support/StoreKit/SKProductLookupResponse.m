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
  v6 = [NSKeyedArchiver archivedDataWithRootObject:resultDictionary requiringSecureCoding:1 error:&v12];
  v7 = v12;
  [v4 encodeObject:v6 forKey:@"resultDictionary"];
  if (v7)
  {
    if (qword_1003D3BB8 != -1)
    {
      sub_1002C79F4();
    }

    if (os_log_type_enabled(qword_1003D3BB0, OS_LOG_TYPE_ERROR))
    {
      sub_1002C7A1C();
    }
  }

  parameters = self->_parameters;
  v11 = 0;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:parameters requiringSecureCoding:1 error:&v11];
  v10 = v11;
  if (v10)
  {
    if (qword_1003D3BB8 != -1)
    {
      sub_1002C79F4();
    }

    if (os_log_type_enabled(qword_1003D3BB0, OS_LOG_TYPE_ERROR))
    {
      sub_1002C7A84();
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
  v32.receiver = self;
  v32.super_class = SKProductLookupResponse;
  v5 = [(SKProductLookupResponse *)&v32 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resultDictionary"];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v7, v8, v9, v10, v11, v12, objc_opt_class(), 0];
    v31 = 0;
    v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v13 fromData:v6 error:&v31];
    v15 = v31;
    if (v15)
    {
      if (qword_1003D3BB8 != -1)
      {
        sub_1002C79F4();
      }

      if (os_log_type_enabled(qword_1003D3BB0, OS_LOG_TYPE_ERROR))
      {
        sub_1002C7AEC();
      }
    }

    v16 = [v14 copy];
    resultDictionary = v5->_resultDictionary;
    v5->_resultDictionary = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleID"];
    extensionBundleID = v5->_extensionBundleID;
    v5->_extensionBundleID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productURL"];
    productURL = v5->_productURL;
    v5->_productURL = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deepLinkURL"];
    deepLinkURL = v5->_deepLinkURL;
    v5->_deepLinkURL = v22;

    v5->_isEntitled = [v4 decodeBoolForKey:@"isEntitled"];
    v5->_hasPresentationEntitlement = [v4 decodeBoolForKey:@"hasPresentationEntitlement"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameters"];
    v30 = 0;
    v25 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v13 fromData:v24 error:&v30];
    v26 = v30;
    if (v26)
    {
      if (qword_1003D3BB8 != -1)
      {
        sub_1002C79F4();
      }

      if (os_log_type_enabled(qword_1003D3BB0, OS_LOG_TYPE_ERROR))
      {
        sub_1002C7B54();
      }
    }

    v27 = [v25 copy];
    parameters = v5->_parameters;
    v5->_parameters = v27;
  }

  return v5;
}

@end