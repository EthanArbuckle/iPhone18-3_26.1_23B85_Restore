@interface MFFileURLRoute
- (BOOL)_urlReferencesMailLibrary:(id)library;
- (BOOL)canRouteRequest:(id)request;
- (ComposeCapable)scene;
- (MFFileURLRoute)initWithScene:(id)scene;
- (id)routeRequest:(id)request;
@end

@implementation MFFileURLRoute

- (MFFileURLRoute)initWithScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = MFFileURLRoute;
  v5 = [(MFFileURLRoute *)&v8 init];
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
  isFileURL = [v3 isFileURL];

  return isFileURL;
}

- (id)routeRequest:(id)request
{
  requestCopy = request;
  v5 = +[EFPromise promise];
  v6 = [requestCopy URL];
  v7 = [(MFFileURLRoute *)self _urlReferencesMailLibrary:v6];

  if (v7)
  {
    v8 = +[MFURLRoutingRequest log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      ef_publicDescription = [requestCopy ef_publicDescription];
      sub_10048B644(ef_publicDescription, buf, v8);
    }

    errorOnlyCompletionHandlerAdapter = [v5 errorOnlyCompletionHandlerAdapter];
    errorOnlyCompletionHandlerAdapter2 = [NSError mf_blockedURLErrorWithRequest:requestCopy];
    errorOnlyCompletionHandlerAdapter[2](errorOnlyCompletionHandlerAdapter, errorOnlyCompletionHandlerAdapter2);
  }

  else
  {
    v12 = +[NSFileManager defaultManager];
    v13 = [requestCopy URL];
    path = [v13 path];
    v15 = [v12 isReadableFileAtPath:path];

    if (v15)
    {
      errorOnlyCompletionHandlerAdapter = [[_MFMailCompositionContext alloc] initWithComposeType:0];
      [errorOnlyCompletionHandlerAdapter setShowKeyboardImmediately:1];
      v16 = [requestCopy URL];
      [errorOnlyCompletionHandlerAdapter insertAttachmentWithURL:v16];

      scene = [(MFFileURLRoute *)self scene];
      errorOnlyCompletionHandlerAdapter2 = scene;
      if (scene)
      {
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1001CBCBC;
        v25[3] = &unk_10064C6B0;
        v26 = scene;
        v27 = errorOnlyCompletionHandlerAdapter;
        v28 = v5;
        v18 = +[EFScheduler mainThreadScheduler];
        [v18 performBlock:v25];
      }

      else
      {
        v22 = [NSError mf_generalRoutingErrorWithDescription:@"Cannot present compose. Scene is nil." request:requestCopy];
        [v5 finishWithError:v22];
      }
    }

    else
    {
      v19 = +[MFURLRoutingRequest log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription2 = [requestCopy ef_publicDescription];
        sub_10048B5EC(ef_publicDescription2, buf, v19);
      }

      v21 = [NSError em_internalErrorWithReason:@"non-existent or unreadable file"];
      errorOnlyCompletionHandlerAdapter = [NSError mf_routingErrorWithUnderlyingError:v21 request:requestCopy allowFallbackRouting:1];

      errorOnlyCompletionHandlerAdapter2 = [v5 errorOnlyCompletionHandlerAdapter];
      errorOnlyCompletionHandlerAdapter2[2](errorOnlyCompletionHandlerAdapter2, errorOnlyCompletionHandlerAdapter);
    }
  }

  future = [v5 future];

  return future;
}

- (BOOL)_urlReferencesMailLibrary:(id)library
{
  libraryCopy = library;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v4 = +[NSFileManager defaultManager];
  v5 = +[EMPersistenceLayoutManager baseMailDirectory];
  v6 = [v4 getRelationship:&v9 ofDirectoryAtURL:v5 toItemAtURL:libraryCopy error:0];

  if (v9 < 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (ComposeCapable)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end