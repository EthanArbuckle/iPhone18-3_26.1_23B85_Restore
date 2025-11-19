void sub_1508(void *a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = UIImagePNGRepresentation(v3);
    v5 = a1[4];
    if (v5)
    {
      [v5 _setImageData:v4];
    }

    else
    {
      v6 = [[INImage alloc] _initWithIdentifier:a1[5]];
      [v6 _setImageData:v4];
      v7 = +[INCache sharedCache];
      [v7 addCacheableObject:v6];
    }
  }

  (*(a1[6] + 16))();
}

void sub_2A0C(id a1, SiriUITemplateViewController *a2, BOOL *a3)
{
  v4 = a2;
  [(SiriUITemplateViewController *)v4 didMoveToParentViewController:0];
  v3 = [(SiriUITemplateViewController *)v4 view];
  [v3 removeFromTemplatedSuperview];

  [(SiriUITemplateViewController *)v4 removeFromParentViewController];
}

void sub_2A74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2B64;
  block[3] = &unk_C400;
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = v6;
  v14 = *(a1 + 48);
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_2B64(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = [NSString hexStringFromData:*(a1 + 40)];
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[SiriIntentsSnippetViewController setSnippet:]_block_invoke_3";
      v14 = 2112;
      v15 = v2;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%s Set facade intent identifier = %@", &v12, 0x16u);
    }

    [*(a1 + 48) setIdentifier:v2];
  }

  else
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 56);
      v12 = 136315394;
      v13 = "[SiriIntentsSnippetViewController setSnippet:]_block_invoke";
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%s Unable to generate facade intent ID due to %@", &v12, 0x16u);
    }
  }

  v6 = [*(*(a1 + 64) + 8) intentResponse];
  v7 = [v6 typeName];
  v8 = [*(*(a1 + 64) + 8) intentResponse];
  v9 = [v8 data];
  v10 = INIntentResponseCreate();

  v11 = [[INInteraction alloc] initWithIntent:*(a1 + 48) response:v10];
  [*(a1 + 64) _connectToWidgetForInteraction:v11];
}

void sub_2EDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = AFSiriLogContextConnection;
    if (v6)
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_4150(v7, a1);
      }
    }

    else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 136315394;
      v18 = "[SiriIntentsSnippetViewController _connectToWidgetForInteraction:]_block_invoke";
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%s No remote view controller for interaction: %@", buf, 0x16u);
    }

    [*(a1 + 40) _finishLoadingViewIfNecessary];
  }

  else
  {
    v8 = *(a1 + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_307C;
    v13[3] = &unk_C478;
    v9 = v8;
    v10 = *(a1 + 40);
    v14 = v9;
    v15 = v10;
    v16 = v5;
    [v16 configureForParameters:0 ofInteraction:v9 interactiveBehavior:0 context:0 completion:v13];
  }
}

void sub_307C(uint64_t a1, double a2, double a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a5;
  v10 = a6;
  if (v10)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_41C8(v10, a1);
    }

    [*(a1 + 40) _finishLoadingViewIfNecessary];
  }

  else
  {
    objc_storeStrong((*(a1 + 40) + 16), *(a1 + 48));
    [*(*(a1 + 40) + 16) setInheritsSecurity:1];
    [*(a1 + 40) addChildViewController:*(*(a1 + 40) + 16)];
    v11 = [*(a1 + 40) view];
    v12 = [*(*(a1 + 40) + 16) view];
    v13 = [*(*(a1 + 40) + 8) widgetIndex];
    [v11 setAuxiliaryView:v12 atIndex:objc_msgSend(v13 initialHeight:"unsignedIntegerValue") animated:0 completion:{0, a3}];

    [*(*(a1 + 40) + 16) didMoveToParentViewController:?];
    v14 = *(a1 + 40);
    v15 = *(v14 + 16);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_3224;
    v16[3] = &unk_C450;
    v16[4] = v14;
    [v15 _queryRepresentedPropertiesWithCompletion:v16];
  }
}

id sub_3224(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _redactTemplateViewControllersForRepresentedKeyPaths:a2];
  v3 = *(a1 + 32);

  return [v3 _finishLoadingViewIfNecessary];
}

void sub_3BC4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 40) != a3)
  {
    v12 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v12;
      [v8 setSelected:0];
      v9 = *(*(a1 + 32) + 56);
      v10 = [v8 templateModelPrivate];

      v11 = [v10 modelIdentifier];
      [v9 removeObjectForKey:v11];
    }

    else
    {
      *a4 = 1;
    }

    v7 = v12;
  }
}

void sub_4078(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_4150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v5 = 136315650;
  sub_4058();
  sub_4078(&dword_0, v3, v4, "%s Failed to instantiate remote view controller with error: %{public}@ for interaction: %@", v5);
}

void sub_41C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v5 = 136315650;
  sub_4058();
  sub_4078(&dword_0, v3, v4, "%s Failed to configure remote view controller with error: %{public}@ for interaction: %@", v5);
}