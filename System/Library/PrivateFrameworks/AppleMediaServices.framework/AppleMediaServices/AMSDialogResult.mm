@interface AMSDialogResult
- (AMSDialogResult)initWithCoder:(id)a3;
- (AMSDialogResult)initWithOriginalRequest:(id)a3 selectedActionIdentifier:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSDialogResult

- (AMSDialogResult)initWithOriginalRequest:(id)a3 selectedActionIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = AMSDialogResult;
  v9 = [(AMSDialogResult *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalRequest, a3);
    if (v8)
    {
      v11 = v8;
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
  v5 = [(AMSDialogResult *)self selectedActionIdentifier];
  v6 = [v3 stringWithFormat:@"<%@:%p selected:%@>", v4, self, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = [(AMSDialogResult *)self originalRequest];

  if (v4)
  {
    v5 = [(AMSDialogResult *)self originalRequest];
    [v13 encodeObject:v5 forKey:@"kCodingKeyOriginalRequest"];
  }

  v6 = [(AMSDialogResult *)self selectedActionIdentifier];

  if (v6)
  {
    v7 = [(AMSDialogResult *)self selectedActionIdentifier];
    [v13 encodeObject:v7 forKey:@"kCodingKeySelectionActionId"];
  }

  v8 = [(AMSDialogResult *)self textfieldValues];

  if (v8)
  {
    v9 = [(AMSDialogResult *)self textfieldValues];
    [v13 encodeObject:v9 forKey:@"kCodingKeyTextfieldValues"];
  }

  v10 = [(AMSDialogResult *)self userInfo];

  v11 = v13;
  if (v10)
  {
    v12 = [(AMSDialogResult *)self userInfo];
    [v13 encodeObject:v12 forKey:@"kCodingKeyUserInfo"];

    v11 = v13;
  }
}

- (AMSDialogResult)initWithCoder:(id)a3
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = AMSDialogResult;
  v5 = [(AMSDialogResult *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyOriginalRequest"];
    originalRequest = v5->_originalRequest;
    v5->_originalRequest = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeySelectionActionId"];
    selectedActionIdentifier = v5->_selectedActionIdentifier;
    v5->_selectedActionIdentifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
    v12 = [v10 setWithArray:v11];

    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"kCodingKeyTextfieldValues"];
    textfieldValues = v5->_textfieldValues;
    v5->_textfieldValues = v13;

    v15 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"kCodingKeyUserInfo"];
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