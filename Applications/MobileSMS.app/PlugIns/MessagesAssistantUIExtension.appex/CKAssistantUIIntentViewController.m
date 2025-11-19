@interface CKAssistantUIIntentViewController
+ (void)connectIfNeeded;
- (CGSize)desiredSize;
- (void)_configureSnippetContentViewWithChatAndContactsForAvatarView;
- (void)configureViewForParameters:(id)a3 ofInteraction:(id)a4 context:(unint64_t)a5 completion:(id)a6;
- (void)configureWithInteraction:(id)a3 context:(unint64_t)a4 completion:(id)a5;
- (void)viewDidLayoutSubviews;
@end

@implementation CKAssistantUIIntentViewController

+ (void)connectIfNeeded
{
  if (qword_10000CE58 != -1)
  {
    sub_100002E40();
  }
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CKAssistantUIIntentViewController;
  [(CKAssistantUIIntentViewController *)&v5 viewDidLayoutSubviews];
  snippetContentView = self->_snippetContentView;
  if (snippetContentView)
  {
    v4 = [(CKAssistantUIIntentViewController *)self view];
    [v4 bounds];
    [(CKAssistantUIContentView *)snippetContentView setFrame:?];
  }
}

- (void)configureViewForParameters:(id)a3 ofInteraction:(id)a4 context:(unint64_t)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = [INParameter parameterForClass:objc_opt_class() keyPath:@"recipients"];
  v12 = [INParameter parameterForClass:objc_opt_class() keyPath:@"content"];
  v13 = [INParameter parameterForClass:objc_opt_class() keyPath:@"speakableGroupName"];
  v14 = [NSSet setWithObjects:v11, v12, v13, 0];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100001364;
  v17[3] = &unk_1000082B0;
  v18 = v14;
  v19 = v9;
  v15 = v14;
  v16 = v9;
  [(CKAssistantUIIntentViewController *)self configureWithInteraction:v10 context:a5 completion:v17];
}

- (void)configureWithInteraction:(id)a3 context:(unint64_t)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  obj = [v7 intent];
  v27 = [v7 intentResponse];
  v9 = +[NSMutableArray array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (IMGetDomainBoolForKey())
    {
      objc_storeStrong(&self->_configuredIntent, obj);
      v10 = [(INSendMessageIntent *)self->_configuredIntent recipients];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v11)
      {
        v12 = *v30;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = [*(*(&v29 + 1) + 8 * i) displayName];
            [v9 addObject:v14];
          }

          v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v11);
      }

      v15 = [(INSendMessageIntent *)self->_configuredIntent speakableGroupName];
      v16 = [v15 spokenPhrase];

      v17 = [(INSendMessageIntent *)self->_configuredIntent content];
      v18 = v17;
      v19 = &stru_100008390;
      if (v17)
      {
        v19 = v17;
      }

      v20 = v19;

      v21 = v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v27 code] == 3;
      if (v16)
      {
        v25 = [NSString stringWithFormat:@"%@", v16];
      }

      else
      {
        v26 = [v9 componentsJoinedByString:{@", "}];
        v25 = [NSString stringWithFormat:@"%@", v26];
      }

      [(CKAssistantUIIntentViewController *)self _configureSnippetContentViewWithToField:v25 contactsForAvatarView:0 messageContent:v20 sent:v21];
      [(CKAssistantUIContentView *)self->_snippetContentView setNeedsLayout];
      if (v8)
      {
        [(CKAssistantUIIntentViewController *)self desiredSize];
        v8[2](v8);
      }

      goto LABEL_34;
    }

    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = +[NSUserDefaults standardUserDefaults];
        *buf = 138412290;
        v35 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "EnableEnhancedSiriUI not enabled, not using Assistant UI extension : %@", buf, 0xCu);
      }
    }

    if (v8)
    {
LABEL_20:
      (v8[2])(v8, CGSizeZero.width, CGSizeZero.height);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v35 = obj;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Unhandled intent: %@, not using Assistant UI extension", buf, 0xCu);
      }
    }

    if (v8)
    {
      goto LABEL_20;
    }
  }

