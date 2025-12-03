@interface SKProductLookupResponse
- (SKProductLookupResponse)initWithCoder:(id)coder;
- (SKProductLookupResponse)initWithResult:(id)result extensionID:(id)d productURL:(id)l isEntitled:(BOOL)entitled parameters:(id)parameters deepLinkURL:(id)rL hasPresentationEntitlement:(BOOL)entitlement;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKProductLookupResponse

- (SKProductLookupResponse)initWithResult:(id)result extensionID:(id)d productURL:(id)l isEntitled:(BOOL)entitled parameters:(id)parameters deepLinkURL:(id)rL hasPresentationEntitlement:(BOOL)entitlement
{
  resultCopy = result;
  dCopy = d;
  lCopy = l;
  parametersCopy = parameters;
  rLCopy = rL;
  v24.receiver = self;
  v24.super_class = SKProductLookupResponse;
  v19 = [(SKProductLookupResponse *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_resultDictionary, result);
    objc_storeStrong(&v20->_extensionBundleID, d);
    objc_storeStrong(&v20->_productURL, l);
    v20->_isEntitled = entitled;
    objc_storeStrong(&v20->_parameters, parameters);
    objc_storeStrong(&v20->_deepLinkURL, rL);
    v20->_hasPresentationEntitlement = entitlement;
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  resultDictionary = self->_resultDictionary;
  v12 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:resultDictionary requiringSecureCoding:1 error:&v12];
  v7 = v12;
  [coderCopy encodeObject:v6 forKey:@"resultDictionary"];
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

  [coderCopy encodeObject:v9 forKey:@"parameters"];
  [coderCopy encodeObject:self->_extensionBundleID forKey:@"extensionBundleID"];
  [coderCopy encodeObject:self->_productURL forKey:@"productURL"];
  [coderCopy encodeObject:self->_deepLinkURL forKey:@"deepLinkURL"];
  [coderCopy encodeBool:self->_isEntitled forKey:@"isEntitled"];
  [coderCopy encodeBool:self->_hasPresentationEntitlement forKey:@"hasPresentationEntitlement"];
}

- (SKProductLookupResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = SKProductLookupResponse;
  v5 = [(SKProductLookupResponse *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resultDictionary"];
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

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleID"];
    extensionBundleID = v5->_extensionBundleID;
    v5->_extensionBundleID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productURL"];
    productURL = v5->_productURL;
    v5->_productURL = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deepLinkURL"];
    deepLinkURL = v5->_deepLinkURL;
    v5->_deepLinkURL = v22;

    v5->_isEntitled = [coderCopy decodeBoolForKey:@"isEntitled"];
    v5->_hasPresentationEntitlement = [coderCopy decodeBoolForKey:@"hasPresentationEntitlement"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameters"];
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