@interface MFMailboxURLRoute
- (BOOL)_isCombinedMailboxURL:(id)l;
- (BOOL)canRouteRequest:(id)request;
- (DaemonInterfaceProviding)scene;
- (MFMailboxURLRoute)initWithScene:(id)scene;
- (id)_combinedMailboxes;
- (id)_mailboxFromEmailAddress:(id)address mailboxPath:(id)path;
- (id)routeRequest:(id)request;
- (void)_routeToAccountMailbox:(id)mailbox promise:(id)promise;
- (void)_routeToCombinedMailbox:(id)mailbox promise:(id)promise;
@end

@implementation MFMailboxURLRoute

- (MFMailboxURLRoute)initWithScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = MFMailboxURLRoute;
  v5 = [(MFMailboxURLRoute *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
    v6->_priority = 0;
  }

  return v6;
}

- (BOOL)canRouteRequest:(id)request
{
  v3 = [request URL];
  v4 = [v3 ef_hasScheme:EMAppleMailboxURLScheme];

  return v4;
}

- (id)routeRequest:(id)request
{
  requestCopy = request;
  v25 = [requestCopy URL];
  v26 = +[EFPromise promise];
  [NSURLComponents componentsWithURL:v25 resolvingAgainstBaseURL:0];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v24 = v32 = 0u;
  obj = [v24 queryItems];
  v3 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *v32;
  do
  {
    for (i = 0; i != v3; i = i + 1)
    {
      if (*v32 != v4)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v31 + 1) + 8 * i);
      name = [v6 name];
      if ([name isEqualToString:@"origin"])
      {
        value = [v6 value];
        v9 = [value isEqualToString:@"mailCleanupDashboard"];

        if (!v9)
        {
          continue;
        }

        scene = [(MFMailboxURLRoute *)self scene];
        mailboxPickerController = [scene mailboxPickerController];
        name = [mailboxPickerController messageListViewController];

        mailboxes = [name mailboxes];
        firstObject = [mailboxes firstObject];
        account = [firstObject account];
        identityEmailAddress = [account identityEmailAddress];
        stringValue = [identityEmailAddress stringValue];

        v17 = +[MFURLRoutingRequest log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [EFPrivacy ec_partiallyRedactedStringForAddress:stringValue];
          *buf = 138543362;
          v36 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Mail Cleanup Dashboard origin detected - Origin account: %{public}@", buf, 0xCu);
        }
      }
    }

    v3 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  }

  while (v3);
LABEL_14:

  if ([(MFMailboxURLRoute *)self _isCombinedMailboxURL:v24])
  {
    [(MFMailboxURLRoute *)self _routeToCombinedMailbox:requestCopy promise:v26];
  }

  else
  {
    [(MFMailboxURLRoute *)self _routeToAccountMailbox:requestCopy promise:v26];
  }

  future = [v26 future];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1001D86FC;
  v29[3] = &unk_10064D028;
  v20 = requestCopy;
  v30 = v20;
  [future addFailureBlock:v29];

  future2 = [v26 future];

  return future2;
}

- (id)_mailboxFromEmailAddress:(id)address mailboxPath:(id)path
{
  addressCopy = address;
  pathCopy = path;
  scene = [(MFMailboxURLRoute *)self scene];
  daemonInterface = [scene daemonInterface];
  accountRepository = [daemonInterface accountRepository];

  receivingAccounts = [accountRepository receivingAccounts];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001D8A34;
  v22[3] = &unk_100654460;
  v12 = addressCopy;
  v23 = v12;
  v13 = [receivingAccounts ef_firstObjectPassingTest:v22];
  if ([pathCopy hasPrefix:@"/"])
  {
    v14 = [pathCopy substringFromIndex:1];

    pathCopy = v14;
  }

  objectID = [v13 objectID];
  representedObjectID = [objectID representedObjectID];

  if (v13 && representedObjectID)
  {
    v17 = [MailAccount accountWithUniqueId:representedObjectID];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 mailboxUidForRelativePath:pathCopy create:0];
      if (v19)
      {
        goto LABEL_15;
      }

      v20 = +[MFURLRoutingRequest log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10048B8C8();
      }
    }

    else
    {
      v20 = +[MFURLRoutingRequest log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10048B904();
      }
    }
  }

  else
  {
    v18 = +[MFURLRoutingRequest log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10048B88C();
    }
  }

  v19 = 0;
LABEL_15:

  return v19;
}

- (BOOL)_isCombinedMailboxURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  user = [lCopy user];
  v7 = 0;
  if (!user && host)
  {
    _combinedMailboxes = [(MFMailboxURLRoute *)self _combinedMailboxes];
    v7 = [_combinedMailboxes containsObject:host];
  }

  return v7;
}

- (void)_routeToCombinedMailbox:(id)mailbox promise:(id)promise
{
  mailboxCopy = mailbox;
  promiseCopy = promise;
  v8 = [mailboxCopy URL];
  v9 = [NSURLComponents componentsWithURL:v8 resolvingAgainstBaseURL:0];

  [v9 host];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D8CC8;
  v13[3] = &unk_10064C6B0;
  v10 = v13[4] = self;
  v14 = v10;
  v11 = promiseCopy;
  v15 = v11;
  v12 = +[EFScheduler mainThreadScheduler];
  [v12 performBlock:v13];
}

- (void)_routeToAccountMailbox:(id)mailbox promise:(id)promise
{
  mailboxCopy = mailbox;
  promiseCopy = promise;
  v7 = [mailboxCopy URL];
  v8 = [NSURLComponents componentsWithURL:v7 resolvingAgainstBaseURL:0];

  user = [v8 user];
  host = [v8 host];
  v11 = [NSString stringWithFormat:@"%@@%@", user, host];

  v12 = [[ECEmailAddress alloc] initWithString:v11];
  if (v12)
  {
    path = [v8 path];
    v14 = [(MFMailboxURLRoute *)self _mailboxFromEmailAddress:v12 mailboxPath:path];

    if (v14)
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1001D9254;
      v27[3] = &unk_10064E348;
      v27[4] = self;
      v15 = v14;
      v28 = v15;
      v29 = v8;
      v30 = promiseCopy;
      v16 = +[EFScheduler mainThreadScheduler];
      [v16 performBlock:v27];

      v14 = v15;
    }

    else
    {
      v33 = NSURLErrorKey;
      v21 = [v8 URL];
      v34 = v21;
      v22 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v23 = [NSError errorWithDomain:NSURLErrorDomain code:-1000 userInfo:v22];

      v24 = [NSError mf_routingErrorWithUnderlyingError:v23 request:mailboxCopy allowFallbackRouting:0];
      [promiseCopy finishWithError:v24];

      v25 = +[MFURLRoutingRequest log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10048B978();
      }
    }
  }

  else
  {
    v31 = NSURLErrorKey;
    v17 = [v8 URL];
    v32 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v14 = [NSError errorWithDomain:NSURLErrorDomain code:-1000 userInfo:v18];

    v19 = [NSError mf_routingErrorWithUnderlyingError:v14 request:mailboxCopy allowFallbackRouting:0];
    [promiseCopy finishWithError:v19];

    v20 = +[MFURLRoutingRequest log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10048B9B4();
    }
  }
}

- (id)_combinedMailboxes
{
  if (qword_1006DD530 != -1)
  {
    sub_10048B9F0();
  }

  v3 = qword_1006DD528;

  return v3;
}

- (DaemonInterfaceProviding)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end