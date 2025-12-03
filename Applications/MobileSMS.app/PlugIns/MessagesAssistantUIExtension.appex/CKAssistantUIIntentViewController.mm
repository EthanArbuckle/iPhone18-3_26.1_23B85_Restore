@interface CKAssistantUIIntentViewController
+ (void)connectIfNeeded;
- (CGSize)desiredSize;
- (void)_configureSnippetContentViewWithChatAndContactsForAvatarView;
- (void)configureViewForParameters:(id)parameters ofInteraction:(id)interaction context:(unint64_t)context completion:(id)completion;
- (void)configureWithInteraction:(id)interaction context:(unint64_t)context completion:(id)completion;
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
    view = [(CKAssistantUIIntentViewController *)self view];
    [view bounds];
    [(CKAssistantUIContentView *)snippetContentView setFrame:?];
  }
}

- (void)configureViewForParameters:(id)parameters ofInteraction:(id)interaction context:(unint64_t)context completion:(id)completion
{
  completionCopy = completion;
  interactionCopy = interaction;
  v11 = [INParameter parameterForClass:objc_opt_class() keyPath:@"recipients"];
  v12 = [INParameter parameterForClass:objc_opt_class() keyPath:@"content"];
  v13 = [INParameter parameterForClass:objc_opt_class() keyPath:@"speakableGroupName"];
  v14 = [NSSet setWithObjects:v11, v12, v13, 0];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100001364;
  v17[3] = &unk_1000082B0;
  v18 = v14;
  v19 = completionCopy;
  v15 = v14;
  v16 = completionCopy;
  [(CKAssistantUIIntentViewController *)self configureWithInteraction:interactionCopy context:context completion:v17];
}

- (void)configureWithInteraction:(id)interaction context:(unint64_t)context completion:(id)completion
{
  interactionCopy = interaction;
  completionCopy = completion;
  obj = [interactionCopy intent];
  intentResponse = [interactionCopy intentResponse];
  v9 = +[NSMutableArray array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (IMGetDomainBoolForKey())
    {
      objc_storeStrong(&self->_configuredIntent, obj);
      recipients = [(INSendMessageIntent *)self->_configuredIntent recipients];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v11 = [recipients countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v11)
      {
        v12 = *v30;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(recipients);
            }

            displayName = [*(*(&v29 + 1) + 8 * i) displayName];
            [v9 addObject:displayName];
          }

          v11 = [recipients countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v11);
      }

      speakableGroupName = [(INSendMessageIntent *)self->_configuredIntent speakableGroupName];
      spokenPhrase = [speakableGroupName spokenPhrase];

      content = [(INSendMessageIntent *)self->_configuredIntent content];
      v18 = content;
      v19 = &stru_100008390;
      if (content)
      {
        v19 = content;
      }

      v20 = v19;

      v21 = intentResponse && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [intentResponse code] == 3;
      if (spokenPhrase)
      {
        v25 = [NSString stringWithFormat:@"%@", spokenPhrase];
      }

      else
      {
        v26 = [v9 componentsJoinedByString:{@", "}];
        v25 = [NSString stringWithFormat:@"%@", v26];
      }

      [(CKAssistantUIIntentViewController *)self _configureSnippetContentViewWithToField:v25 contactsForAvatarView:0 messageContent:v20 sent:v21];
      [(CKAssistantUIContentView *)self->_snippetContentView setNeedsLayout];
      if (completionCopy)
      {
        [(CKAssistantUIIntentViewController *)self desiredSize];
        completionCopy[2](completionCopy);
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

    if (completionCopy)
    {
LABEL_20:
      (completionCopy[2])(completionCopy, CGSizeZero.width, CGSizeZero.height);
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

    if (completionCopy)
    {
      goto LABEL_20;
    }
  }

LABEL_34:
}

- (CGSize)desiredSize
{
  extensionContext = [(CKAssistantUIIntentViewController *)self extensionContext];
  [extensionContext hostedViewMaximumAllowedSize];
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
          customIdentifier = [v9 customIdentifier];

          if (customIdentifier)
          {
            customIdentifier2 = [v9 customIdentifier];
            [v3 addObject:customIdentifier2];
          }

          contactIdentifier = [v9 contactIdentifier];

          if (contactIdentifier)
          {
            contactIdentifier2 = [v9 contactIdentifier];
            [v4 addObject:contactIdentifier2];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v6);
    }

    [objc_opt_class() connectIfNeeded];
    conversationIdentifier = [(INSendMessageIntent *)self->_configuredIntent conversationIdentifier];
    v14 = +[IMChatRegistry sharedRegistry];
    v15 = v14;
    if (conversationIdentifier)
    {
      [v14 existingChatWithChatIdentifier:conversationIdentifier];
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
    firstObject = [v3 firstObject];
    v35 = [v21 existingChatWithChatIdentifier:firstObject];

    if (v35)
    {
LABEL_21:
      v17 = [[CKConversation alloc] initWithChat:v35];
      v18 = v17;
      if (v17)
      {
        displayName = [v17 displayName];
        v20 = displayName == 0;

        if (!v20)
        {
          orderedContactsForAvatarView = [v18 orderedContactsForAvatarView];
          [(CKAssistantUIContentView *)self->_snippetContentView setContactsForAvatarView:orderedContactsForAvatarView];
LABEL_35:
          [v18 setLoadedMessageCount:10];
          v29 = [[CKAssistantUIChatController alloc] initWithConversation:v18];
          [(CKAssistantUIChatController *)v29 beginHoldingScrollGeometryUpdatesForReason:CKScrollViewHoldingScrollGeometryReasonTypeSiriKitUIExtensionPermanentHold];
          [(CKAssistantUIIntentViewController *)self setChatController:v29];
          snippetContentView = self->_snippetContentView;
          view = [(CKAssistantUIChatController *)v29 view];
          [(CKAssistantUIContentView *)snippetContentView setChatContent:view];

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
        orderedContactsForAvatarView = [v23 unifiedContactsMatchingPredicate:v24 keysToFetch:v26 error:&v36];
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

        [(CKAssistantUIContentView *)self->_snippetContentView setContactsForAvatarView:orderedContactsForAvatarView];
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