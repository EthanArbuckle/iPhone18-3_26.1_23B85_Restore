@interface MFBayAdoption
+ (OS_os_log)log;
+ (id)composeWindowSceneActivationConfigurationWithContext:(id)a3 presentationSource:(id)a4 requestingScene:(id)a5;
+ (id)openMessageInNewWindowActionWithMessage:(id)a3 messageList:(id)a4 preparation:(id)a5 completion:(id)a6;
+ (id)openMessageInNewWindowConfigurationWithMessageListItem:(id)a3 messageList:(id)a4;
+ (void)migrateDockedDrafts:(id)a3 completion:(id)a4;
+ (void)migrateQuickReplyDraft:(id)a3 completion:(id)a4;
+ (void)openComposeWithContext:(id)a3 presentationSource:(id)a4 requestingScene:(id)a5;
+ (void)requestShelfPresentationForSceneWithIdentifier:(id)a3;
@end

@implementation MFBayAdoption

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A98DC;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD400 != -1)
  {
    dispatch_once(&qword_1006DD400, block);
  }

  v2 = qword_1006DD3F8;

  return v2;
}

+ (id)openMessageInNewWindowActionWithMessage:(id)a3 messageList:(id)a4 preparation:(id)a5 completion:(id)a6
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001A9AD4;
  v15[3] = &unk_1006533F0;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v9 = v19;
  v10 = v17;
  v11 = v16;
  v12 = v18;
  v13 = [UIWindowSceneActivationAction actionWithIdentifier:0 alternateAction:0 configurationProvider:v15];

  return v13;
}

+ (void)openComposeWithContext:(id)a3 presentationSource:(id)a4 requestingScene:(id)a5
{
  v8 = a4;
  v9 = [a1 composeWindowSceneActivationConfigurationWithContext:a3 presentationSource:v8 requestingScene:a5];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((v8 == 0) | isKindOfClass & 1)
  {
    v11 = +[MFBayAdoption log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Open compose from presentation source: %{public}@", &v15, 0xCu);
    }
  }

  else
  {
    v11 = +[MFBayAdoption log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10048AE08(v8, v11);
    }
  }

  +[UIApplication sharedApplication];
  if (isKindOfClass)
    v12 = {;
    [v12 _requestSceneSessionActivationWithConfiguration:v9 errorHandler:&stru_100653410];
  }

  else
    v12 = {;
    v13 = [v9 userActivity];
    v14 = [v9 options];
    [v12 requestSceneSessionActivation:0 userActivity:v13 options:v14 errorHandler:&stru_100653430];
  }
}

+ (id)composeWindowSceneActivationConfigurationWithContext:(id)a3 presentationSource:(id)a4 requestingScene:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSUserActivity alloc];
  v12 = [v11 initWithActivityType:MSMailActivityHandoffTypeComposeWithStreams];
  v13 = [NSMutableDictionary alloc];
  v28 = MSMailActivityHandoffTypeKey;
  v29 = MSMailActivityHandoffTypeComposeSansStreams;
  v14 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v15 = [v13 initWithDictionary:v14];

  v16 = [v8 composeType];
  v17 = [v8 autosaveIdentifier];
  if (v8)
  {
    v18 = [v8 compositionValues];
    v27 = 0;
    v19 = [NSKeyedArchiver archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v27];
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

  if ((v16 & 0xFFFFFFFFFFFFFFFELL) == 2 && v17)
  {
    [v15 setObject:v17 forKeyedSubscript:MSMailActivityHandoffComposeKeyAutosaveID];
  }

  [v12 setUserInfo:v15];
  v21 = v17;
  if (!v17)
  {
    v5 = +[NSUUID UUID];
    v21 = [v5 UUIDString];
  }

  v22 = MSMailComposeWindowTargetContentIdentifierWithIdentifier();
  [v12 setTargetContentIdentifier:v22];

  if (!v17)
  {
  }

  v23 = objc_alloc_init(UIWindowSceneActivationRequestOptions);
  [v23 setRequestingScene:v10];
  [v23 setPreferredPresentationStyle:2];
  v24 = [[UIWindowSceneActivationConfiguration alloc] initWithUserActivity:v12];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [[UITargetedPreview alloc] initWithView:v9];
    [v24 setPreview:v25];
  }

  [v24 setOptions:v23];

  return v24;
}

+ (id)openMessageInNewWindowConfigurationWithMessageListItem:(id)a3 messageList:(id)a4
{
  v5 = a3;
  v6 = a4;
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1001AA5AC;
  v22 = &unk_100653458;
  v7 = v5;
  v23 = v7;
  v8 = v6;
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
    v13 = [v9 dictionaryRepresentation];
    v26[1] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v12 setUserInfo:v14];

    v15 = [[UIWindowSceneActivationConfiguration alloc] initWithUserActivity:v12];
  }

  else
  {
    v12 = [MFBayAdoption log:v19];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [v8 ef_publicDescription];
      v17 = [v7 ef_publicDescription];
      sub_10048AF80(v16, v17, buf, v12);
    }

    v15 = 0;
  }

  return v15;
}

+ (void)requestShelfPresentationForSceneWithIdentifier:(id)a3
{
  v5 = a3;
  v3 = NSClassFromString(@"SBSApplicationMultiwindowService");
  if (v3)
  {
    v4 = objc_alloc_init(v3);
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      [v4 requestShelfPresentationForSceneWithIdentifier:v5];
      [v4 invalidate];
    }
  }
}

+ (void)migrateDockedDrafts:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = v6;
  if ([v6 count])
  {
    v8 = dispatch_group_create();
    v9 = objc_alloc_init(NSMutableArray);
    v18 = SBSCreateOpenApplicationService();
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v6;
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
          v14 = [v13 storedUserActivity];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_1001AAA10;
          v22[3] = &unk_10064FB80;
          v23 = v9;
          v24 = v13;
          v25 = v8;
          sub_1001AAA50(a1, v14, v18, v22);
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
    v21 = v7;
    v15 = v9;
    dispatch_group_notify(v8, &_dispatch_main_q, block);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

+ (void)migrateQuickReplyDraft:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SBSCreateOpenApplicationService();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001AB590;
  v10[3] = &unk_10064E7F8;
  v9 = v7;
  v11 = v9;
  sub_1001AAC38(a1, v6, v8, 0, v10);
}

@end