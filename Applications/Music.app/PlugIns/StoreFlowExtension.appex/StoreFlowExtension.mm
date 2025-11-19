id sub_100001350(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = &kCFBooleanTrue;
  if (!a2)
  {
    v4 = &kCFBooleanFalse;
  }

  v6 = *v4;
  [v3 callWithArguments:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v6, 1)}];
  return [*(a1 + 32) setThisObject:0];
}

uint64_t sub_1000013F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(@"Failed to enable cloud library with error: %@", a2);
  }

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

id sub_1000015CC(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = &kCFBooleanTrue;
  if (!a2)
  {
    v4 = &kCFBooleanFalse;
  }

  v6 = *v4;
  [v3 callWithArguments:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v6, 1)}];
  return [*(a1 + 32) setThisObject:0];
}

uint64_t sub_100001670(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(@"Failed to disable cloud library with error: %@", a2);
  }

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100001968(id a1)
{
  +[MusicSubscriptionStatusHacks setupSubscriptionStatusHacks];
  v1 = objc_alloc_init(MusicStoreFlowScriptingClientController);
  v2 = qword_100011760;
  qword_100011760 = v1;

  v4 = objc_alloc_init(SUClientInterface);
  [v4 setClientIdentifier:ISClientIdentifierMusicPlayer];
  v3 = objc_alloc_init(MusicStoreFlowViewControllerFactory);
  [v4 setViewControllerFactory:v3];
  [qword_100011760 setClientInterface:v4];
  [SUClientController setSharedController:qword_100011760];
}

void sub_10000253C(id a1)
{
  v1 = objc_opt_class();
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100002700;
  v17[3] = &unk_10000C460;
  v17[4] = &v18;
  v17[5] = "getStatusWithOptions:statusBlock:";
  v2 = objc_retainBlock(v17);
  v3 = imp_implementationWithBlock(v2);
  InstanceMethod = class_getInstanceMethod(v1, "getStatusWithOptions:statusBlock:");
  TypeEncoding = method_getTypeEncoding(InstanceMethod);
  v6 = class_replaceMethod(v1, "getStatusWithOptions:statusBlock:", v3, TypeEncoding);

  v19[3] = v6;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000027EC;
  v12[3] = &unk_10000C4A8;
  v12[4] = &v13;
  v12[5] = "modifyLastKnownStatusUsingBlock:";
  v7 = objc_retainBlock(v12);
  v8 = imp_implementationWithBlock(v7);
  v9 = class_getInstanceMethod(v1, "modifyLastKnownStatusUsingBlock:");
  v10 = method_getTypeEncoding(v9);
  v11 = class_replaceMethod(v1, "modifyLastKnownStatusUsingBlock:", v8, v10);

  v14[3] = v11;
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v18, 8);
}

void sub_100002700(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKey:SSVSubscriptionStatusOptionIgnoreCache];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = +[ICMusicSubscriptionStatusController sharedStatusController];
    [v11 invalidateCachedSubscriptionStatusWithCompletionHandler:&stru_10000C438];
  }

  v12 = *(*(*(a1 + 32) + 8) + 24);
  if (v12)
  {
    v12(v13, *(a1 + 40), v7, v8);
  }
}

void sub_1000027EC(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    v2(a2, *(a1 + 40));
  }

  v3 = +[ICMusicSubscriptionStatusController sharedStatusController];
  [v3 invalidateCachedSubscriptionStatusWithCompletionHandler:&stru_10000C480];
}

void sub_100002E8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100002EA8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v8)
    {
      [WeakRetained _reloadWithCloudServiceSetupURL:v8 forReloadContext:*(a1 + 32)];
    }

    else
    {
      NSLog(@"Error: Failed to resolve cloud service setup URL for %@. %@", *(a1 + 40), v5);
      [v7 _didFinishLoadingWithSuccess:0 error:v5];
    }
  }
}

uint64_t sub_100003248(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100003330(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100003860(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100003950;
      v8[3] = &unk_10000C520;
      v9 = *(a1 + 32);
      [v5 enumerateKeysAndObjectsUsingBlock:v8];
    }
  }
}

void sub_100003950(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v9 lowercaseString];
      [v6 setObject:v7 forKey:v8];
    }
  }
}

id sub_100003A14(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [*(a1 + 32) name];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t sub_100003C4C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100004240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000426C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004380;
  v9[3] = &unk_10000C570;
  objc_copyWeak(&v15, a1 + 7);
  v10 = v6;
  v11 = a1[4];
  v12 = a1[5];
  v13 = v5;
  v14 = a1[6];
  v7 = v5;
  v8 = v6;
  dispatch_async(&_dispatch_main_q, v9);

  objc_destroyWeak(&v15);
}

void sub_100004380(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      v12 = [*(a1 + 48) queryItems];
      v4 = [v10 _cloudServiceSetupURLForAction:v11 queryItems:v12 bagDictionary:*(a1 + 56)];

      if (v4)
      {
        v6 = *(*(a1 + 64) + 16);
LABEL_9:
        v6();

        goto LABEL_10;
      }

      v3 = *(a1 + 32);
    }

    v4 = v3;
    if (!*(a1 + 32))
    {
      v5 = SSError();

      v4 = v5;
    }

    v6 = *(*(a1 + 64) + 16);
    goto LABEL_9;
  }

  v7 = *(a1 + 64);
  v13 = NSLocalizedDescriptionKey;
  v14 = @"Unexpected.";
  v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = [NSError errorWithDomain:NSCocoaErrorDomain code:0 userInfo:v8];
  (*(v7 + 16))(v7, 0, v9);

LABEL_10:
}