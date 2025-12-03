@interface AMSFollowUpNotification
+ (id)defaultOptions;
+ (id)optionForString:(id)string;
- (AMSFollowUpNotification)init;
- (AMSFollowUpNotification)initWithJSONDictionary:(id)dictionary parentIdentifier:(id)identifier logKey:(id)key;
- (id)generateNotification;
@end

@implementation AMSFollowUpNotification

- (AMSFollowUpNotification)init
{
  v6.receiver = self;
  v6.super_class = AMSFollowUpNotification;
  v2 = [(AMSFollowUpNotification *)&v6 init];
  if (v2)
  {
    v3 = +[AMSFollowUpNotification defaultOptions];
    options = v2->_options;
    v2->_options = v3;
  }

  return v2;
}

- (AMSFollowUpNotification)initWithJSONDictionary:(id)dictionary parentIdentifier:(id)identifier logKey:(id)key
{
  v37 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  keyCopy = key;
  v11 = [(AMSFollowUpNotification *)self init];
  if (v11)
  {
    v12 = [dictionaryCopy objectForKeyedSubscript:@"options"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"activateAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [[AMSFollowUpAction alloc] initWithJSONDictionary:v15 parentIdentifier:identifierCopy];
    [(AMSFollowUpAction *)v16 setLogKey:keyCopy];
    v17 = [MEMORY[0x1E695DFA8] set];
    if (v13)
    {
      v28 = v15;
      v29 = v13;
      v30 = keyCopy;
      v31 = identifierCopy;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v18 = v13;
      v19 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v33;
        do
        {
          v22 = 0;
          do
          {
            if (*v33 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [AMSFollowUpNotification optionForString:*(*(&v32 + 1) + 8 * v22), v28, v29, v30, v31, v32];
            if (v23)
            {
              [v17 addObject:v23];
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v20);
      }

      keyCopy = v30;
      identifierCopy = v31;
      v15 = v28;
      v13 = v29;
      if ([v17 count])
      {
        v24 = [MEMORY[0x1E695DFD8] setWithSet:v17];
        options = v11->_options;
        v11->_options = v24;
      }
    }

    activateAction = v11->_activateAction;
    v11->_activateAction = v16;
  }

  return v11;
}

- (id)generateNotification
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v3 = getFLFollowUpNotificationClass_softClass;
  v17 = getFLFollowUpNotificationClass_softClass;
  if (!getFLFollowUpNotificationClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getFLFollowUpNotificationClass_block_invoke;
    v13[3] = &unk_1E73B3880;
    v13[4] = &v14;
    __getFLFollowUpNotificationClass_block_invoke(v13);
    v3 = v15[3];
  }

  v4 = v3;
  _Block_object_dispose(&v14, 8);
  v5 = objc_alloc_init(v3);
  title = [(AMSFollowUpNotification *)self title];
  [v5 setTitle:title];

  informativeText = [(AMSFollowUpNotification *)self informativeText];
  [v5 setInformativeText:informativeText];

  options = [(AMSFollowUpNotification *)self options];
  [v5 setOptions:options];

  [v5 setFirstNotificationDelay:0.0];
  activateAction = [(AMSFollowUpNotification *)self activateAction];

  if (activateAction)
  {
    activateAction2 = [(AMSFollowUpNotification *)self activateAction];
    generateAction = [activateAction2 generateAction];

    [v5 setActivateAction:generateAction];
  }

  return v5;
}

+ (id)defaultOptions
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = getFLNotificationOptionLockscreen();
  v4 = getFLNotificationOptionNotificationCenter();
  v5 = getFLNotificationOptionBannerAlert();
  v6 = [v2 setWithObjects:{v3, v4, v5, 0}];

  return v6;
}

+ (id)optionForString:(id)string
{
  v21 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v17[0] = @"bannerAlert";
  v4 = getFLNotificationOptionBannerAlert();
  v18[0] = v4;
  v17[1] = @"lockScreen";
  v5 = getFLNotificationOptionLockscreen();
  v18[1] = v5;
  v17[2] = @"keepOnLockscreen";
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v6 = getFLNotificationOptionKeepOnLockscreenSymbolLoc_ptr;
  v16 = getFLNotificationOptionKeepOnLockscreenSymbolLoc_ptr;
  if (!getFLNotificationOptionKeepOnLockscreenSymbolLoc_ptr)
  {
    v7 = CoreFollowUpLibrary_1();
    v14[3] = dlsym(v7, "FLNotificationOptionKeepOnLockscreen");
    getFLNotificationOptionKeepOnLockscreenSymbolLoc_ptr = v14[3];
    v6 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v6)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v19 = *v6;
  v17[3] = @"notificationCenter";
  v8 = v19;
  v9 = getFLNotificationOptionNotificationCenter();
  v20 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v11 = [v10 objectForKeyedSubscript:stringCopy];

  return v11;
}

@end