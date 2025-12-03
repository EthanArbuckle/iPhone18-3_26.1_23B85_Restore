@interface ActionRequestHandler
- (BOOL)_requiredAppInstalled;
- (id)_conversationManager;
- (void)__findFullLinkForLink:(id)link completion:(id)completion;
- (void)_getFullLinkFromLink:(id)link completion:(id)completion;
- (void)_retrieveFullLinkFromLink:(id)link completion:(id)completion;
- (void)extendExpirationOfURL:(id)l toExpirationDate:(id)date withCompletion:(id)completion;
- (void)fetchAvailableRoomTypesWithCompletionHandler:(id)handler;
- (void)fetchVirtualConferenceForIdentifier:(id)identifier completionHandler:(id)handler;
- (void)invalidateURL:(id)l withCompletionHandler:(id)handler;
@end

@implementation ActionRequestHandler

- (BOOL)_requiredAppInstalled
{
  v2 = [LSApplicationRecord alloc];
  v3 = +[EKConferenceUtils FacetimeAppBundleID];
  v6 = 0;
  v4 = [v2 initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v6];

  return v4 != 0;
}

- (void)fetchAvailableRoomTypesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (![(ActionRequestHandler *)self _requiredAppInstalled])
  {
    v19 = NSLocalizedDescriptionKey;
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Application not installed" value:&stru_100004278 table:0];
    v20 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    v13 = EKVirtualConferenceProviderErrorDomain;
    v14 = 0;
LABEL_6:
    v8 = [NSError errorWithDomain:v13 code:v14 userInfo:v12];

    handlerCopy[2](handlerCopy, &__NSArray0__struct, v8);
    goto LABEL_7;
  }

  if (![(ActionRequestHandler *)self _requiredServiceAvailable])
  {
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Service is not available" value:&stru_100004278 table:0];
    v18 = v16;
    v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    v13 = EKVirtualConferenceProviderErrorDomain;
    v14 = 1;
    goto LABEL_6;
  }

  v5 = [EKVirtualConferenceRoomTypeDescriptor alloc];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"FaceTime" value:&stru_100004278 table:0];
  v8 = [v5 initWithTitle:v7 identifier:@"facetime_identifier"];

  v21 = v8;
  v9 = [NSArray arrayWithObjects:&v21 count:1];
  handlerCopy[2](handlerCopy, v9, 0);

LABEL_7:
}

- (void)fetchVirtualConferenceForIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([identifier isEqualToString:@"facetime_identifier"])
  {
    _conversationManager = [(ActionRequestHandler *)self _conversationManager];
    v8 = +[NSSet set];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100000FD4;
    v10[3] = &unk_100004178;
    v11 = handlerCopy;
    [_conversationManager generateLinkWithInvitedMemberHandles:v8 completionHandler:v10];
  }

  else
  {
    v9 = [NSError errorWithDomain:EKVirtualConferenceProviderErrorDomain code:3 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v9);
  }
}

- (void)invalidateURL:(id)l withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [TUConversationLink conversationLinkForURL:l];
  if (v7)
  {
    _conversationManager = [(ActionRequestHandler *)self _conversationManager];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000128C;
    v10[3] = &unk_1000041A0;
    v11 = handlerCopy;
    [_conversationManager invalidateLink:v7 completionHandler:v10];
  }

  else
  {
    v9 = [NSError errorWithDomain:EKVirtualConferenceProviderErrorDomain code:4 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

- (void)extendExpirationOfURL:(id)l toExpirationDate:(id)date withCompletion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  v10 = [TUConversationLink conversationLinkForURL:l];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100001408;
  v13[3] = &unk_1000041F0;
  v14 = dateCopy;
  v15 = completionCopy;
  v13[4] = self;
  v11 = dateCopy;
  v12 = completionCopy;
  [(ActionRequestHandler *)self _retrieveFullLinkFromLink:v10 completion:v13];
}

- (id)_conversationManager
{
  conversationManager = self->_conversationManager;
  if (!conversationManager)
  {
    v4 = objc_alloc_init(TUConversationManager);
    v5 = self->_conversationManager;
    self->_conversationManager = v4;

    conversationManager = self->_conversationManager;
  }

  return conversationManager;
}

- (void)_retrieveFullLinkFromLink:(id)link completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001844;
  v7[3] = &unk_100004178;
  completionCopy = completion;
  v6 = completionCopy;
  [(ActionRequestHandler *)self _getFullLinkFromLink:link completion:v7];
}

- (void)_getFullLinkFromLink:(id)link completion:(id)completion
{
  linkCopy = link;
  completionCopy = completion;
  if (self->_linksOwnedByThisUser)
  {
    [(ActionRequestHandler *)self __findFullLinkForLink:linkCopy completion:completionCopy];
  }

  else
  {
    _conversationManager = [(ActionRequestHandler *)self _conversationManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100001958;
    v9[3] = &unk_100004218;
    v11 = completionCopy;
    v9[4] = self;
    v10 = linkCopy;
    [_conversationManager getActiveLinksWithCreatedOnly:1 completionHandler:v9];
  }
}

- (void)__findFullLinkForLink:(id)link completion:(id)completion
{
  linkCopy = link;
  completionCopy = completion;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_linksOwnedByThisUser;
  v9 = [(NSSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([linkCopy isEquivalentToConversationLink:{v13, v14}])
        {
          completionCopy[2](completionCopy, v13, 0);

          goto LABEL_11;
        }
      }

      v10 = [(NSSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  completionCopy[2](completionCopy, 0, 0);
LABEL_11:
}

@end