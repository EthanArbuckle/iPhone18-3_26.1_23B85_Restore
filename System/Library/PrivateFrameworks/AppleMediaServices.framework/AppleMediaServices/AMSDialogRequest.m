@interface AMSDialogRequest
+ (AMSDialogRequest)requestWithTitle:(id)a3 message:(id)a4;
- (AMSDialogRequest)init;
- (AMSDialogRequest)initWithCoder:(id)a3;
- (AMSDialogRequest)initWithError:(id)a3;
- (AMSDialogRequest)initWithTitle:(id)a3 message:(id)a4;
- (AMSDialogRequest)initWithTitle:(id)a3 message:(id)a4 appearanceInfo:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)locateActionWithIdentifier:(id)a3;
- (void)addButtonAction:(id)a3;
- (void)addTextField:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)replaceAction:(id)a3;
@end

@implementation AMSDialogRequest

- (AMSDialogRequest)init
{
  v6.receiver = self;
  v6.super_class = AMSDialogRequest;
  v2 = [(AMSDialogRequest *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    userInfo = v2->_userInfo;
    v2->_userInfo = v3;
  }

  return v2;
}

- (AMSDialogRequest)initWithError:(id)a3
{
  v4 = a3;
  v5 = [v4 ams_title];
  v6 = [v4 ams_message];

  v7 = [(AMSDialogRequest *)self initWithTitle:v5 message:v6];
  return v7;
}

- (AMSDialogRequest)initWithTitle:(id)a3 message:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(AMSDialogRequest *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    v11 = AMSSetLogKeyIfNeeded();
    logKey = v10->_logKey;
    v10->_logKey = v11;

    objc_storeStrong(&v10->_message, a4);
  }

  return v10;
}

+ (AMSDialogRequest)requestWithTitle:(id)a3 message:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithTitle:v6 message:v5];

  return v7;
}

- (AMSDialogRequest)initWithTitle:(id)a3 message:(id)a4 appearanceInfo:(id)a5
{
  v9 = a5;
  v10 = [(AMSDialogRequest *)self initWithTitle:a3 message:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_appearanceInfo, a5);
  }

  return v11;
}

