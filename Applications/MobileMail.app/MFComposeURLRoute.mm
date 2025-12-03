@interface MFComposeURLRoute
- (BOOL)canRouteRequest:(id)request;
- (ComposeCapable)scene;
- (MFComposeURLRoute)initWithScene:(id)scene senderResolver:(id)resolver;
- (MFComposeURLRouteSenderResolver)senderResolver;
- (id)preferredSenderFromMessage:(id)message;
- (id)routeRequest:(id)request;
@end

@implementation MFComposeURLRoute

- (MFComposeURLRoute)initWithScene:(id)scene senderResolver:(id)resolver
{
  sceneCopy = scene;
  resolverCopy = resolver;
  v11.receiver = self;
  v11.super_class = MFComposeURLRoute;
  v8 = [(MFComposeURLRoute *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scene, sceneCopy);
    v9->_priority = 0;
    objc_storeWeak(&v9->_senderResolver, resolverCopy);
  }

  return v9;
}

- (BOOL)canRouteRequest:(id)request
{
  v3 = [request URL];
  v4 = [v3 ef_hasScheme:EMMailToURLScheme];

  return v4;
}

- (id)routeRequest:(id)request
{
  requestCopy = request;
  v5 = [_MFMailCompositionContext alloc];
  v6 = [requestCopy URL];
  v7 = [v5 initWithURL:v6 composeType:0 originalMessage:0 legacyMessage:0];

  sourceMessageListItem = [requestCopy sourceMessageListItem];
  displayMessage = [sourceMessageListItem displayMessage];
  resultIfAvailable = [displayMessage resultIfAvailable];

  isExternal = [requestCopy isExternal];
  if (resultIfAvailable)
  {
    v12 = isExternal;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    senderResolver = +[MFURLRoutingRequest log];
    if (os_log_type_enabled(senderResolver, OS_LOG_TYPE_DEBUG))
    {
      ef_publicDescription = [requestCopy ef_publicDescription];
      sub_10048B218(ef_publicDescription, buf, senderResolver);
    }
  }

  else
  {
    v15 = +[MFURLRoutingRequest log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      ef_publicDescription2 = [requestCopy ef_publicDescription];
      sub_10048B1C0(ef_publicDescription2, buf, v15);
    }

    senderResolver = [(MFComposeURLRoute *)self senderResolver];
    v17 = [senderResolver preferredSenderFromMessage:resultIfAvailable];
    [v7 setPreferredSendingEmailAddress:v17];
  }

  [v7 setShowKeyboardImmediately:1];
  v18 = +[EFPromise promise];
  scene = [(MFComposeURLRoute *)self scene];
  v20 = scene;
  if (scene)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1001B53FC;
    v25[3] = &unk_10064C6B0;
    v26 = scene;
    v27 = v7;
    v28 = v18;
    v21 = +[EFScheduler mainThreadScheduler];
    [v21 performBlock:v25];

    requestCopy = v26;
  }

  else
  {
    requestCopy = [NSError mf_generalRoutingErrorWithDescription:@"Can't present compose request:scene is nil.", requestCopy];
    [v18 finishWithError:requestCopy];
  }

  future = [v18 future];

  return future;
}

- (id)preferredSenderFromMessage:(id)message
{
  messageCopy = message;
  scene = [(MFComposeURLRoute *)self scene];
  mailboxProvider = [scene mailboxProvider];
  mailboxObjectIDs = [messageCopy mailboxObjectIDs];
  firstObject = [mailboxObjectIDs firstObject];
  v9 = [mailboxProvider legacyMailboxForObjectID:firstObject];

  v10 = [[MFEMMessageStore alloc] initWithEMMessage:messageCopy messageClass:objc_opt_class() mailboxUid:v9 skipAttachmentDownload:1];
  legacyMessage = [v10 legacyMessage];
  preferredEmailAddressToReplyWith = [legacyMessage preferredEmailAddressToReplyWith];

  return preferredEmailAddressToReplyWith;
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