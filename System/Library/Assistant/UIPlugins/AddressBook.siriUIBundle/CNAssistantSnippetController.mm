@interface CNAssistantSnippetController
- (CNAssistantSnippetController)initWithAceObject:(id)object contactStore:(id)store error:(id *)error;
- (double)desiredHeightForWidth:(double)width;
- (id)_displayedPropertiesFromSiriDiplayedProperties:(id)properties;
- (void)configureContentWithSizeClass:(int64_t)class;
@end

@implementation CNAssistantSnippetController

- (CNAssistantSnippetController)initWithAceObject:(id)object contactStore:(id)store error:(id *)error
{
  objectCopy = object;
  storeCopy = store;
  v32.receiver = self;
  v32.super_class = CNAssistantSnippetController;
  v10 = [(CNAssistantSnippetController *)&v32 init];
  if (v10)
  {
    persons = [objectCopy persons];
    v12 = [persons count];

    if (!v12)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_409C();
      }

      v10 = 0;
    }

    persons2 = [objectCopy persons];
    v14 = [persons2 objectAtIndex:0];

    v15 = [v14 me];
    if ([v15 BOOLValue])
    {
    }

    else
    {
      identifier = [v14 identifier];

      if (!identifier)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_40E0();
        }

        v21 = v10;
        goto LABEL_26;
      }
    }

    if (!v10)
    {
LABEL_28:

      goto LABEL_29;
    }

    v17 = [v14 me];
    bOOLValue = [v17 BOOLValue];

    if (bOOLValue)
    {
      v19 = +[CNAssistantSnippetView descriptorForRequiredKeys];
      v31 = 0;
      v20 = [storeCopy _crossPlatformUnifiedMeContactWithKeysToFetch:v19 error:&v31];
      v21 = v31;

      if (!v20 && v21)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_41AC();
        }

LABEL_22:

LABEL_26:
        v10 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      identifier2 = [v14 identifier];
      v23 = [CNAssistantID contactIDFromAssistantID:identifier2];

      v24 = +[CNAssistantSnippetView descriptorForRequiredKeys];
      v30 = 0;
      v20 = [storeCopy unifiedContactWithIdentifier:v23 keysToFetch:v24 error:&v30];
      v21 = v30;

      if (!v20 && v21 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_4124();
      }
    }

    if (v20)
    {
      displayProperties = [objectCopy displayProperties];
      v26 = [(CNAssistantSnippetController *)v10 _displayedPropertiesFromSiriDiplayedProperties:displayProperties];

      v27 = [[CNAssistantSnippetView alloc] initWithFrame:v20 contact:v26 displayedProperties:v10 viewController:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      snippetView = v10->_snippetView;
      v10->_snippetView = v27;

      [(CNAssistantSnippetController *)v10 setView:v10->_snippetView];
      [(CNAssistantSnippetController *)v10 setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];

LABEL_27:
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_29:
  if (error && !v10)
  {
    *error = [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:101 userInfo:0];
  }

  return v10;
}

- (double)desiredHeightForWidth:(double)width
{
  snippetView = [(CNAssistantSnippetController *)self snippetView];
  [snippetView desiredHeightForWidth:width];
  v6 = v5;

  return v6;
}

- (id)_displayedPropertiesFromSiriDiplayedProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = propertiesCopy;
  if (propertiesCopy)
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [propertiesCopy count]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      v21 = CNContactUIBirthdaysKey;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [v11 isEqualToString:@"emails"];
          v13 = CNContactEmailAddressesKey;
          if (v12)
          {
            goto LABEL_13;
          }

          v14 = [v11 isEqualToString:@"phones"];
          v13 = CNContactPhoneNumbersKey;
          if (v14)
          {
            goto LABEL_13;
          }

          v15 = [v11 isEqualToString:@"addresses"];
          v13 = CNContactPostalAddressesKey;
          if ((v15 & 1) == 0)
          {
            v16 = [v11 isEqualToString:@"birthday"];
            v13 = v21;
            if ((v16 & 1) == 0)
            {
              v17 = [v11 isEqualToString:@"relatedNames"];
              v13 = CNContactRelationsKey;
              if ((v17 & 1) == 0)
              {
                v18 = [v11 isEqualToString:@"socialProfiles"];
                v13 = CNContactSocialProfilesKey;
                if (!v18)
                {
                  continue;
                }
              }
            }
          }

LABEL_13:
          [v5 addObject:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    v4 = v20;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)configureContentWithSizeClass:(int64_t)class
{
  snippetView = [(CNAssistantSnippetController *)self snippetView];
  [snippetView setSnippetSizeClass:class];
}

@end