LABEL_34:
}

- (CGSize)desiredSize
{
  v3 = [(CKAssistantUIIntentViewController *)self extensionContext];
  [v3 hostedViewMaximumAllowedSize];
  v5 = v4;
  v7 = v6;

  snippetContentView = self->_snippetContentView;

  [(CKAssistantUIContentView *)snippetContentView sizeThatFits:v5, v7];
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_configureSnippetContentViewWithChatAndContactsForAvatarView
{
  if (self->_snippetContentView)
  {
    v3 = +[NSMutableArray array];
    v4 = +[NSMutableArray array];
    [(INSendMessageIntent *)self->_configuredIntent recipients];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v5 = v38 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v6)
    {
      v7 = *v38;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v38 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v37 + 1) + 8 * i);
          v10 = [v9 customIdentifier];

          if (v10)
          {
            v11 = [v9 customIdentifier];
            [v3 addObject:v11];
          }

          v12 = [v9 contactIdentifier];

          if (v12)
          {
            v13 = [v9 contactIdentifier];
            [v4 addObject:v13];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v6);
    }

    [objc_opt_class() connectIfNeeded];
    v34 = [(INSendMessageIntent *)self->_configuredIntent conversationIdentifier];
    v14 = +[IMChatRegistry sharedRegistry];
    v15 = v14;
    if (v34)
    {
      [v14 existingChatWithChatIdentifier:v34];
    }

    else
    {
      [v14 existingChatForAddresses:v3 allowRetargeting:0 bestHandles:0];
    }
    v35 = ;

    if (v35)
    {
      goto LABEL_21;
    }

    if ([v3 count] != 1)
    {
      goto LABEL_26;
    }

    v21 = +[IMChatRegistry sharedRegistry];
    v22 = [v3 firstObject];
    v35 = [v21 existingChatWithChatIdentifier:v22];

    if (v35)
    {
LABEL_21:
      v17 = [[CKConversation alloc] initWithChat:v35];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 displayName];
        v20 = v19 == 0;

        if (!v20)
        {
          v33 = [v18 orderedContactsForAvatarView];
          [(CKAssistantUIContentView *)self->_snippetContentView setContactsForAvatarView:v33];
LABEL_35:
          [v18 setLoadedMessageCount:10];
          v29 = [[CKAssistantUIChatController alloc] initWithConversation:v18];
          [(CKAssistantUIChatController *)v29 beginHoldingScrollGeometryUpdatesForReason:CKScrollViewHoldingScrollGeometryReasonTypeSiriKitUIExtensionPermanentHold];
          [(CKAssistantUIIntentViewController *)self setChatController:v29];
          snippetContentView = self->_snippetContentView;
          v31 = [(CKAssistantUIChatController *)v29 view];
          [(CKAssistantUIContentView *)snippetContentView setChatContent:v31];

LABEL_36:
          return;
        }

        v32 = 0;
LABEL_29:
        v23 = objc_alloc_init(CNContactStore);
        v24 = [CNContact predicateForContactsWithIdentifiers:v4];
        v25 = +[CNAvatarView descriptorForRequiredKeys];
        v45 = v25;
        v26 = [NSArray arrayWithObjects:&v45 count:1];
        v36 = 0;
        v33 = [v23 unifiedContactsMatchingPredicate:v24 keysToFetch:v26 error:&v36];
        v27 = v36;

        if (v27 && IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v41 = 138412546;
            v42 = v4;
            v43 = 2112;
            v44 = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Error fetching contact with identifiers %@. Error: %@", &v41, 0x16u);
          }
        }

        [(CKAssistantUIContentView *)self->_snippetContentView setContactsForAvatarView:v33];
        if (v32)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    else
    {
LABEL_26:
      v18 = 0;
      v35 = 0;
    }

    v32 = 1;
    goto LABEL_29;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "SnippetContentView must exist before configuring chat and contact avatars", &v41, 2u);
    }
  }
}

@end