- (id)description
{
  if (os_variant_has_internal_content())
  {
    v3 = [(AMSDialogRequest *)self title];
  }

  else
  {
    v3 = @"<private>";
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = [(AMSDialogRequest *)self identifier];
  v6 = [(AMSDialogRequest *)self defaultAction];
  v7 = [(AMSDialogRequest *)self buttonActions];
  v8 = [v4 stringWithFormat:@"{ id: %@, title: %@, default: %@, actions: %@ }", v5, v3, v6, v7];

  return v8;
}

- (void)addButtonAction:(id)a3
{
  v4 = a3;
  v5 = [(AMSDialogRequest *)self buttonActions];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v9 = v8;

  [v9 addObject:v4];
  [(AMSDialogRequest *)self setButtonActions:v9];
}

- (void)addTextField:(id)a3
{
  v4 = a3;
  v5 = [(AMSDialogRequest *)self textFields];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v9 = v8;

  [v9 addObject:v4];
  [(AMSDialogRequest *)self setTextFields:v9];
}

- (id)locateActionWithIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(AMSDialogRequest *)self defaultAction];
    v6 = [v5 identifier];
    v7 = [v6 isEqualToString:v4];

    if (v7)
    {
      v8 = [(AMSDialogRequest *)self defaultAction];
      goto LABEL_15;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [(AMSDialogRequest *)self buttonActions];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [v14 identifier];
          v16 = [v15 isEqualToString:v4];

          if (v16)
          {
            v8 = v14;

            goto LABEL_15;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (void)replaceAction:(id)a3
{
  v19 = a3;
  v4 = [v19 identifier];
  if (v4)
  {
    v5 = [(AMSDialogRequest *)self defaultAction];
    v6 = [v5 identifier];
    v7 = [v6 isEqualToString:v4];

    if (v7)
    {
      [(AMSDialogRequest *)self setDefaultAction:v19];
    }

    v8 = [(AMSDialogRequest *)self buttonActions];
    v9 = [v8 count];

    if (v9)
    {
      v10 = 0;
      while (1)
      {
        v11 = [(AMSDialogRequest *)self buttonActions];
        v12 = [v11 objectAtIndexedSubscript:v10];

        v13 = [v12 identifier];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          break;
        }

        ++v10;
        v15 = [(AMSDialogRequest *)self buttonActions];
        v16 = [v15 count];

        if (v10 >= v16)
        {
          goto LABEL_10;
        }
      }

      v17 = [(AMSDialogRequest *)self buttonActions];
      v18 = [v17 mutableCopy];

      [v18 setObject:v19 atIndexedSubscript:v10];
      [(AMSDialogRequest *)self setButtonActions:v18];
    }
  }

LABEL_10:
}

- (void)encodeWithCoder:(id)a3
{
  v36 = a3;
  v4 = [(AMSDialogRequest *)self appearanceInfo];

  if (v4)
  {
    v5 = [(AMSDialogRequest *)self appearanceInfo];
    [v36 encodeObject:v5 forKey:@"kCodingKeyAppearanceInfo"];
  }

  v6 = [(AMSDialogRequest *)self buttonActions];

  if (v6)
  {
    v7 = [(AMSDialogRequest *)self buttonActions];
    [v36 encodeObject:v7 forKey:@"kCodingKeyButtonActions"];
  }

  v8 = [(AMSDialogRequest *)self clickstreamMetricsEvent];

  if (v8)
  {
    v9 = [(AMSDialogRequest *)self clickstreamMetricsEvent];
    [v36 encodeObject:v9 forKey:@"kCodingKeyClickstreamMetricsEvent"];
  }

  v10 = [(AMSDialogRequest *)self defaultAction];

  if (v10)
  {
    v11 = [(AMSDialogRequest *)self defaultAction];
    [v36 encodeObject:v11 forKey:@"kCodingKeyDefaultAction"];
  }

  v12 = [(AMSDialogRequest *)self iconURL];

  if (v12)
  {
    v13 = [(AMSDialogRequest *)self iconURL];
    [v36 encodeObject:v13 forKey:@"kCodingKeyIconURL"];
  }

  v14 = [(AMSDialogRequest *)self identifier];

  if (v14)
  {
    v15 = [(AMSDialogRequest *)self identifier];
    [v36 encodeObject:v15 forKey:@"kCodingKeyIdentifier"];
  }

  v16 = [(AMSDialogRequest *)self logKey];

  if (v16)
  {
    v17 = [(AMSDialogRequest *)self logKey];
    [v36 encodeObject:v17 forKey:@"kCodingKeyLogKey"];
  }

  v18 = [(AMSDialogRequest *)self message];

  if (v18)
  {
    v19 = [(AMSDialogRequest *)self message];
    [v36 encodeObject:v19 forKey:@"kCodingKeyMessage"];
  }

  v20 = [(AMSDialogRequest *)self messageAccessibilityLabel];

  if (v20)
  {
    v21 = [(AMSDialogRequest *)self messageAccessibilityLabel];
    [v36 encodeObject:v21 forKey:@"kCodingKeyMessageAccessibilityLabel"];
  }

  v22 = [(AMSDialogRequest *)self metricsEvent];

  if (v22)
  {
    v23 = [(AMSDialogRequest *)self metricsEvent];
    v24 = [v23 underlyingDictionary];
    [v36 encodeObject:v24 forKey:@"kCodingKeyMetrics"];
  }

  [v36 encodeInteger:-[AMSDialogRequest style](self forKey:{"style"), @"kCodingKeyStyle"}];
  v25 = [(AMSDialogRequest *)self preferredButtonActionIdentifier];

  if (v25)
  {
    v26 = [(AMSDialogRequest *)self preferredButtonActionIdentifier];
    [v36 encodeObject:v26 forKey:@"preferredButtonActionIdentifier"];
  }

  [v36 encodeBool:-[AMSDialogRequest preventsCancelButtonStyle](self forKey:{"preventsCancelButtonStyle"), @"kPreventsCancelButtonStyle"}];
  v27 = [(AMSDialogRequest *)self textFields];

  if (v27)
  {
    v28 = [(AMSDialogRequest *)self textFields];
    [v36 encodeObject:v28 forKey:@"kCodingKeyTextFields"];
  }

  v29 = [(AMSDialogRequest *)self title];

  if (v29)
  {
    v30 = [(AMSDialogRequest *)self title];
    [v36 encodeObject:v30 forKey:@"kCodingKeyTitle"];
  }

  v31 = [(AMSDialogRequest *)self titleAccessibilityLabel];

  if (v31)
  {
    v32 = [(AMSDialogRequest *)self titleAccessibilityLabel];
    [v36 encodeObject:v32 forKey:@"kCodingKeyTitleAccessibilityLabel"];
  }

  v33 = [(AMSDialogRequest *)self userInfo];

  v34 = v36;
  if (v33)
  {
    v35 = [(AMSDialogRequest *)self userInfo];
    [v36 encodeObject:v35 forKey:@"kCodingKeyUserInfo"];

    v34 = v36;
  }
}

- (AMSDialogRequest)initWithCoder:(id)a3
{
  v54[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v52.receiver = self;
  v52.super_class = AMSDialogRequest;
  v5 = [(AMSDialogRequest *)&v52 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"kCodingKeyAppearanceInfo"];
    appearanceInfo = v5->_appearanceInfo;
    v5->_appearanceInfo = v7;

    v9 = MEMORY[0x1E695DFD8];
    v54[0] = objc_opt_class();
    v54[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"kCodingKeyButtonActions"];
    buttonActions = v5->_buttonActions;
    v5->_buttonActions = v12;

    v14 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"kCodingKeyClickstreamMetricsEvent"];
    clickstreamMetricsEvent = v5->_clickstreamMetricsEvent;
    v5->_clickstreamMetricsEvent = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyDefaultAction"];
    defaultAction = v5->_defaultAction;
    v5->_defaultAction = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIconURL"];
    iconURL = v5->_iconURL;
    v5->_iconURL = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyLogKey"];
    logKey = v5->_logKey;
    v5->_logKey = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyMessage"];
    message = v5->_message;
    v5->_message = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyMessageAccessibilityLabel"];
    messageAccessibilityLabel = v5->_messageAccessibilityLabel;
    v5->_messageAccessibilityLabel = v27;

    v29 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"kCodingKeyMetrics"];

    if (v30)
    {
      v31 = [[AMSMetricsEvent alloc] initWithUnderlyingDictionary:v30];
      metricsEvent = v5->_metricsEvent;
      v5->_metricsEvent = v31;
    }

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredButtonActionIdentifier"];
    preferredButtonActionIdentifier = v5->_preferredButtonActionIdentifier;
    v5->_preferredButtonActionIdentifier = v33;

    v5->_preventsCancelButtonStyle = [v4 decodeBoolForKey:@"kPreventsCancelButtonStyle"];
    v5->_style = [v4 decodeIntegerForKey:@"kCodingKeyStyle"];
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeySystemSymbolName"];
    systemSymbolName = v5->_systemSymbolName;
    v5->_systemSymbolName = v35;

    v37 = MEMORY[0x1E695DFD8];
    v53[0] = objc_opt_class();
    v53[1] = objc_opt_class();
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
    v39 = [v37 setWithArray:v38];
    v40 = [v4 decodeObjectOfClasses:v39 forKey:@"kCodingKeyTextFields"];
    textFields = v5->_textFields;
    v5->_textFields = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyTitle"];
    title = v5->_title;
    v5->_title = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyTitleAccessibilityLabel"];
    titleAccessibilityLabel = v5->_titleAccessibilityLabel;
    v5->_titleAccessibilityLabel = v44;

    v46 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v47 = [v4 decodeObjectOfClasses:v46 forKey:@"kCodingKeyUserInfo"];
    v48 = v47;
    if (v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    userInfo = v5->_userInfo;
    v5->_userInfo = v49;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[AMSDialogRequest allocWithZone:](AMSDialogRequest init];
  v6 = [(AMSDialogRequest *)self appearanceInfo];
  appearanceInfo = v5->_appearanceInfo;
  v5->_appearanceInfo = v6;

  v8 = [(AMSDialogRequest *)self buttonActions];

  if (v8)
  {
    v9 = [(AMSDialogRequest *)self buttonActions];
    v10 = [v9 copyWithZone:a3];
    [(AMSDialogRequest *)v5 setButtonActions:v10];
  }

  v11 = [(AMSDialogRequest *)self clickstreamMetricsEvent];

  if (v11)
  {
    v12 = [(AMSDialogRequest *)self clickstreamMetricsEvent];
    v13 = [v12 copyWithZone:a3];
    [(AMSDialogRequest *)v5 setClickstreamMetricsEvent:v13];
  }

  v14 = [(AMSDialogRequest *)self defaultAction];

  if (v14)
  {
    v15 = [(AMSDialogRequest *)self defaultAction];
    v16 = [v15 copyWithZone:a3];
    [(AMSDialogRequest *)v5 setDefaultAction:v16];
  }

  v17 = [(AMSDialogRequest *)self iconURL];

  if (v17)
  {
    v18 = [(AMSDialogRequest *)self iconURL];
    v19 = [v18 copyWithZone:a3];
    [(AMSDialogRequest *)v5 setIconURL:v19];
  }

  v20 = [(AMSDialogRequest *)self identifier];

  if (v20)
  {
    v21 = [(AMSDialogRequest *)self identifier];
    v22 = [v21 copyWithZone:a3];
    [(AMSDialogRequest *)v5 setIdentifier:v22];
  }

  v23 = [(AMSDialogRequest *)self logKey];

  if (v23)
  {
    v24 = [(AMSDialogRequest *)self logKey];
    v25 = [v24 copyWithZone:a3];
    [(AMSDialogRequest *)v5 setLogKey:v25];
  }

  v26 = [(AMSDialogRequest *)self message];

  if (v26)
  {
    v27 = [(AMSDialogRequest *)self message];
    v28 = [v27 copyWithZone:a3];
    [(AMSDialogRequest *)v5 setMessage:v28];
  }

  v29 = [(AMSDialogRequest *)self messageAccessibilityLabel];

  if (v29)
  {
    v30 = [(AMSDialogRequest *)self messageAccessibilityLabel];
    v31 = [v30 copyWithZone:a3];
    [(AMSDialogRequest *)v5 setMessage:v31];
  }

  v32 = [(AMSDialogRequest *)self metricsEvent];

  if (v32)
  {
    v33 = [(AMSDialogRequest *)self metricsEvent];
    v34 = [v33 copyWithZone:a3];
    [(AMSDialogRequest *)v5 setMetricsEvent:v34];
  }

  v35 = [(AMSDialogRequest *)self preferredButtonActionIdentifier];

  if (v35)
  {
    v36 = [(AMSDialogRequest *)self preferredButtonActionIdentifier];
    v37 = [v36 copyWithZone:a3];
    [(AMSDialogRequest *)v5 setPreferredButtonActionIdentifier:v37];
  }

  [(AMSDialogRequest *)v5 setPreventsCancelButtonStyle:[(AMSDialogRequest *)self preventsCancelButtonStyle]];
  [(AMSDialogRequest *)v5 setStyle:[(AMSDialogRequest *)self style]];
  v38 = [(AMSDialogRequest *)self textFields];

  if (v38)
  {
    v39 = [(AMSDialogRequest *)self textFields];
    v40 = [v39 copyWithZone:a3];
    [(AMSDialogRequest *)v5 setTextFields:v40];
  }

  v41 = [(AMSDialogRequest *)self title];

  if (v41)
  {
    v42 = [(AMSDialogRequest *)self title];
    v43 = [v42 copyWithZone:a3];
    [(AMSDialogRequest *)v5 setTitle:v43];
  }

  v44 = [(AMSDialogRequest *)self titleAccessibilityLabel];

  if (v44)
  {
    v45 = [(AMSDialogRequest *)self titleAccessibilityLabel];
    v46 = [v45 copyWithZone:a3];
    [(AMSDialogRequest *)v5 setTitle:v46];
  }

  v47 = [(AMSDialogRequest *)self userInfo];

  if (v47)
  {
    v48 = [(AMSDialogRequest *)self userInfo];
    v49 = [v48 copyWithZone:a3];
    [(AMSDialogRequest *)v5 setUserInfo:v49];
  }

  return v5;
}

@end