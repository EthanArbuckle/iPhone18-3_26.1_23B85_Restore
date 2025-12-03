@interface AMSDialogRequest
+ (AMSDialogRequest)requestWithTitle:(id)title message:(id)message;
- (AMSDialogRequest)init;
- (AMSDialogRequest)initWithCoder:(id)coder;
- (AMSDialogRequest)initWithError:(id)error;
- (AMSDialogRequest)initWithTitle:(id)title message:(id)message;
- (AMSDialogRequest)initWithTitle:(id)title message:(id)message appearanceInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)locateActionWithIdentifier:(id)identifier;
- (void)addButtonAction:(id)action;
- (void)addTextField:(id)field;
- (void)encodeWithCoder:(id)coder;
- (void)replaceAction:(id)action;
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

- (AMSDialogRequest)initWithError:(id)error
{
  errorCopy = error;
  ams_title = [errorCopy ams_title];
  ams_message = [errorCopy ams_message];

  v7 = [(AMSDialogRequest *)self initWithTitle:ams_title message:ams_message];
  return v7;
}

- (AMSDialogRequest)initWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v9 = [(AMSDialogRequest *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    v11 = AMSSetLogKeyIfNeeded();
    logKey = v10->_logKey;
    v10->_logKey = v11;

    objc_storeStrong(&v10->_message, message);
  }

  return v10;
}

+ (AMSDialogRequest)requestWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  titleCopy = title;
  v7 = [objc_alloc(objc_opt_class()) initWithTitle:titleCopy message:messageCopy];

  return v7;
}

- (AMSDialogRequest)initWithTitle:(id)title message:(id)message appearanceInfo:(id)info
{
  infoCopy = info;
  v10 = [(AMSDialogRequest *)self initWithTitle:title message:message];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_appearanceInfo, info);
  }

  return v11;
}

- (id)description
{
  if (os_variant_has_internal_content())
  {
    title = [(AMSDialogRequest *)self title];
  }

  else
  {
    title = @"<private>";
  }

  v4 = MEMORY[0x1E696AEC0];
  identifier = [(AMSDialogRequest *)self identifier];
  defaultAction = [(AMSDialogRequest *)self defaultAction];
  buttonActions = [(AMSDialogRequest *)self buttonActions];
  v8 = [v4 stringWithFormat:@"{ id: %@, title: %@, default: %@, actions: %@ }", identifier, title, defaultAction, buttonActions];

  return v8;
}

- (void)addButtonAction:(id)action
{
  actionCopy = action;
  buttonActions = [(AMSDialogRequest *)self buttonActions];
  v6 = [buttonActions mutableCopy];
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

  [v9 addObject:actionCopy];
  [(AMSDialogRequest *)self setButtonActions:v9];
}

- (void)addTextField:(id)field
{
  fieldCopy = field;
  textFields = [(AMSDialogRequest *)self textFields];
  v6 = [textFields mutableCopy];
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

  [v9 addObject:fieldCopy];
  [(AMSDialogRequest *)self setTextFields:v9];
}

