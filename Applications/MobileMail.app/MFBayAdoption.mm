@interface MFBayAdoption
+ (OS_os_log)log;
+ (id)composeWindowSceneActivationConfigurationWithContext:(id)context presentationSource:(id)source requestingScene:(id)scene;
+ (id)openMessageInNewWindowActionWithMessage:(id)message messageList:(id)list preparation:(id)preparation completion:(id)completion;
+ (id)openMessageInNewWindowConfigurationWithMessageListItem:(id)item messageList:(id)list;
+ (void)migrateDockedDrafts:(id)drafts completion:(id)completion;
+ (void)migrateQuickReplyDraft:(id)draft completion:(id)completion;
+ (void)openComposeWithContext:(id)context presentationSource:(id)source requestingScene:(id)scene;
+ (void)requestShelfPresentationForSceneWithIdentifier:(id)identifier;
@end

@implementation MFBayAdoption

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A98DC;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD400 != -1)
  {
    dispatch_once(&qword_1006DD400, block);
  }

  v2 = qword_1006DD3F8;

  return v2;
}

+ (id)openMessageInNewWindowActionWithMessage:(id)message messageList:(id)list preparation:(id)preparation completion:(id)completion
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001A9AD4;
  v15[3] = &unk_1006533F0;
  messageCopy = message;
  listCopy = list;
  preparationCopy = preparation;
  completionCopy = completion;
  v9 = completionCopy;
  v10 = listCopy;
  v11 = messageCopy;
  v12 = preparationCopy;
  v13 = [UIWindowSceneActivationAction actionWithIdentifier:0 alternateAction:0 configurationProvider:v15];

  return v13;
}

+ (void)openComposeWithContext:(id)context presentationSource:(id)source requestingScene:(id)scene
{
  sourceCopy = source;
  v9 = [self composeWindowSceneActivationConfigurationWithContext:context presentationSource:sourceCopy requestingScene:scene];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((sourceCopy == 0) | isKindOfClass & 1)
  {
    v11 = +[MFBayAdoption log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = sourceCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Open compose from presentation source: %{public}@", &v15, 0xCu);
    }
  }

  else
  {
    v11 = +[MFBayAdoption log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10048AE08(sourceCopy, v11);
    }
  }

  +[UIApplication sharedApplication];
  if (isKindOfClass)
    v12 = {;
    [v12 _requestSceneSessionActivationWithConfiguration:v9 errorHandler:&stru_100653410];
  }

  else
    v12 = {;
    userActivity = [v9 userActivity];
    options = [v9 options];
    [v12 requestSceneSessionActivation:0 userActivity:userActivity options:options errorHandler:&stru_100653430];
  }
}

+ (id)composeWindowSceneActivationConfigurationWithContext:(id)context presentationSource:(id)source requestingScene:(id)scene
{
  contextCopy = context;
  sourceCopy = source;
  sceneCopy = scene;
  v11 = [NSUserActivity alloc];
  v12 = [v11 initWithActivityType:MSMailActivityHandoffTypeComposeWithStreams];
  v13 = [NSMutableDictionary alloc];
  v28 = MSMailActivityHandoffTypeKey;
  v29 = MSMailActivityHandoffTypeComposeSansStreams;
  v14 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v15 = [v13 initWithDictionary:v14];

  composeType = [contextCopy composeType];
  autosaveIdentifier = [contextCopy autosaveIdentifier];
  if (contextCopy)
  {
    compositionValues = [contextCopy compositionValues];
    v27 = 0;
    v19 = [NSKeyedArchiver archivedDataWithRootObject:compositionValues requiringSecureCoding:1 error:&v27];
    v5 = v27;

    if (!v19)
    {
      v20 = +[MFBayAdoption log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10048AF08(v5, v20);
      }
    }

    [v15 setObject:v19 forKeyedSubscript:MSMailActivityHandoffComposeKeyCompositionValues];
  }

  if ((composeType & 0xFFFFFFFFFFFFFFFELL) == 2 && autosaveIdentifier)
  {
    [v15 setObject:autosaveIdentifier forKeyedSubscript:MSMailActivityHandoffComposeKeyAutosaveID];
  }

  [v12 setUserInfo:v15];
  uUIDString = autosaveIdentifier;
  if (!autosaveIdentifier)
  {
    v5 = +[NSUUID UUID];
    uUIDString = [v5 UUIDString];
  }

  v22 = MSMailComposeWindowTargetContentIdentifierWithIdentifier();
  [v12 setTargetContentIdentifier:v22];

  if (!autosaveIdentifier)
  {
  }

  v23 = objc_alloc_init(UIWindowSceneActivationRequestOptions);
  [v23 setRequestingScene:sceneCopy];
  [v23 setPreferredPresentationStyle:2];
  v24 = [[UIWindowSceneActivationConfiguration alloc] initWithUserActivity:v12];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [[UITargetedPreview alloc] initWithView:sourceCopy];
    [v24 setPreview:v25];
  }

  [v24 setOptions:v23];

  return v24;
}

