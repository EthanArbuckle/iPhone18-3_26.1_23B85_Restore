@interface AMSDialogResult
- (AMSDialogResult)initWithCoder:(id)coder;
- (AMSDialogResult)initWithOriginalRequest:(id)request selectedActionIdentifier:(id)identifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSDialogResult

- (AMSDialogResult)initWithOriginalRequest:(id)request selectedActionIdentifier:(id)identifier
{
  requestCopy = request;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = AMSDialogResult;
  v9 = [(AMSDialogResult *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalRequest, request);
    if (identifierCopy)
    {
      v11 = identifierCopy;
    }

    else
    {
      v11 = @"AMSDialogResultDismissIdentifier";
    }

    objc_storeStrong(&v10->_selectedActionIdentifier, v11);
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    userInfo = v10->_userInfo;
    v10->_userInfo = v12;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  selectedActionIdentifier = [(AMSDialogResult *)self selectedActionIdentifier];
  v6 = [v3 stringWithFormat:@"<%@:%p selected:%@>", v4, self, selectedActionIdentifier];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  originalRequest = [(AMSDialogResult *)self originalRequest];

  if (originalRequest)
  {
    originalRequest2 = [(AMSDialogResult *)self originalRequest];
    [coderCopy encodeObject:originalRequest2 forKey:@"kCodingKeyOriginalRequest"];
  }

  selectedActionIdentifier = [(AMSDialogResult *)self selectedActionIdentifier];

  if (selectedActionIdentifier)
  {
    selectedActionIdentifier2 = [(AMSDialogResult *)self selectedActionIdentifier];
    [coderCopy encodeObject:selectedActionIdentifier2 forKey:@"kCodingKeySelectionActionId"];
  }

  textfieldValues = [(AMSDialogResult *)self textfieldValues];

  if (textfieldValues)
  {
    textfieldValues2 = [(AMSDialogResult *)self textfieldValues];
    [coderCopy encodeObject:textfieldValues2 forKey:@"kCodingKeyTextfieldValues"];
  }

  userInfo = [(AMSDialogResult *)self userInfo];

  v11 = coderCopy;
  if (userInfo)
  {
    userInfo2 = [(AMSDialogResult *)self userInfo];
    [coderCopy encodeObject:userInfo2 forKey:@"kCodingKeyUserInfo"];

    v11 = coderCopy;
  }
}

- (AMSDialogResult)initWithCoder:(id)coder
{
  v23[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = AMSDialogResult;
  v5 = [(AMSDialogResult *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyOriginalRequest"];
    originalRequest = v5->_originalRequest;
    v5->_originalRequest = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeySelectionActionId"];
    selectedActionIdentifier = v5->_selectedActionIdentifier;
    v5->_selectedActionIdentifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
    v12 = [v10 setWithArray:v11];

    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"kCodingKeyTextfieldValues"];
    textfieldValues = v5->_textfieldValues;
    v5->_textfieldValues = v13;

    ams_JSONClasses = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v16 = [coderCopy decodeObjectOfClasses:ams_JSONClasses forKey:@"kCodingKeyUserInfo"];
    v17 = [v16 mutableCopy];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    userInfo = v5->_userInfo;
    v5->_userInfo = v19;
  }

  return v5;
}

@end