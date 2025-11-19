@interface MFMailboxURLRoute
- (BOOL)_isCombinedMailboxURL:(id)a3;
- (BOOL)canRouteRequest:(id)a3;
- (DaemonInterfaceProviding)scene;
- (MFMailboxURLRoute)initWithScene:(id)a3;
- (id)_combinedMailboxes;
- (id)_mailboxFromEmailAddress:(id)a3 mailboxPath:(id)a4;
- (id)routeRequest:(id)a3;
- (void)_routeToAccountMailbox:(id)a3 promise:(id)a4;
- (void)_routeToCombinedMailbox:(id)a3 promise:(id)a4;
@end

@implementation MFMailboxURLRoute

- (MFMailboxURLRoute)initWithScene:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MFMailboxURLRoute;
  v5 = [(MFMailboxURLRoute *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
    v6->_priority = 0;
  }

  return v6;
}

- (BOOL)canRouteRequest:(id)a3
{
  v3 = [a3 URL];
  v4 = [v3 ef_hasScheme:EMAppleMailboxURLScheme];

  return v4;
}

- (id)routeRequest:(id)a3
{
  v23 = a3;
  v25 = [v23 URL];
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
      v7 = [v6 name];
      if ([v7 isEqualToString:@"origin"])
      {
        v8 = [v6 value];
        v9 = [v8 isEqualToString:@"mailCleanupDashboard"];

        if (!v9)
        {
          continue;
        }

        v10 = [(MFMailboxURLRoute *)self scene];
        v11 = [v10 mailboxPickerController];
        v7 = [v11 messageListViewController];

        v12 = [v7 mailboxes];
        v13 = [v12 firstObject];
        v14 = [v13 account];
        v15 = [v14 identityEmailAddress];
        v16 = [v15 stringValue];

        v17 = +[MFURLRoutingRequest log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [EFPrivacy ec_partiallyRedactedStringForAddress:v16];
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
    [(MFMailboxURLRoute *)self _routeToCombinedMailbox:v23 promise:v26];
  }

  else
  {
    [(MFMailboxURLRoute *)self _routeToAccountMailbox:v23 promise:v26];
  }

  v19 = [v26 future];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1001D86FC;
  v29[3] = &unk_10064D028;
  v20 = v23;
  v30 = v20;
  [v19 addFailureBlock:v29];

  v21 = [v26 future];

  return v21;
}

- (id)_mailboxFromEmailAddress:(id)a3 mailboxPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFMailboxURLRoute *)self scene];
  v9 = [v8 daemonInterface];
  v10 = [v9 accountRepository];

  v11 = [v10 receivingAccounts];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001D8A34;
  v22[3] = &unk_100654460;
  v12 = v6;
  v23 = v12;
  v13 = [v11 ef_firstObjectPassingTest:v22];
  if ([v7 hasPrefix:@"/"])
  {
    v14 = [v7 substringFromIndex:1];

    v7 = v14;
  }

  v15 = [v13 objectID];
  v16 = [v15 representedObjectID];

  if (v13 && v16)
  {
    v17 = [MailAccount accountWithUniqueId:v16];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 mailboxUidForRelativePath:v7 create:0];
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

- (BOOL)_isCombinedMailboxURL:(id)a3
{
  v4 = a3;
  v5 = [v4 host];
  v6 = [v4 user];
  v7 = 0;
  if (!v6 && v5)
  {
    v8 = [(MFMailboxURLRoute *)self _combinedMailboxes];
    v7 = [v8 containsObject:v5];
  }

  return v7;
}

- (void)_routeToCombinedMailbox:(id)a3 promise:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 URL];
  v9 = [NSURLComponents componentsWithURL:v8 resolvingAgainstBaseURL:0];

  [v9 host];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D8CC8;
  v13[3] = &unk_10064C6B0;
  v10 = v13[4] = self;
  v14 = v10;
  v11 = v7;
  v15 = v11;
  v12 = +[EFScheduler mainThreadScheduler];
  [v12 performBlock:v13];
}

- (void)_routeToAccountMailbox:(id)a3 promise:(id)a4
{
  v6 = a3;
  v26 = a4;
  v7 = [v6 URL];
  v8 = [NSURLComponents componentsWithURL:v7 resolvingAgainstBaseURL:0];

  v9 = [v8 user];
  v10 = [v8 host];
  v11 = [NSString stringWithFormat:@"%@@%@", v9, v10];

  v12 = [[ECEmailAddress alloc] initWithString:v11];
  if (v12)
  {
    v13 = [v8 path];
    v14 = [(MFMailboxURLRoute *)self _mailboxFromEmailAddress:v12 mailboxPath:v13];

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
      v30 = v26;
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

      v24 = [NSError mf_routingErrorWithUnderlyingError:v23 request:v6 allowFallbackRouting:0];
      [v26 finishWithError:v24];

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

    v19 = [NSError mf_routingErrorWithUnderlyingError:v14 request:v6 allowFallbackRouting:0];
    [v26 finishWithError:v19];

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