+ (id)openMessageInNewWindowConfigurationWithMessageListItem:(id)item messageList:(id)list
{
  itemCopy = item;
  listCopy = list;
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1001AA5AC;
  v22 = &unk_100653458;
  v7 = itemCopy;
  v23 = v7;
  v8 = listCopy;
  v24 = v8;
  v9 = [ConversationViewRestorationState stateWithBuilder:&v19];
  if (v9)
  {
    v10 = [NSUserActivity alloc];
    v11 = MSMailActivityHandoffTypeDisplayMessage;
    v12 = [v10 initWithActivityType:{MSMailActivityHandoffTypeDisplayMessage, v19, v20, v21, v22, v23}];
    v26[0] = v11;
    v25[0] = MSMailActivityHandoffTypeKey;
    v25[1] = MSMailActivityHandoffDisplayMessageKeyRestorationState;
    dictionaryRepresentation = [v9 dictionaryRepresentation];
    v26[1] = dictionaryRepresentation;
    v14 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v12 setUserInfo:v14];

    v15 = [[UIWindowSceneActivationConfiguration alloc] initWithUserActivity:v12];
  }

  else
  {
    v12 = [MFBayAdoption log:v19];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [v8 ef_publicDescription];
      ef_publicDescription2 = [v7 ef_publicDescription];
      sub_10048AF80(ef_publicDescription, ef_publicDescription2, buf, v12);
    }

    v15 = 0;
  }

  return v15;
}

+ (void)requestShelfPresentationForSceneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v3 = NSClassFromString(@"SBSApplicationMultiwindowService");
  if (v3)
  {
    v4 = objc_alloc_init(v3);
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      [v4 requestShelfPresentationForSceneWithIdentifier:identifierCopy];
      [v4 invalidate];
    }
  }
}

+ (void)migrateDockedDrafts:(id)drafts completion:(id)completion
{
  draftsCopy = drafts;
  completionCopy = completion;
  v16 = draftsCopy;
  if ([draftsCopy count])
  {
    v8 = dispatch_group_create();
    v9 = objc_alloc_init(NSMutableArray);
    v18 = SBSCreateOpenApplicationService();
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = draftsCopy;
    v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          dispatch_group_enter(v8);
          storedUserActivity = [v13 storedUserActivity];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_1001AAA10;
          v22[3] = &unk_10064FB80;
          v23 = v9;
          v24 = v13;
          v25 = v8;
          sub_1001AAA50(self, storedUserActivity, v18, v22);
        }

        v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001AAAF4;
    block[3] = &unk_1006509B0;
    v20 = v9;
    v21 = completionCopy;
    v15 = v9;
    dispatch_group_notify(v8, &_dispatch_main_q, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

+ (void)migrateQuickReplyDraft:(id)draft completion:(id)completion
{
  draftCopy = draft;
  completionCopy = completion;
  v8 = SBSCreateOpenApplicationService();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001AB590;
  v10[3] = &unk_10064E7F8;
  v9 = completionCopy;
  v11 = v9;
  sub_1001AAC38(self, draftCopy, v8, 0, v10);
}

@end