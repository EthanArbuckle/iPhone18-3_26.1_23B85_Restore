@interface MFComposeURLRoute
- (BOOL)canRouteRequest:(id)a3;
- (ComposeCapable)scene;
- (MFComposeURLRoute)initWithScene:(id)a3 senderResolver:(id)a4;
- (MFComposeURLRouteSenderResolver)senderResolver;
- (id)preferredSenderFromMessage:(id)a3;
- (id)routeRequest:(id)a3;
@end

@implementation MFComposeURLRoute

- (MFComposeURLRoute)initWithScene:(id)a3 senderResolver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MFComposeURLRoute;
  v8 = [(MFComposeURLRoute *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scene, v6);
    v9->_priority = 0;
    objc_storeWeak(&v9->_senderResolver, v7);
  }

  return v9;
}

- (BOOL)canRouteRequest:(id)a3
{
  v3 = [a3 URL];
  v4 = [v3 ef_hasScheme:EMMailToURLScheme];

  return v4;
}

- (id)routeRequest:(id)a3
{
  v4 = a3;
  v5 = [_MFMailCompositionContext alloc];
  v6 = [v4 URL];
  v7 = [v5 initWithURL:v6 composeType:0 originalMessage:0 legacyMessage:0];

  v8 = [v4 sourceMessageListItem];
  v9 = [v8 displayMessage];
  v10 = [v9 resultIfAvailable];

  v11 = [v4 isExternal];
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = +[MFURLRoutingRequest log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v4 ef_publicDescription];
      sub_10048B218(v14, buf, v13);
    }
  }

  else
  {
    v15 = +[MFURLRoutingRequest log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = [v4 ef_publicDescription];
      sub_10048B1C0(v16, buf, v15);
    }

    v13 = [(MFComposeURLRoute *)self senderResolver];
    v17 = [v13 preferredSenderFromMessage:v10];
    [v7 setPreferredSendingEmailAddress:v17];
  }

  [v7 setShowKeyboardImmediately:1];
  v18 = +[EFPromise promise];
  v19 = [(MFComposeURLRoute *)self scene];
  v20 = v19;
  if (v19)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1001B53FC;
    v25[3] = &unk_10064C6B0;
    v26 = v19;
    v27 = v7;
    v28 = v18;
    v21 = +[EFScheduler mainThreadScheduler];
    [v21 performBlock:v25];

    v22 = v26;
  }

  else
  {
    v22 = [NSError mf_generalRoutingErrorWithDescription:@"Can't present compose request:scene is nil.", v4];
    [v18 finishWithError:v22];
  }

  v23 = [v18 future];

  return v23;
}

- (id)preferredSenderFromMessage:(id)a3
{
  v4 = a3;
  v5 = [(MFComposeURLRoute *)self scene];
  v6 = [v5 mailboxProvider];
  v7 = [v4 mailboxObjectIDs];
  v8 = [v7 firstObject];
  v9 = [v6 legacyMailboxForObjectID:v8];

  v10 = [[MFEMMessageStore alloc] initWithEMMessage:v4 messageClass:objc_opt_class() mailboxUid:v9 skipAttachmentDownload:1];
  v11 = [v10 legacyMessage];
  v12 = [v11 preferredEmailAddressToReplyWith];

  return v12;
}

- (ComposeCapable)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (MFComposeURLRouteSenderResolver)senderResolver
{
  WeakRetained = objc_loadWeakRetained(&self->_senderResolver);

  return WeakRetained;
}

@end