- (id)locateActionWithIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    defaultAction = [(AMSDialogRequest *)self defaultAction];
    identifier = [defaultAction identifier];
    v7 = [identifier isEqualToString:identifierCopy];

    if (v7)
    {
      defaultAction2 = [(AMSDialogRequest *)self defaultAction];
      goto LABEL_15;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    buttonActions = [(AMSDialogRequest *)self buttonActions];
    v10 = [buttonActions countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(buttonActions);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          identifier2 = [v14 identifier];
          v16 = [identifier2 isEqualToString:identifierCopy];

          if (v16)
          {
            defaultAction2 = v14;

            goto LABEL_15;
          }
        }

        v11 = [buttonActions countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  defaultAction2 = 0;
LABEL_15:

  return defaultAction2;
}

- (void)replaceAction:(id)action
{
  actionCopy = action;
  identifier = [actionCopy identifier];
  if (identifier)
  {
    defaultAction = [(AMSDialogRequest *)self defaultAction];
    identifier2 = [defaultAction identifier];
    v7 = [identifier2 isEqualToString:identifier];

    if (v7)
    {
      [(AMSDialogRequest *)self setDefaultAction:actionCopy];
    }

    buttonActions = [(AMSDialogRequest *)self buttonActions];
    v9 = [buttonActions count];

    if (v9)
    {
      v10 = 0;
      while (1)
      {
        buttonActions2 = [(AMSDialogRequest *)self buttonActions];
        v12 = [buttonActions2 objectAtIndexedSubscript:v10];

        identifier3 = [v12 identifier];
        v14 = [identifier3 isEqualToString:identifier];

        if (v14)
        {
          break;
        }

        ++v10;
        buttonActions3 = [(AMSDialogRequest *)self buttonActions];
        v16 = [buttonActions3 count];

        if (v10 >= v16)
        {
          goto LABEL_10;
        }
      }

      buttonActions4 = [(AMSDialogRequest *)self buttonActions];
      v18 = [buttonActions4 mutableCopy];

      [v18 setObject:actionCopy atIndexedSubscript:v10];
      [(AMSDialogRequest *)self setButtonActions:v18];
    }
  }

LABEL_10:
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appearanceInfo = [(AMSDialogRequest *)self appearanceInfo];

  if (appearanceInfo)
  {
    appearanceInfo2 = [(AMSDialogRequest *)self appearanceInfo];
    [coderCopy encodeObject:appearanceInfo2 forKey:@"kCodingKeyAppearanceInfo"];
  }

  buttonActions = [(AMSDialogRequest *)self buttonActions];

  if (buttonActions)
  {
    buttonActions2 = [(AMSDialogRequest *)self buttonActions];
    [coderCopy encodeObject:buttonActions2 forKey:@"kCodingKeyButtonActions"];
  }

  clickstreamMetricsEvent = [(AMSDialogRequest *)self clickstreamMetricsEvent];

  if (clickstreamMetricsEvent)
  {
    clickstreamMetricsEvent2 = [(AMSDialogRequest *)self clickstreamMetricsEvent];
    [coderCopy encodeObject:clickstreamMetricsEvent2 forKey:@"kCodingKeyClickstreamMetricsEvent"];
  }

  defaultAction = [(AMSDialogRequest *)self defaultAction];

  if (defaultAction)
  {
    defaultAction2 = [(AMSDialogRequest *)self defaultAction];
    [coderCopy encodeObject:defaultAction2 forKey:@"kCodingKeyDefaultAction"];
  }

  iconURL = [(AMSDialogRequest *)self iconURL];

  if (iconURL)
  {
    iconURL2 = [(AMSDialogRequest *)self iconURL];
    [coderCopy encodeObject:iconURL2 forKey:@"kCodingKeyIconURL"];
  }

  identifier = [(AMSDialogRequest *)self identifier];

  if (identifier)
  {
    identifier2 = [(AMSDialogRequest *)self identifier];
    [coderCopy encodeObject:identifier2 forKey:@"kCodingKeyIdentifier"];
  }

  logKey = [(AMSDialogRequest *)self logKey];

  if (logKey)
  {
    logKey2 = [(AMSDialogRequest *)self logKey];
    [coderCopy encodeObject:logKey2 forKey:@"kCodingKeyLogKey"];
  }

  message = [(AMSDialogRequest *)self message];

  if (message)
  {
    message2 = [(AMSDialogRequest *)self message];
    [coderCopy encodeObject:message2 forKey:@"kCodingKeyMessage"];
  }

  messageAccessibilityLabel = [(AMSDialogRequest *)self messageAccessibilityLabel];

  if (messageAccessibilityLabel)
  {
    messageAccessibilityLabel2 = [(AMSDialogRequest *)self messageAccessibilityLabel];
    [coderCopy encodeObject:messageAccessibilityLabel2 forKey:@"kCodingKeyMessageAccessibilityLabel"];
  }

  metricsEvent = [(AMSDialogRequest *)self metricsEvent];

  if (metricsEvent)
  {
    metricsEvent2 = [(AMSDialogRequest *)self metricsEvent];
    underlyingDictionary = [metricsEvent2 underlyingDictionary];
    [coderCopy encodeObject:underlyingDictionary forKey:@"kCodingKeyMetrics"];
  }

  [coderCopy encodeInteger:-[AMSDialogRequest style](self forKey:{"style"), @"kCodingKeyStyle"}];
  preferredButtonActionIdentifier = [(AMSDialogRequest *)self preferredButtonActionIdentifier];

  if (preferredButtonActionIdentifier)
  {
    preferredButtonActionIdentifier2 = [(AMSDialogRequest *)self preferredButtonActionIdentifier];
    [coderCopy encodeObject:preferredButtonActionIdentifier2 forKey:@"preferredButtonActionIdentifier"];
  }

  [coderCopy encodeBool:-[AMSDialogRequest preventsCancelButtonStyle](self forKey:{"preventsCancelButtonStyle"), @"kPreventsCancelButtonStyle"}];
  textFields = [(AMSDialogRequest *)self textFields];

  if (textFields)
  {
    textFields2 = [(AMSDialogRequest *)self textFields];
    [coderCopy encodeObject:textFields2 forKey:@"kCodingKeyTextFields"];
  }

  title = [(AMSDialogRequest *)self title];

  if (title)
  {
    title2 = [(AMSDialogRequest *)self title];
    [coderCopy encodeObject:title2 forKey:@"kCodingKeyTitle"];
  }

  titleAccessibilityLabel = [(AMSDialogRequest *)self titleAccessibilityLabel];

  if (titleAccessibilityLabel)
  {
    titleAccessibilityLabel2 = [(AMSDialogRequest *)self titleAccessibilityLabel];
    [coderCopy encodeObject:titleAccessibilityLabel2 forKey:@"kCodingKeyTitleAccessibilityLabel"];
  }

  userInfo = [(AMSDialogRequest *)self userInfo];

  v34 = coderCopy;
  if (userInfo)
  {
    userInfo2 = [(AMSDialogRequest *)self userInfo];
    [coderCopy encodeObject:userInfo2 forKey:@"kCodingKeyUserInfo"];

    v34 = coderCopy;
  }
}

- (AMSDialogRequest)initWithCoder:(id)coder
{
  v54[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v52.receiver = self;
  v52.super_class = AMSDialogRequest;
  v5 = [(AMSDialogRequest *)&v52 init];
  if (v5)
  {
    ams_JSONClasses = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v7 = [coderCopy decodeObjectOfClasses:ams_JSONClasses forKey:@"kCodingKeyAppearanceInfo"];
    appearanceInfo = v5->_appearanceInfo;
    v5->_appearanceInfo = v7;

    v9 = MEMORY[0x1E695DFD8];
    v54[0] = objc_opt_class();
    v54[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"kCodingKeyButtonActions"];
    buttonActions = v5->_buttonActions;
    v5->_buttonActions = v12;

    ams_JSONClasses2 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v15 = [coderCopy decodeObjectOfClasses:ams_JSONClasses2 forKey:@"kCodingKeyClickstreamMetricsEvent"];
    clickstreamMetricsEvent = v5->_clickstreamMetricsEvent;
    v5->_clickstreamMetricsEvent = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyDefaultAction"];
    defaultAction = v5->_defaultAction;
    v5->_defaultAction = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIconURL"];
    iconURL = v5->_iconURL;
    v5->_iconURL = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyLogKey"];
    logKey = v5->_logKey;
    v5->_logKey = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyMessage"];
    message = v5->_message;
    v5->_message = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyMessageAccessibilityLabel"];
    messageAccessibilityLabel = v5->_messageAccessibilityLabel;
    v5->_messageAccessibilityLabel = v27;

    ams_JSONClasses3 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v30 = [coderCopy decodeObjectOfClasses:ams_JSONClasses3 forKey:@"kCodingKeyMetrics"];

    if (v30)
    {
      v31 = [[AMSMetricsEvent alloc] initWithUnderlyingDictionary:v30];
      metricsEvent = v5->_metricsEvent;
      v5->_metricsEvent = v31;
    }

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredButtonActionIdentifier"];
    preferredButtonActionIdentifier = v5->_preferredButtonActionIdentifier;
    v5->_preferredButtonActionIdentifier = v33;

    v5->_preventsCancelButtonStyle = [coderCopy decodeBoolForKey:@"kPreventsCancelButtonStyle"];
    v5->_style = [coderCopy decodeIntegerForKey:@"kCodingKeyStyle"];
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeySystemSymbolName"];
    systemSymbolName = v5->_systemSymbolName;
    v5->_systemSymbolName = v35;

    v37 = MEMORY[0x1E695DFD8];
    v53[0] = objc_opt_class();
    v53[1] = objc_opt_class();
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
    v39 = [v37 setWithArray:v38];
    v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"kCodingKeyTextFields"];
    textFields = v5->_textFields;
    v5->_textFields = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyTitle"];
    title = v5->_title;
    v5->_title = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyTitleAccessibilityLabel"];
    titleAccessibilityLabel = v5->_titleAccessibilityLabel;
    v5->_titleAccessibilityLabel = v44;

    ams_JSONClasses4 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v47 = [coderCopy decodeObjectOfClasses:ams_JSONClasses4 forKey:@"kCodingKeyUserInfo"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[AMSDialogRequest allocWithZone:](AMSDialogRequest init];
  appearanceInfo = [(AMSDialogRequest *)self appearanceInfo];
  appearanceInfo = v5->_appearanceInfo;
  v5->_appearanceInfo = appearanceInfo;

  buttonActions = [(AMSDialogRequest *)self buttonActions];

  if (buttonActions)
  {
    buttonActions2 = [(AMSDialogRequest *)self buttonActions];
    v10 = [buttonActions2 copyWithZone:zone];
    [(AMSDialogRequest *)v5 setButtonActions:v10];
  }

  clickstreamMetricsEvent = [(AMSDialogRequest *)self clickstreamMetricsEvent];

  if (clickstreamMetricsEvent)
  {
    clickstreamMetricsEvent2 = [(AMSDialogRequest *)self clickstreamMetricsEvent];
    v13 = [clickstreamMetricsEvent2 copyWithZone:zone];
    [(AMSDialogRequest *)v5 setClickstreamMetricsEvent:v13];
  }

  defaultAction = [(AMSDialogRequest *)self defaultAction];

  if (defaultAction)
  {
    defaultAction2 = [(AMSDialogRequest *)self defaultAction];
    v16 = [defaultAction2 copyWithZone:zone];
    [(AMSDialogRequest *)v5 setDefaultAction:v16];
  }

  iconURL = [(AMSDialogRequest *)self iconURL];

  if (iconURL)
  {
    iconURL2 = [(AMSDialogRequest *)self iconURL];
    v19 = [iconURL2 copyWithZone:zone];
    [(AMSDialogRequest *)v5 setIconURL:v19];
  }

  identifier = [(AMSDialogRequest *)self identifier];

  if (identifier)
  {
    identifier2 = [(AMSDialogRequest *)self identifier];
    v22 = [identifier2 copyWithZone:zone];
    [(AMSDialogRequest *)v5 setIdentifier:v22];
  }

  logKey = [(AMSDialogRequest *)self logKey];

  if (logKey)
  {
    logKey2 = [(AMSDialogRequest *)self logKey];
    v25 = [logKey2 copyWithZone:zone];
    [(AMSDialogRequest *)v5 setLogKey:v25];
  }

  message = [(AMSDialogRequest *)self message];

  if (message)
  {
    message2 = [(AMSDialogRequest *)self message];
    v28 = [message2 copyWithZone:zone];
    [(AMSDialogRequest *)v5 setMessage:v28];
  }

  messageAccessibilityLabel = [(AMSDialogRequest *)self messageAccessibilityLabel];

  if (messageAccessibilityLabel)
  {
    messageAccessibilityLabel2 = [(AMSDialogRequest *)self messageAccessibilityLabel];
    v31 = [messageAccessibilityLabel2 copyWithZone:zone];
    [(AMSDialogRequest *)v5 setMessage:v31];
  }

  metricsEvent = [(AMSDialogRequest *)self metricsEvent];

  if (metricsEvent)
  {
    metricsEvent2 = [(AMSDialogRequest *)self metricsEvent];
    v34 = [metricsEvent2 copyWithZone:zone];
    [(AMSDialogRequest *)v5 setMetricsEvent:v34];
  }

  preferredButtonActionIdentifier = [(AMSDialogRequest *)self preferredButtonActionIdentifier];

  if (preferredButtonActionIdentifier)
  {
    preferredButtonActionIdentifier2 = [(AMSDialogRequest *)self preferredButtonActionIdentifier];
    v37 = [preferredButtonActionIdentifier2 copyWithZone:zone];
    [(AMSDialogRequest *)v5 setPreferredButtonActionIdentifier:v37];
  }

  [(AMSDialogRequest *)v5 setPreventsCancelButtonStyle:[(AMSDialogRequest *)self preventsCancelButtonStyle]];
  [(AMSDialogRequest *)v5 setStyle:[(AMSDialogRequest *)self style]];
  textFields = [(AMSDialogRequest *)self textFields];

  if (textFields)
  {
    textFields2 = [(AMSDialogRequest *)self textFields];
    v40 = [textFields2 copyWithZone:zone];
    [(AMSDialogRequest *)v5 setTextFields:v40];
  }

  title = [(AMSDialogRequest *)self title];

  if (title)
  {
    title2 = [(AMSDialogRequest *)self title];
    v43 = [title2 copyWithZone:zone];
    [(AMSDialogRequest *)v5 setTitle:v43];
  }

  titleAccessibilityLabel = [(AMSDialogRequest *)self titleAccessibilityLabel];

  if (titleAccessibilityLabel)
  {
    titleAccessibilityLabel2 = [(AMSDialogRequest *)self titleAccessibilityLabel];
    v46 = [titleAccessibilityLabel2 copyWithZone:zone];
    [(AMSDialogRequest *)v5 setTitle:v46];
  }

  userInfo = [(AMSDialogRequest *)self userInfo];

  if (userInfo)
  {
    userInfo2 = [(AMSDialogRequest *)self userInfo];
    v49 = [userInfo2 copyWithZone:zone];
    [(AMSDialogRequest *)v5 setUserInfo:v49];
  }

  return v5;
}

@end