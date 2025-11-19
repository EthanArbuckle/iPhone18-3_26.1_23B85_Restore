void sub_1FFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = AFSiriLogContextPlugin;
  v6 = os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v13 = 136315906;
      v14 = "[AAPCommandLaunch performWithCompletion:serviceHelper:executionInfo:]_block_invoke";
      v15 = 2114;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = a2;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> sending response = %@", &v13, 0x2Au);
      v4 = *(a1 + 40);
    }

    (*(v4 + 16))(v4, a2);
  }

  else if (v6)
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v12 = *(a1 + 32);
    v13 = 136315906;
    v14 = "[AAPCommandLaunch performWithCompletion:serviceHelper:executionInfo:]_block_invoke";
    v15 = 2114;
    v16 = v11;
    v17 = 2048;
    v18 = v12;
    v19 = 2112;
    v20 = a2;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> no completion block - dropping response = %@", &v13, 0x2Au);
  }
}

void sub_2178(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    goto LABEL_13;
  }

  v4 = a3;
  v5 = [objc_msgSend(a3 "userInfo")];
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = v5;
  if ([v5 code] != &dword_4 + 2)
  {
    goto LABEL_21;
  }

  v7 = [objc_msgSend(v6 "userInfo")];
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = [v7 domain];
  v10 = [v8 code];
  if ([v9 isEqualToString:RBSRequestErrorDomain] && v10 == &dword_8)
  {
LABEL_13:
    v14 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = 136315906;
      v20 = "[AAPCommandLaunch performWithCompletion:serviceHelper:executionInfo:]_block_invoke";
      v21 = 2114;
      v22 = v16;
      v23 = 2048;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> launched app (%@)", &v19, 0x2Au);
    }

    v12 = objc_alloc_init(SACommandSucceeded);
  }

  else
  {
LABEL_21:
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_F5B4(a1, v4);
    }

    v12 = objc_alloc_init(SACommandFailed);
    if ([objc_msgSend(v4 "underlyingErrors")])
    {
      v13 = [objc_msgSend(v4 "underlyingErrors")];
      v4 = v13;
    }

    else
    {
      v13 = v4;
    }

    [v12 setCustomErrorCode:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(v13, "code"))}];
    [v12 setCustomErrorDomain:{objc_msgSend(v4, "domain")}];
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), [v12 dictionary]);
}

void sub_2F54(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(SAAppsAppSearchResponse);
  [v4 setFoundApps:a2];
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 dictionary]);
}

id sub_2FCC(uint64_t a1, void *a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [objc_msgSend(v8 "attributeSet")];
        v10 = [LSApplicationProxy applicationProxyForIdentifier:v9];
        if ([objc_msgSend(v10 "appState")])
        {
          v11 = objc_alloc_init(SASyncNamedAppIdentifyingInfo);
          [v11 setBundleId:v9];
          [v11 setLocalizedBundleDisplayName:{objc_msgSend(objc_msgSend(v8, "attributeSet"), "displayName")}];
          [v11 setVersion:{objc_msgSend(v10, "shortVersionString")}];
          [v11 setBuildNumber:{objc_msgSend(v10, "bundleVersion")}];
          [*(a1 + 32) addObject:v11];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_3158(uint64_t a1, uint64_t a2)
{
  v3 = AFSiriLogContextPlugin;
  if (a2)
  {
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_F7BC(a1, a2, v3);
    }

    v5 = objc_alloc_init(SACommandFailed);
    (*(*(a1 + 48) + 16))(*(a1 + 48), [v5 dictionary]);
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) foundItemCount];
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = 136315906;
      v11 = "[AAPCommandSearch performWithCompletion:]_block_invoke";
      v12 = 2048;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%s Found %tu apps matching query %@: %@", &v10, 0x2Au);
    }

    v9 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
  }
}

id sub_36B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleIdentifier];

  return [v2 addObject:v3];
}

void sub_37C0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(AAPSyncStatePersistence);
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(v5 + 16) = v3;
  v6 = [*(*v4 + 16) load];
  v7 = AFSiriLogContextPlugin;
  if (v6)
  {
    v8 = v6;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_F858(v8, v7);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
  {
    sub_F920(v4);
  }

  objc_autoreleasePoolPop(v2);
}

id sub_3E28(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) state];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3ED4;
  v9[3] = &unk_20868;
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 64);
  v11 = v2;
  return [v4 _checkIfResetIsNeededForKey:v5 withStartAnchorString:v6 validity:v7 lastState:v2 completion:v9];
}

void sub_3ED4(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v7 = (a1 + 32);
  *(*(a1 + 32) + 24) = 0;
  if (!a4 || !a5)
  {
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_FDB8();
    }

    goto LABEL_18;
  }

  if (a2)
  {
    v9 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
    {
      *v27 = 136315650;
      *&v27[4] = "[AAPSyncHandler beginSyncWithAnchor:validity:count:forKey:beginInfo:configuration:]_block_invoke_2";
      *&v27[12] = 2114;
      *&v27[14] = a4;
      *&v27[22] = 2114;
      v28 = a5;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: resetting for new key = %{public}@ with validity = '%{public}@'", v27, 0x20u);
    }

    [*(a1 + 40) resetWithValidity:a5];
    v10 = [AAPSyncMetaDataSource alloc];
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = 0;
    v14 = 0;
    goto LABEL_17;
  }

  if (![a4 isEqualToAnchor:{objc_msgSend(*(a1 + 56), "keyAnchor")}])
  {
    v18 = AFSiriLogContextPlugin;
    if (!os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
    {
LABEL_16:
      v10 = [AAPSyncMetaDataSource alloc];
      v11 = *(a1 + 48);
      v13 = *(a1 + 56);
      v12 = *(a1 + 32);
      v14 = a3;
LABEL_17:
      *(*(a1 + 32) + 24) = [(AAPSyncMetaDataSource *)v10 initWithLastState:v13 startAnchor:v14 keyAnchor:a4 validity:a5 configuration:v11 observer:v12, *v27, *&v27[16], v28, *v29, *&v29[16]];
LABEL_18:
      v21 = *(*v7 + 32);
      if (v21)
      {
        v22 = AFSiriLogContextPlugin;
        if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
        {
          *v27 = 136315394;
          *&v27[4] = "[AAPSyncHandler beginSyncWithAnchor:validity:count:forKey:beginInfo:configuration:]_block_invoke";
          *&v27[12] = 2048;
          *&v27[14] = v21;
          _os_log_debug_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: releasing old processor -> %p", v27, 0x16u);
          v21 = *(*v7 + 32);
        }
      }

      goto LABEL_22;
    }

    v19 = [*(a1 + 56) keyAnchor];
    *v27 = 136316162;
    *&v27[4] = "[AAPSyncHandler beginSyncWithAnchor:validity:count:forKey:beginInfo:configuration:]_block_invoke";
    *&v27[12] = 2114;
    *&v27[14] = a5;
    *&v27[22] = 2114;
    v28 = a3;
    *v29 = 2114;
    *&v29[2] = v19;
    *&v29[10] = 2114;
    *&v29[12] = a4;
    v20 = "%s com.apple.siri.applications: reconciling changes with validity = '%{public}@' : start=%{public}@ lastKey=%{public}@ key=%{public}@";
LABEL_15:
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, v20, v27, 0x34u);
    goto LABEL_16;
  }

  if (!*(*v7 + 32))
  {
    v23 = [a3 isEqualToAnchor:{objc_msgSend(*(a1 + 56), "stopAnchor")}];
    v18 = AFSiriLogContextPlugin;
    v24 = os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO);
    if (v23)
    {
      if (v24)
      {
        v25 = [*(a1 + 56) stopAnchor];
        *v27 = 136315906;
        *&v27[4] = "[AAPSyncHandler beginSyncWithAnchor:validity:count:forKey:beginInfo:configuration:]_block_invoke";
        *&v27[12] = 2114;
        *&v27[14] = a4;
        *&v27[22] = 2114;
        v28 = v25;
        *v29 = 2114;
        *&v29[2] = a5;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: up-to-date for key = %{public}@ (%{public}@) with validity = '%{public}@'", v27, 0x2Au);
      }

      goto LABEL_18;
    }

    if (!v24)
    {
      goto LABEL_16;
    }

    v26 = [*(a1 + 56) keyAnchor];
    *v27 = 136316162;
    *&v27[4] = "[AAPSyncHandler beginSyncWithAnchor:validity:count:forKey:beginInfo:configuration:]_block_invoke";
    *&v27[12] = 2114;
    *&v27[14] = a5;
    *&v27[22] = 2114;
    v28 = a3;
    *v29 = 2114;
    *&v29[2] = v26;
    *&v29[10] = 2114;
    *&v29[12] = a4;
    v20 = "%s com.apple.siri.applications: looking up changes not in saved state with validity = '%{public}@' : start=%{public}@ lastKey=%{public}@ key=%{public}@";
    goto LABEL_15;
  }

  v16 = AFSiriLogContextPlugin;
  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
  {
    v17 = [*(a1 + 56) stopAnchor];
    *v27 = 136315906;
    *&v27[4] = "[AAPSyncHandler beginSyncWithAnchor:validity:count:forKey:beginInfo:configuration:]_block_invoke";
    *&v27[12] = 2114;
    *&v27[14] = a4;
    *&v27[22] = 2114;
    v28 = v17;
    *v29 = 2114;
    *&v29[2] = a5;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: reusing previous processor for key = %{public}@ (%{public}@) with validity = '%{public}@'", v27, 0x2Au);
  }

LABEL_22:
  if (*(*v7 + 24))
  {
    *(*v7 + 32) = [[AAPSyncMetaDataProcessor alloc] initWithSource:*(*v7 + 24)];
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      sub_FE48(v7);
    }
  }
}

void sub_4594(uint64_t a1)
{
  v2 = a1 + 40;
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v3 == *(v1 + 24))
  {
    v12 = [v3 state];
    if (v12 && (v13 = v12, ([v12 isEqual:{objc_msgSend(*(*v2 + 16), "state")}] & 1) == 0))
    {
      if ([*(*v2 + 16) save:v13])
      {
        if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
        {
          sub_10050();
        }
      }

      else if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
      {
        sub_100C8(v2);
      }
    }

    else
    {
      v14 = AFSiriLogContextPlugin;
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
      {
        sub_1015C(v14, v15, v16, v17, v18, v19, v20, v21);
      }
    }
  }

  else
  {
    v4 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      sub_FFD8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

void sub_46D0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_46EC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t *sub_4718@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_47FC(uint64_t a1)
{
  [*(a1 + 32) waitUntilReady];
  v2 = [objc_msgSend(*(a1 + 32) "metaData")];
  v4 = *(a1 + 40);
  v3 = (a1 + 40);
  *(v4 + 16) = v2;
  *(*v3 + 3) = 0x7FFFFFFFFFFFFFFFLL;
  [*v3 _queue_updateCache];
  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
  {
    sub_101D4(v3);
  }
}

id sub_4E98(uint64_t a1)
{
  v2 = objc_alloc_init(NSAutoreleasePool);
  v3 = [*(a1 + 32) scrapeAppInfo];
  [*(*(a1 + 40) + 56) lock];
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  if (*(v4 + 40) > v5 || v5 >= *(v4 + 48))
  {
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      sub_10708(a1);
    }
  }

  else
  {
    v6 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 48);
      v9 = 136315394;
      v10 = "[AAPSyncMetaDataProcessor _queue_updateCache]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_debug_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: finished cache update for appId='%@'", &v9, 0x16u);
      v4 = *(a1 + 40);
    }

    [*(v4 + 32) setObject:v3 forKey:*(a1 + 48)];
    [*(*(a1 + 40) + 56) signal];
  }

  [*(*(a1 + 40) + 56) unlock];
  return [v2 drain];
}

id sub_5320(uint64_t a1)
{
  v2 = objc_alloc_init(NSAutoreleasePool);
  v3 = *(a1 + 32);
  *(v3 + 16) = [objc_opt_class() _createSourceInfoForLastState:*(a1 + 40) startAnchor:*(a1 + 48) keyAnchor:*(a1 + 56) validity:*(a1 + 64) configuration:*(a1 + 72)];
  *(*(a1 + 32) + 8) = v4;
  [*(a1 + 80) sourceIsReady:*(a1 + 32)];
  v5 = AFSiriLogContextPlugin;
  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
  {
    sub_10788(v5);
  }

  return [v2 drain];
}

void sub_5C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

void sub_5CF8(uint64_t a1, void *a2)
{
  v4 = [a2 bundleIdentifier];
  v5 = +[AAPSyncPrimitiveAnchor anchorFromIndex:](AAPSyncPrimitiveAnchor, "anchorFromIndex:", [a2 sequenceNumber]);
  [*(a1 + 32) removeObject:v4];
  [*(a1 + 40) addObject:v4];
  v6 = [[AAPSyncMetaDataItemUpdate alloc] initWithAppId:v4 appProxy:a2 anchor:v5 configuration:*(a1 + 48)];
  [*(a1 + 56) addObject:v6];

  v7 = [v5 isNewerThanAnchor:*(*(*(a1 + 64) + 8) + 40)];
  v8 = AFSiriLogContextPlugin;
  if (v7)
  {
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
    {
      v9 = *(*(*(a1 + 64) + 8) + 40);
      v10 = 136315650;
      v11 = "+[AAPSyncMetaDataSource _createSourceInfoForLastState:startAnchor:keyAnchor:validity:configuration:]_block_invoke";
      v12 = 2112;
      v13 = v6;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: gathered metaDataItem=%@ - adjusting for an anchor newer than the key (%{public}@)", &v10, 0x20u);
    }

    *(*(*(a1 + 64) + 8) + 40) = v5;
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
  {
    sub_10974();
  }
}

int64_t sub_5EAC(id a1, id a2, id a3)
{
  v4 = [a2 anchor];
  v5 = [a3 anchor];

  return [v4 compare:v5];
}

void sub_5F08(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id AAPSyncInfoIdentifierForAppId(uint64_t a1)
{
  v2 = objc_alloc_init(NSURLComponents);
  [v2 setScheme:@"x-apple-siri-app"];
  [v2 setHost:a1];
  v3 = [v2 URL];

  return v3;
}

id AAPSyncInfoIsValidForItem(void *a1, void *a2)
{
  v4 = [a1 identifier];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (![objc_msgSend(v4 "scheme")] || !objc_msgSend(objc_msgSend(v5, "host"), "length"))
  {
    return 0;
  }

  if ([a2 isMetaDataItemUpdate])
  {
    v6 = [objc_msgSend(a1 "appIdentifyingInfo")];
    if (v6)
    {
      v7 = v6;
      if ([v6 length])
      {
        if ([v7 isEqualToString:{objc_msgSend(a2, "appId")}])
        {

          return _AAPSyncInfoHasSomeName(a1);
        }
      }
    }

    return 0;
  }

  return [a2 isMetaDataItemDelete];
}

id _AAPSyncInfoHasSomeName(void *a1)
{
  if ([objc_msgSend(a1 "displayAppName")])
  {
    return &dword_0 + 1;
  }

  if ([objc_msgSend(a1 "appName")])
  {
    return &dword_0 + 1;
  }

  if ([objc_msgSend(a1 "spotlightName")])
  {
    return &dword_0 + 1;
  }

  v2 = [a1 displayAppNameMap];
  if (sub_6108(v2, v2))
  {
    return &dword_0 + 1;
  }

  v3 = [a1 appNameMap];
  if (sub_6108(v3, v3))
  {
    return &dword_0 + 1;
  }

  v5 = [a1 spotlightNameMap];

  return sub_6108(v5, v5);
}

id sub_6108(uint64_t a1, void *a2)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [a2 allValues];
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * v6) length])
        {
          return &dword_0 + 1;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_6D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_6DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v10 = [[NSString alloc] initWithFormat:a2 arguments:&a9];
    v11 = *(*(*(a1 + 32) + 8) + 40);
    if (!v11)
    {
      *(*(*(a1 + 32) + 8) + 40) = [[NSMutableArray alloc] initWithCapacity:1];
      v11 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v11 addObject:v10];
  }
}

uint64_t sub_6F28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  result = v3[3];
  if (result)
  {
    v8 = v3[3];
    v6 = [*(a1 + 32) objectForKey:*v3];
    v7 = *(a1 + 40);

    return v8(v6, v7, a2);
  }

  return result;
}

void sub_8244(id a1, SAAppInfo *a2, SEL a3, id a4)
{
  if (a4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_11314();
    }

    [a2 a3];
  }
}

void sub_82BC(id a1, SAAppInfo *a2, SEL a3, NSNumber *a4)
{
  if (a4)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      sub_11380();
    }

    v7 = [(NSNumber *)a4 BOOLValue];

    [a2 a3];
  }
}

id sub_8334(uint64_t a1)
{
  v1 = [*(a1 + 32) lastPathComponent];

  return [v1 stringByDeletingPathExtension];
}

void *sub_8360(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) isBetaApp])
  {
    return &__kCFBooleanTrue;
  }

  else
  {
    return 0;
  }
}

id sub_8390(uint64_t a1)
{
  v1 = [-[INAppInfo supportedIntents](+[INAppInfo appInfoWithAppProxy:](INAppInfo appInfoWithAppProxy:{*(*(a1 + 32) + 16)), "supportedIntents"), "count"}] != 0;

  return [NSNumber numberWithInt:v1];
}

uint64_t sub_83F0(void *a1, uint64_t a2)
{
  v2 = *(a1[8] + 16);
  if (v2)
  {
    return v2(a1[4], a1[5], a1[6], a1[7], a1[9], a2);
  }

  else
  {
    return 0;
  }
}

void sub_8528(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void *AAPPlistBoolParser(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (!a1)
    {
      return 0;
    }
  }

  else
  {
    sub_11898();
    if (!a1)
    {
      return 0;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    (*(a3 + 16))(a3, @"input does not respond to BOOLValue -> %@");
    return 0;
  }

  if ([a1 BOOLValue])
  {
    return &__kCFBooleanTrue;
  }

  else
  {
    return &__kCFBooleanFalse;
  }
}

uint64_t AAPPlistStringParser(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    if (!a1)
    {
      return v4;
    }
  }

  else
  {
    sub_11908();
    if (!v4)
    {
      return v4;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    (*(a3 + 16))(a3, @"input is not a NSString -> %@");
    return 0;
  }

  return v4;
}

id AAPPlistStringFromNumberParser(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (!a1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_11978();
    if (!a1)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    (*(a3 + 16))(a3, @"input is not a NSNumber -> %@");
    return 0;
  }

LABEL_4:

  return [a1 stringValue];
}

id AAPAlternativeAppNamesParser(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    sub_119E8();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a1)
    {
      (*(a3 + 16))(a3, @"altNameInfos is not a NSArray -> %@");
    }

    goto LABEL_26;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v5)
  {
LABEL_26:
    v7 = 0;
    return v7;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v22;
  v19 = _INAlternativeAppNameKey;
  v18 = _INAlternativeAppNamePronunciationHintKey;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(a1);
      }

      v10 = *(*(&v21 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 objectForKey:v19];
        v13 = AAPPlistStringParser(v11, v12, a3);
        if ([v13 length])
        {
          v20 = objc_alloc_init(SASpeakablePhrase);
          [v20 setPhrase:v13];
          v14 = [v10 objectForKey:v18];
          v16 = AAPPlistStringParser(v14, v15, a3);
          if ([v16 length])
          {
            [v20 setPronunciation:v16];
          }

          else if (v16)
          {
            (*(a3 + 16))(a3, @"pronunciation of altNameInfo in list was not a valid string -> %@");
          }

          if (v7)
          {
            [v7 addObject:v20];
          }

          else
          {
            v7 = [[NSMutableArray alloc] initWithObjects:&v20 count:1];
          }
        }

        else
        {
          (*(a3 + 16))(a3, @"phrase of altNameInfo in list was not a valid string -> %@");
        }
      }

      else
      {
        (*(a3 + 16))(a3, @"altNameInfo in list is not a NSDictionary -> %@");
      }
    }

    v6 = [a1 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v6);
  return v7;
}

id AAPPlistURLTypesSchemesParser(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    sub_11A58();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a1)
    {
      (*(a3 + 16))(a3, @"urlTypes is not a NSArray -> %@");
    }

    goto LABEL_32;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = [a1 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (!v18)
  {
LABEL_32:
    v5 = 0;
    return v5;
  }

  v5 = 0;
  v17 = *v25;
  v16 = _kCFBundleURLSchemesKey;
  do
  {
    v6 = 0;
    do
    {
      if (*v25 != v17)
      {
        objc_enumerationMutation(a1);
      }

      v7 = *(*(&v24 + 1) + 8 * v6);
      objc_opt_class();
      v19 = v6;
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 objectForKey:v16];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v21;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v21 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v20 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if (!v5)
                  {
                    v5 = objc_alloc_init(NSMutableArray);
                  }

                  [v5 addObject:{v13, v15}];
                }

                else
                {
                  v15 = v13;
                  (*(a3 + 16))(a3, @"scheme of urlType in list encountered a non-string entry during parsing -> %@");
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v10);
          }
        }

        else if (v8)
        {
          v15 = v8;
          (*(a3 + 16))(a3, @"schemes of urlType in list is not a NSArray -> %@");
        }
      }

      else
      {
        v15 = v7;
        (*(a3 + 16))(a3, @"urlType in list is not a NSDictionary -> %@");
      }

      v6 = v19 + 1;
    }

    while ((v19 + 1) != v18);
    v18 = [a1 countByEnumeratingWithState:&v24 objects:v29 count:16];
  }

  while (v18);
  return v5;
}

id AAPPlistSiriSupportParser(void *a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    sub_11AC8();
  }

  v6 = [a2 objectForKey:@"com.apple.siri.synapse"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v6)
    {
      (*(a3 + 16))(a3, @"entitlement (%@) is not a NSNumber -> %@");
    }

    else if (a1)
    {
      (*(a3 + 16))(a3, @"intents declared without an entitlement");
    }

    goto LABEL_16;
  }

  if (![v6 BOOLValue])
  {
LABEL_16:
    v8 = 0;
    return v8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a1)
    {
      (*(a3 + 16))(a3, @"input is not a NSDictionary -> %@");
    }

    goto LABEL_16;
  }

  v7 = [a1 objectForKey:@"Intents"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    (*(a3 + 16))(a3, @"intents is not a NSArray -> %@");
    goto LABEL_16;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = sub_9870;
  v15 = sub_9880;
  v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_988C;
  v10[3] = &unk_20B50;
  v10[4] = a3;
  v10[5] = &v11;
  [v7 enumerateObjectsUsingBlock:v10];
  if ([v12[5] count])
  {
    v8 = objc_alloc_init(SASiriSupport);
    [v8 setUseCases:v12[5]];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

void sub_9858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_988C(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return (*(*(a1 + 32) + 16))(*(a1 + 32));
  }

  if ([a2 length])
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);

    return [v4 addObject:a2];
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);

    return v6();
  }
}

id AAPPlistStarkSupportParser(void *a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    sub_11B38();
  }

  v6 = [[NSMutableSet alloc] initWithCapacity:2];
  v7 = [a2 objectForKey:@"com.apple.developer.carplay-protocols"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = SAStarkDisplayModeFullScreenValue;
    v9 = v6;
LABEL_5:
    [v9 addObject:v8];
    goto LABEL_31;
  }

  if (v7)
  {
    v20 = v7;
    (*(a3 + 16))(a3, @"entitlement (%@) is not a NSArray -> %@");
  }

  if (sub_9E28(a2, @"SBStarkCapable", a3))
  {
    if (!a1)
    {
      v8 = SAStarkDisplayModeFullScreenValue;
      v9 = v6;
      goto LABEL_5;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = a1;
      (*(a3 + 16))(a3, @"launchModes is not a NSArray -> %@");
      goto LABEL_31;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [a1 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v10)
    {
      goto LABEL_31;
    }

    v11 = v10;
    v12 = *v22;
LABEL_13:
    v13 = 0;
    while (1)
    {
      if (*v22 != v12)
      {
        objc_enumerationMutation(a1);
      }

      v14 = *(*(&v21 + 1) + 8 * v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v14 isEqualToString:@"Default"])
        {
          goto LABEL_18;
        }

        v16 = [v14 isEqualToString:@"Siri"];
        v15 = &SAStarkDisplayModeSiriValue;
        if (v16)
        {
          goto LABEL_21;
        }

        if ([v14 isEqualToString:@"GeoSupported"])
        {
LABEL_18:
          v15 = &SAStarkDisplayModeFullScreenValue;
LABEL_21:
          if (*v15)
          {
            [v6 addObject:?];
          }

          goto LABEL_23;
        }

        v20 = v14;
        (*(a3 + 16))(a3, @"launchMode is not a known value -> %@");
      }

      else
      {
        v20 = v14;
        (*(a3 + 16))(a3, @"launchMode is not a NSString -> %@");
      }

LABEL_23:
      if (v11 == ++v13)
      {
        v17 = [a1 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v11 = v17;
        if (!v17)
        {
          break;
        }

        goto LABEL_13;
      }
    }
  }

LABEL_31:
  if (sub_9E28(a2, @"com.apple.developer.carplay-messaging", a3))
  {
    [v6 addObject:SAStarkDisplayModeSiri_MessagingValue];
  }

  if (sub_9E28(a2, @"com.apple.developer.carplay-calling", a3))
  {
    [v6 addObject:SAStarkDisplayModeSiri_CallingValue];
  }

  if (sub_9E28(a2, @"com.apple.developer.carplay-maps", a3))
  {
    [v6 addObject:SAStarkDisplayModeFullScreenValue];
    [v6 addObject:SAStarkDisplayModeSiri_GeoValue];
  }

  if (sub_9E28(a2, @"com.apple.developer.carplay-communication", a3))
  {
    [v6 addObject:SAStarkDisplayModeFullScreenValue];
  }

  if (sub_9E28(a2, @"com.apple.developer.carplay-audio", a3))
  {
    [v6 addObject:SAStarkDisplayModeFullScreenValue];
  }

  if (sub_9E28(a2, @"com.apple.developer.carplay-charging", a3))
  {
    [v6 addObject:SAStarkDisplayModeFullScreenValue];
  }

  if (sub_9E28(a2, @"com.apple.developer.carplay-fueling", a3))
  {
    [v6 addObject:SAStarkDisplayModeFullScreenValue];
  }

  if (sub_9E28(a2, @"com.apple.developer.carplay-parking", a3))
  {
    [v6 addObject:SAStarkDisplayModeFullScreenValue];
  }

  if (sub_9E28(a2, @"com.apple.developer.carplay-quick-ordering", a3))
  {
    [v6 addObject:SAStarkDisplayModeFullScreenValue];
  }

  if (sub_9E28(a2, @"com.apple.developer.carplay-public-safety", a3))
  {
    [v6 addObject:SAStarkDisplayModeFullScreenValue];
  }

  if ([v6 count])
  {
    v18 = objc_alloc_init(SAStarkSupport);
    [v18 setSupportedModes:{objc_msgSend(v6, "allObjects")}];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id sub_9E28(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    sub_11BA8();
  }

  v6 = [a1 objectForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [v6 BOOLValue];
  }

  else
  {
    if (v6)
    {
      (*(a3 + 16))(a3, @"entitlement (%@) is not a NSNumber -> %@");
    }

    return 0;
  }
}

id AAPAggregateSyncIdentityParser(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a6)
  {
    sub_11C18();
  }

  v8 = [a1 objectForKey:kCFBundleIdentifierKey];
  v10 = AAPPlistStringParser(v8, v9, a6);
  if (v10)
  {
    v11 = v10;
    v12 = objc_alloc_init(SASyncAppIdentifyingInfo);
    [v12 setBundleId:v11];
    v13 = [a1 objectForKey:_kCFBundleShortVersionStringKey];
    [v12 setVersion:{AAPPlistStringParser(v13, v14, a6)}];
    v15 = [a1 objectForKey:kCFBundleVersionKey];
    [v12 setBuildNumber:{AAPPlistStringParser(v15, v16, a6)}];
    [v12 setClientIdentifier:AFApplicationClientIdentifierForApp()];
  }

  else
  {
    (*(a6 + 16))(a6, @"bundleIdentifier not found");
    v12 = 0;
  }

  return v12;
}

void *AAPUniversalSearchParser(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = [a4 valueForKey:@"com.apple.smoot.subscriptionservice"];

  return AAPPlistBoolParser(v7, v8, a6);
}

char *AAPAlternativeAppNamesMapParser(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __CFBundle *a5, uint64_t a6)
{
  if (!a6)
  {
    sub_11C88();
  }

  v9 = [a1 objectForKey:_INAlternativeAppNamesKey];
  result = [v9 count];
  if (!result)
  {
    return result;
  }

  v11 = result;
  CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(0, @"Base");
  if (!CanonicalLocaleIdentifierFromString)
  {
    CanonicalLocaleIdentifierFromString = @"Base";
  }

  v12 = &INVocabulariesByLocaleByAddingInvocationPhrases_ptr;
  v44 = objc_alloc_init(NSMutableDictionary);
  v13 = CFBundleCopyBundleLocalizations(a5);
  if (v13)
  {
    v14 = v13;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v15 = [(__CFArray *)v13 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v15)
    {
      v16 = v15;
      v43 = 0;
      v17 = *v57;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v57 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v56 + 1) + 8 * i);
          v20 = CFLocaleCreateCanonicalLocaleIdentifierFromString(0, v19);
          if (!v20)
          {
            v20 = v19;
          }

          if ([(__CFString *)v20 isEqualToString:CanonicalLocaleIdentifierFromString])
          {
            if (v43)
            {
              (*(a6 + 16))(a6, @"more than one localization matching %@ : first=%@ new=%@");
            }

            else
            {
              v43 = v19;
            }
          }

          else
          {
            [v44 setObject:v20 forKey:v19];
          }
        }

        v16 = [(__CFArray *)v14 countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v16);
      CFRelease(v14);
      v12 = &INVocabulariesByLocaleByAddingInvocationPhrases_ptr;
      if (v43)
      {
        v21 = [[NSMutableArray alloc] initWithCapacity:v11];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v22 = [v9 countByEnumeratingWithState:&v52 objects:v61 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v53;
          do
          {
            for (j = 0; j != v23; j = j + 1)
            {
              if (*v53 != v24)
              {
                objc_enumerationMutation(v9);
              }

              v26 = *(*(&v52 + 1) + 8 * j);
              v27 = sub_A4F8(a5, v26, 0, v43);
              v28 = v27;
              if (v27)
              {
                v29 = v27;
              }

              else
              {
                v29 = v26;
              }

              [v21 addObject:v29];
            }

            v23 = [v9 countByEnumeratingWithState:&v52 objects:v61 count:16];
          }

          while (v23);
          v12 = &INVocabulariesByLocaleByAddingInvocationPhrases_ptr;
        }

        goto LABEL_35;
      }
    }

    else
    {
      CFRelease(v14);
    }
  }

  v21 = [v9 copy];
  v43 = 0;
LABEL_35:
  if (v11 != [v21 count])
  {
    sub_11CF8(v9, v21);
  }

  v40 = [objc_alloc(v12[205]) initWithCapacity:{objc_msgSend(v44, "count")}];
  [v40 setObject:v21 forKey:CanonicalLocaleIdentifierFromString];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [v44 allKeys];
  v46 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v46)
  {
    v45 = *v49;
    do
    {
      v30 = 0;
      do
      {
        if (*v49 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v30;
        v31 = *(*(&v48 + 1) + 8 * v30);
        v32 = [[NSMutableArray alloc] initWithCapacity:v11];
        v33 = 0;
        v34 = 0;
        do
        {
          while (1)
          {
            v35 = [v9 objectAtIndex:v33];
            v36 = [v21 objectAtIndex:v33];
            v37 = sub_A4F8(a5, v35, v36, v31);
            if (!v37)
            {
              break;
            }

            v38 = v37;
            [v32 addObject:v37];

            v34 = 1;
            if (v11 - 1 == v33++)
            {
              goto LABEL_50;
            }
          }

          [v32 addObject:v36];
          ++v33;
        }

        while (v11 != v33);
        if ((v34 & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_50:
        [v40 setObject:v32 forKey:{objc_msgSend(v44, "objectForKey:", v31)}];
LABEL_51:

        v30 = v47 + 1;
      }

      while ((v47 + 1) != v46);
      v46 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v46);
  }

  return v40;
}

id sub_A4F8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_22:
    sub_11DE4();
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  sub_11D74();
  if (!a2)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (a4)
  {
    goto LABEL_4;
  }

LABEL_23:
  sub_11E54();
LABEL_4:
  v7 = [a2 phrase];
  v8 = [a3 phrase];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v7)
  {
    v10 = CFBundleCopyLocalizedStringForLocalization();
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;
  v12 = [a2 pronunciation];
  v13 = [a3 pronunciation];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v12)
  {
    v15 = CFBundleCopyLocalizedStringForLocalization();
  }

  else
  {
    v15 = v14;
  }

  v16 = v15;
  if (BSEqualStrings() && (BSEqualStrings() & 1) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = objc_alloc_init(SASpeakablePhrase);
    [v17 setPhrase:v11];
    [v17 setPronunciation:v16];
  }

  return v17;
}

void *AAPPlistBrowsableMediaParser(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (!a6)
  {
    sub_11EC4();
  }

  v8 = [a4 objectForKey:@"com.apple.developer.playable-content"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v8 BOOLValue])
    {
      return &__kCFBooleanTrue;
    }

    else
    {
      return &__kCFBooleanFalse;
    }
  }

  else
  {
    if (v8)
    {
      (*(a6 + 16))(a6, @"entitlement (%@) is not a NSNumber -> %@");
    }

    return 0;
  }
}

void sub_C1E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = AFSiriLogContextPlugin;
  v6 = os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v13 = 136315906;
      v14 = "[AAPCommandCheckRestriction performWithCompletion:]_block_invoke";
      v15 = 2114;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = a2;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> sending response = %@", &v13, 0x2Au);
      v4 = *(a1 + 40);
    }

    (*(v4 + 16))(v4, a2);
  }

  else if (v6)
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v12 = *(a1 + 32);
    v13 = 136315906;
    v14 = "[AAPCommandCheckRestriction performWithCompletion:]_block_invoke";
    v15 = 2114;
    v16 = v11;
    v17 = 2048;
    v18 = v12;
    v19 = 2112;
    v20 = a2;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> no completion block - dropping response = %@", &v13, 0x2Au);
  }
}

uint64_t sub_D2F4()
{
  sub_D778();
  result = sub_1250C();
  qword_29148 = result;
  return result;
}

uint64_t *sub_D350()
{
  if (qword_29138 != -1)
  {
    swift_once();
  }

  return &qword_29148;
}

uint64_t sub_D3A0()
{
  v0 = sub_1244C();
  sub_D714(v0, qword_29150);
  sub_D490(v0, qword_29150);
  if (qword_29138 != -1)
  {
    swift_once();
  }

  v1 = qword_29148;
  return sub_1245C();
}

uint64_t sub_D42C()
{
  if (qword_29140 != -1)
  {
    swift_once();
  }

  v0 = sub_1244C();

  return sub_D490(v0, qword_29150);
}

uint64_t sub_D490(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_D4C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_29140 != -1)
  {
    swift_once();
  }

  v2 = sub_1244C();
  v3 = sub_D490(v2, qword_29150);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_D588(uint64_t a1)
{
  if (qword_29140 != -1)
  {
    swift_once();
  }

  v2 = sub_1244C();
  v3 = sub_D490(v2, qword_29150);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_D67C())()
{
  if (qword_29140 != -1)
  {
    swift_once();
  }

  v0 = sub_1244C();
  sub_D490(v0, qword_29150);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t *sub_D714(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_D778()
{
  result = qword_290E0;
  if (!qword_290E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_290E0);
  }

  return result;
}

id AAPCommandSearchMarketplaceWrapper.__allocating_init(marketplace:keyword:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC12Applications34AAPCommandSearchMarketplaceWrapper_marketplace];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC12Applications34AAPCommandSearchMarketplaceWrapper_keyword];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, "init");
}

id AAPCommandSearchMarketplaceWrapper.init(marketplace:keyword:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC12Applications34AAPCommandSearchMarketplaceWrapper_marketplace];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR____TtC12Applications34AAPCommandSearchMarketplaceWrapper_keyword];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for AAPCommandSearchMarketplaceWrapper();
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_D964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v20;
  v13 = sub_1244C();
  v8[13] = v13;
  v14 = *(v13 - 8);
  v8[14] = v14;
  v15 = *(v14 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v16 = async function pointer to static AppDistributor.requestSearchPage(_:searchString:)[1];
  v17 = swift_task_alloc();
  v8[17] = v17;
  *v17 = v8;
  v17[1] = sub_DA98;

  return (static AppDistributor.requestSearchPage(_:searchString:))(a4, a5, a6, a7);
}

uint64_t sub_DA98()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_DD80;
  }

  else
  {
    v3 = sub_DBAC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_DBAC()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = sub_D42C();
  swift_beginAccess();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_1243C();
  v6 = sub_124EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "AAPCommandSearchMarketplace success", v7, 2u);
  }

  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[14];
  v11 = v0[11];

  result = (*(v10 + 8))(v8, v9);
  if (v11)
  {
    v14 = v0[11];
    v13 = v0[12];
    v15 = [objc_allocWithZone(SACommandSucceeded) init];
    v16 = [v15 dictionary];

    if (v16)
    {
      sub_1247C();

      v16 = 0;
    }

    v14(v16);

    v18 = v0[15];
    v17 = v0[16];

    v19 = v0[1];

    return v19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_DD80()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = sub_D42C();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_1243C();
  v7 = sub_124FC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v6, v7, "AAPCommandSearchMarketplace error: %@", v9, 0xCu);
    sub_F2F0(v10, &qword_29130, &unk_15820);
  }

  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[13];
  v15 = v0[11];

  (*(v13 + 8))(v12, v14);
  if (!v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v0[18];
  v18 = v0[11];
  v17 = v0[12];
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v0[10] = v16;
  sub_EE70(&qword_29128, &qword_15818);
  sub_1251C();
  v19 = v0[8];
  v20 = v0[9];
  v21 = objc_allocWithZone(SACommandFailed);
  v22 = sub_1248C();

  v23 = [v21 initWithReason:v22];

  if (!v23)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v24 = [v23 dictionary];

  if (v24)
  {
    sub_1247C();
  }

  v25 = v0[18];
  v18(0);

  v27 = v0[15];
  v26 = v0[16];

  v28 = v0[1];

  v28();
}

uint64_t sub_E05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_EE70(&qword_29120, &qword_157E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_F0D8(a3, v26 - v10);
  v12 = sub_124DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_F2F0(v11, &qword_29120, &qword_157E8);
  }

  else
  {
    sub_124CC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_124BC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_124AC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_F2F0(a3, &qword_29120, &qword_157E8);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_F2F0(a3, &qword_29120, &qword_157E8);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_E42C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = sub_1246C().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

id AAPCommandSearchMarketplaceWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AAPCommandSearchMarketplaceWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AAPCommandSearchMarketplaceWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_E5C8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_E6C0;

  return v7(a1);
}

uint64_t sub_E6C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void _s12Applications34AAPCommandSearchMarketplaceWrapperC7perform10completion13serviceHelper13executionInfoyySDys11AnyHashableVypGSgcSg_So09AFServiceI0_pSgSo018AFCommandExecutionK0CSgtF_0(void (*a1)(id), uint64_t a2)
{
  v50 = a2;
  v52 = a1;
  v2 = (*(*(sub_EE70(&qword_29120, &qword_157E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v48 = &v48 - v3;
  v4 = sub_1244C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = (__chkstk_darwin)();
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v48 - v11;
  __chkstk_darwin(v10);
  v14 = &v48 - v13;
  v15 = sub_D42C();
  swift_beginAccess();
  v49 = v5[2];
  v49(v14, v15, v4);
  v16 = sub_1243C();
  v17 = sub_124EC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "AAPCommandSearchMarketplace executing...", v18, 2u);
  }

  v19 = v5[1];
  v19(v14, v4);
  v20 = *(v51 + OBJC_IVAR____TtC12Applications34AAPCommandSearchMarketplaceWrapper_marketplace + 8);
  if (!v20)
  {
    goto LABEL_12;
  }

  v21 = *(v51 + OBJC_IVAR____TtC12Applications34AAPCommandSearchMarketplaceWrapper_marketplace);
  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
LABEL_12:
    swift_beginAccess();
    v49(v9, v15, v4);
    v31 = sub_1243C();
    v32 = sub_124FC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "AAPCommandSearchMarketplace: failure - missing marketplace data", v33, 2u);
    }

    v19(v9, v4);
    v34 = v52;
    if (v52)
    {
      v35 = objc_allocWithZone(SACommandFailed);
      v36 = sub_1248C();
      v37 = [v35 initWithReason:v36];

      if (v37)
      {
        v38 = [v37 dictionary];

        if (v38)
        {
          v53 = 0;
          sub_1247C();

          v39 = v53;
        }

        else
        {
          v39 = 0;
        }

        v47 = v39;
        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

  v23 = *(v51 + OBJC_IVAR____TtC12Applications34AAPCommandSearchMarketplaceWrapper_keyword + 8);
  if (v23)
  {
    v24 = *(v51 + OBJC_IVAR____TtC12Applications34AAPCommandSearchMarketplaceWrapper_keyword);
    v25 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v25 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v26 = sub_124DC();
      v27 = v48;
      (*(*(v26 - 8) + 56))(v48, 1, 1, v26);
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v28[4] = v21;
      v28[5] = v20;
      v28[6] = v24;
      v28[7] = v23;
      v29 = v52;
      v30 = v50;
      v28[8] = v52;
      v28[9] = v30;

      sub_F0C8(v29);
      sub_E05C(0, 0, v27, &unk_157F8, v28);

      return;
    }
  }

  swift_beginAccess();
  v49(v12, v15, v4);

  v40 = sub_1243C();
  v41 = sub_124FC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v40, v41, "AAPCommandSearchMarketplace: failure - missing search string data", v42, 2u);
  }

  v19(v12, v4);
  v34 = v52;
  if (!v52)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v43 = objc_allocWithZone(SACommandFailed);
  v44 = sub_1248C();
  v45 = [v43 initWithReason:v44];

  if (!v45)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v46 = [v45 dictionary];

  if (v46)
  {
    v53 = 0;
    sub_1247C();

    v46 = v53;
  }

  v47 = v46;
LABEL_27:
  v34(v47);
}

uint64_t sub_EE20(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_EE30()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_EE70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_EEB8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  if (v0[8])
  {
    v4 = v0[9];
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_EF10()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_EFD4;

  return sub_D964(v8, v9, v10, v2, v3, v4, v5, v7);
}

uint64_t sub_EFD4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_F0C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_F0D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_EE70(&qword_29120, &qword_157E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F148(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_F354;

  return sub_E5C8(a1, v5);
}

uint64_t sub_F200()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_F238(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_EFD4;

  return sub_E5C8(a1, v5);
}

uint64_t sub_F2F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_EE70(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_F358()
{
  v2[0] = 136315394;
  sub_2474();
  v3 = v0;
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "%s Logging UUFR ready for AppLaunch with turnId=%@", v2, 0x16u);
}

void sub_F3DC(os_log_t log)
{
  v1 = 136315138;
  v2 = "_EmitUufrReadyEvent";
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%s Missing turnId for UUFR event", &v1, 0xCu);
}

void sub_F460()
{
  objc_opt_class();
  sub_2474();
  sub_2484();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void sub_F514()
{
  objc_opt_class();
  sub_2474();
  sub_2484();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_F5B4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  objc_opt_class();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 domain];
  [a2 code];
  sub_2474();
  sub_2484();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x48u);
}

void sub_F6AC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[AAPCommandLaunch _siriDismissalOpenApplicationOptions]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: Setting doNotDismissSiri to YES since SAE is enabled", &v1, 0xCu);
}

void sub_F730(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[AAPCommandSearch performWithCompletion:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "%s Query: %@", &v2, 0x16u);
}

void sub_F7BC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 136315650;
  v5 = "[AAPCommandSearch performWithCompletion:]_block_invoke_2";
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%s Error executing query %@: %@", &v4, 0x20u);
}

void sub_F858(void *a1, NSObject *a2)
{
  v4 = [a1 domain];
  [a1 code];
  v6[0] = 136315906;
  sub_46C0();
  v7 = v4;
  v8 = 2048;
  v9 = v5;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: Error: persistence load error {%{public}@:%li}(%@)", v6, 0x2Au);
}

void sub_F920(uint64_t a1)
{
  [*(*a1 + 16) state];
  sub_4724();
  sub_4708();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_F9B4(uint64_t *a1)
{
  sub_4718(a1, __stack_chk_guard);
  sub_46AC();
  sub_46D0(&dword_0, v1, v2, "%s com.apple.siri.applications: Error: LS didn't return a knowledge UUID -> %{public}@", v3, v4, v5, v6, 2u);
}

void sub_FA28(uint64_t *a1)
{
  sub_4718(a1, __stack_chk_guard);
  sub_46AC();
  sub_46D0(&dword_0, v1, v2, "%s com.apple.siri.applications: Error: LS didn't return a sequenceNumber -> %{public}@", v3, v4, v5, v6, 2u);
}

void sub_FA9C(os_log_t log)
{
  v1 = 136315138;
  v2 = "+[AAPSyncHandler _checkIfResetIsNeededForKey:withStartAnchorString:validity:lastState:completion:]";
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: Error: LS didn't return a workspace", &v1, 0xCu);
}

void sub_FB20(uint64_t *a1)
{
  sub_4718(a1, __stack_chk_guard);
  sub_46AC();
  sub_46D0(&dword_0, v1, v2, "%s com.apple.siri.applications: Error: startAnchorString decode failed - resetting -> error=%{public}@", v3, v4, v5, v6, 2u);
}

void sub_FC0C(void *a1)
{
  [a1 version];
  sub_4708();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_FD28()
{
  v4[0] = 136315650;
  sub_46C0();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: keyAnchor check failed: lastKey=%{public}@ key=%{public}@", v4, 0x20u);
}

void sub_FDB8()
{
  v4[0] = 136315650;
  sub_46C0();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: Error: MI state is bad -> validity = '%{public}@' , anchor = %{public}@", v4, 0x20u);
}

void sub_FE48(uint64_t *a1)
{
  sub_4718(a1, __stack_chk_guard);
  v3 = v1 + 24;
  v4 = *(v1 + 24);
  v2 = *(v3 + 8);
  v6 = 136315650;
  v7 = "[AAPSyncHandler beginSyncWithAnchor:validity:count:forKey:beginInfo:configuration:]_block_invoke";
  v8 = 2048;
  v9 = v2;
  v10 = 2048;
  v11 = v4;
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: created processor for source -> processor=%p source=%p", &v6, 0x20u);
}

void sub_FEE0(uint64_t *a1)
{
  sub_4718(a1, __stack_chk_guard);
  sub_46AC();
  sub_46D0(&dword_0, v1, v2, "%s com.apple.siri.applications: Error: preAnchorString decode failed - terminating sync -> error=%{public}@", v3, v4, v5, v6, 2u);
}

void sub_FF54(os_log_t log)
{
  v1 = 136315138;
  v2 = "[AAPSyncHandler getChangeAfterAnchor:changeInfo:]";
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: Error: called without a processor - terminating sync", &v1, 0xCu);
}

void sub_100C8(uint64_t a1)
{
  [*(*a1 + 16) state];
  sub_4724();
  sub_4708();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_101D4(uint64_t a1)
{
  v1 = *(*a1 + 16);
  sub_502C();
  sub_5014();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_104D8()
{
  v3 = 136315650;
  v4 = "[AAPSyncMetaDataProcessor _queue_processNextChange:afterAnchor:withInitialAnchor:]";
  sub_5020();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: skipping invalid item -> %@ : info -> %@", &v3, 0x20u);
}

void sub_1056C()
{
  sub_5020();
  sub_5014();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_105F0()
{
  v3 = 136315650;
  v4 = "[AAPSyncMetaDataProcessor _queue_processNextChange:afterAnchor:withInitialAnchor:]";
  sub_5020();
  v5 = v0;
  v6 = v1;
  _os_log_debug_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: no next item after anchor=%{public}@ - updating anchor=%{public}@", &v3, 0x20u);
}

void sub_10684()
{
  sub_5020();
  sub_5014();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10708(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_502C();
  sub_5014();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10788(os_log_t log)
{
  v1 = 136315138;
  v2 = "[AAPSyncMetaDataSource initWithLastState:startAnchor:keyAnchor:validity:configuration:observer:]_block_invoke";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: source is ready", &v1, 0xCu);
}

void sub_1080C()
{
  v1[0] = 136315394;
  sub_4724();
  _os_log_error_impl(&dword_0, v0, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: Error: failed constraint - if we don't think we need to reconcile then we shouldn't have any new deletes -> %@", v1, 0x16u);
}

id sub_109E8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v4 handleFailureInMethod:a1 object:a2 file:@"AAPSyncMetaDataItemDelete.m" lineNumber:53 description:@"appId cannot be nil"];
}

id sub_10A44(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v4 handleFailureInMethod:a1 object:a2 file:@"AAPSyncMetaDataItemDelete.m" lineNumber:54 description:@"anchor cannot be nil"];
}

id sub_10B70()
{
  sub_8510();
  +[NSAssertionHandler currentHandler];
  sub_8504();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10BC4()
{
  sub_8510();
  +[NSAssertionHandler currentHandler];
  sub_8504();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10C18()
{
  sub_8510();
  +[NSAssertionHandler currentHandler];
  sub_8504();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10C6C()
{
  sub_84F4();
  +[NSAssertionHandler currentHandler];
  sub_851C();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

id sub_10CC8()
{
  sub_84F4();
  +[NSAssertionHandler currentHandler];
  sub_851C();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

id sub_10D24()
{
  sub_84F4();
  +[NSAssertionHandler currentHandler];
  sub_851C();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

id sub_10D80()
{
  sub_8510();
  +[NSAssertionHandler currentHandler];
  sub_8504();
  return [v0 handleFailureInMethod:@"genericParser" object:? file:? lineNumber:? description:?];
}

id sub_10DDC()
{
  sub_8510();
  +[NSAssertionHandler currentHandler];
  sub_8504();
  return [v0 handleFailureInMethod:@"errorKeyDescriptor" object:? file:? lineNumber:? description:?];
}

void sub_10E38(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v4 = *(a2 + 8);
  *buf = 136315650;
  *(buf + 4) = "[AAPSyncMetaDataItemUpdate valueForGenericParser:withDefaultGenerator:withErrorKeyDescriptor:]";
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  *(buf + 11) = 2112;
  *(buf + 3) = v4;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: tried falling back to defaultGenerator value for %{public}@ (%@) but the generator produced no value", buf, 0x20u);
}

void sub_10EA8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "[AAPSyncMetaDataItemUpdate valuesForInfoPlistEntries:inBundle:withEntitlements:forLocalization:ignoringDefaultValues:]";
  v5 = 2114;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: could not load %{public}@ info file for metaDataItem=%@", &v3, 0x20u);
}

void sub_10FB8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315650;
  *&v3[4] = "[AAPSyncMetaDataItemUpdate valuesForEntries:inPlistAtURL:]";
  *&v3[12] = 2112;
  *&v3[14] = a1;
  *&v3[22] = 2112;
  sub_8528(&dword_0, a2, a3, "%s com.apple.siri.applications: Error: could not parse plist file at url='%@' (%@) -> unknown", *v3, *&v3[8], *&v3[16], *(a2 + 8));
}

void sub_11044(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 8);
  v3 = 136315394;
  v4 = "[AAPSyncMetaDataItemUpdate valuesForEntries:inPlistAtURL:]";
  v5 = 2112;
  v6 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: can't read from an empty url (%@)", &v3, 0x16u);
}

void sub_110D4()
{
  v1[0] = 136315394;
  sub_4724();
  _os_log_debug_impl(&dword_0, v0, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: Error: no entitlements found for metaDataItem=%@", v1, 0x16u);
}

void sub_11154()
{
  v2 = 136315650;
  sub_4724();
  sub_8528(&dword_0, v0, v1, "%s com.apple.siri.applications: Error: the Info.plist identifier (%@) did not agree with metaDataItem=%@", v2);
}

id sub_11244()
{
  sub_84F4();
  +[NSAssertionHandler currentHandler];
  sub_851C();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

id sub_11314()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"[AAPSyncMetaDataItemUpdate scrapeAppInfo]_block_invoke"];

  return [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"AAPSyncMetaDataItemUpdate.m" lineNumber:351 description:@"v is not an object"];
}

id sub_11380()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"[AAPSyncMetaDataItemUpdate scrapeAppInfo]_block_invoke"];

  return [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"AAPSyncMetaDataItemUpdate.m" lineNumber:357 description:@"v does not respond to BOOLValue"];
}

id sub_113EC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v4 handleFailureInMethod:a1 object:a2 file:@"AAPSyncState.m" lineNumber:82 description:@"validity cannot be nil"];
}

id sub_11448(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v4 handleFailureInMethod:a1 object:a2 file:@"AAPSyncState.m" lineNumber:83 description:@"keyAnchor cannot be nil"];
}

id sub_114A4()
{
  sub_84F4();
  +[NSAssertionHandler currentHandler];
  sub_851C();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

id sub_11500()
{
  sub_84F4();
  +[NSAssertionHandler currentHandler];
  sub_851C();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

id sub_1155C()
{
  sub_84F4();
  +[NSAssertionHandler currentHandler];
  sub_851C();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

id sub_115B8()
{
  sub_84F4();
  +[NSAssertionHandler currentHandler];
  sub_851C();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

id sub_11614()
{
  sub_84F4();
  +[NSAssertionHandler currentHandler];
  sub_851C();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

id sub_11670()
{
  sub_84F4();
  +[NSAssertionHandler currentHandler];
  sub_851C();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

id sub_116CC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v4 handleFailureInMethod:a1 object:a2 file:@"AAPSyncState.m" lineNumber:104 description:@"there must be a stopAnchor unless there is no startAnchor and there are no apps and no deletes"];
}

id sub_11728()
{
  sub_84F4();
  +[NSAssertionHandler currentHandler];
  sub_851C();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

id sub_11784()
{
  sub_84F4();
  +[NSAssertionHandler currentHandler];
  sub_851C();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

id sub_117E0()
{
  sub_84F4();
  +[NSAssertionHandler currentHandler];
  sub_851C();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

id sub_1183C()
{
  sub_84F4();
  +[NSAssertionHandler currentHandler];
  sub_851C();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

id sub_11898()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"NSNumber *AAPPlistBoolParser(id, NSDictionary *, AAPParserErrorLogger)"];
  return [sub_A6FC() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_11908()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"NSString *AAPPlistStringParser(id, NSDictionary *, AAPParserErrorLogger)"];
  return [sub_A6FC() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_11978()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"NSString *AAPPlistStringFromNumberParser(id, NSDictionary *, AAPParserErrorLogger)"];
  return [sub_A6FC() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_119E8()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"NSArray<SASpeakablePhrase *> *AAPAlternativeAppNamesParser(id, NSDictionary *, AAPParserErrorLogger)"];
  return [sub_A6FC() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_11A58()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"NSArray<NSString *> *AAPPlistURLTypesSchemesParser(id, NSDictionary *, AAPParserErrorLogger)"];
  return [sub_A6FC() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_11AC8()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"SASiriSupport *AAPPlistSiriSupportParser(id, NSDictionary *, AAPParserErrorLogger)"];
  return [sub_A6FC() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_11B38()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"SAStarkSupport *AAPPlistStarkSupportParser(id, NSDictionary *, AAPParserErrorLogger)"];
  return [sub_A6FC() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_11BA8()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"BOOL AAPPlistBoolValueParserForKey(NSDictionary *, NSString *, AAPParserErrorLogger)"];
  return [sub_A6FC() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_11C18()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"SASyncAppIdentifyingInfo *AAPAggregateSyncIdentityParser(NSDictionary *, NSDictionary *, NSDictionary *, NSDictionary *, CFBundleRef, AAPParserErrorLogger)"];
  return [sub_A6FC() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_11C88()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"NSDictionary<NSString *, NSArray<SASpeakablePhrase *> *> *AAPAlternativeAppNamesMapParser(NSDictionary *, NSDictionary *, NSDictionary *, NSDictionary *, CFBundleRef, AAPParserErrorLogger)"];
  return [sub_A6FC() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_11D74()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"SASpeakablePhrase *_createLocalizedAltName(CFBundleRef, SASpeakablePhrase *, SASpeakablePhrase *, NSString *, AAPParserErrorLogger)"];
  return [sub_A6FC() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_11DE4()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"SASpeakablePhrase *_createLocalizedAltName(CFBundleRef, SASpeakablePhrase *, SASpeakablePhrase *, NSString *, AAPParserErrorLogger)"];
  return [sub_A6FC() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_11E54()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"SASpeakablePhrase *_createLocalizedAltName(CFBundleRef, SASpeakablePhrase *, SASpeakablePhrase *, NSString *, AAPParserErrorLogger)"];
  return [sub_A6FC() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_11EC4()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"NSNumber *AAPPlistBrowsableMediaParser(NSDictionary *, NSDictionary *, NSDictionary *, NSDictionary *, CFBundleRef, AAPParserErrorLogger)"];
  return [sub_A6FC() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_11F9C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[AAPIntentsInfoSyncHandler beginSyncWithAnchor:validity:count:forKey:beginInfo:]";
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: ERROR: no app id?!", &v1, 0xCu);
}

void sub_12020(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = 136315650;
  v5 = "[AAPIntentsInfoSyncHandler getChangeAfterAnchor:changeInfo:]";
  v6 = 2112;
  v7 = v2;
  v8 = 2112;
  v9 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: The %@ app does not support any intents, available extensions: %@", &v4, 0x20u);
}

void sub_120B8()
{
  v2 = 136315650;
  sub_BC40();
  sub_8528(&dword_0, v0, v1, "%s com.apple.siri.applications: Value for key %{public}@ is not a BOOL: %@", v2);
}

void sub_1212C()
{
  v2 = 136315650;
  sub_BC40();
  sub_8528(&dword_0, v0, v1, "%s com.apple.siri.applications: Value for key %{public}@ is not a string: %@", v2);
}

void sub_121A0()
{
  v2 = 136315650;
  sub_BC40();
  sub_8528(&dword_0, v0, v1, "%s com.apple.siri.applications: Value for key %{public}@ is not an array: %@", v2);
}

void sub_12214(uint64_t a1, uint64_t a2, NSObject *a3)
{
  objc_opt_class();
  v6[0] = 136315906;
  sub_C364();
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: <%{public}@:%p> Error: failed to talk to systemService for app (%@)", v6, 0x2Au);
}

void sub_122C8(uint64_t a1, NSObject *a2)
{
  objc_opt_class();
  v4[0] = 136315650;
  sub_C364();
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: <%{public}@:%p> command contained no launchId", v4, 0x20u);
}

void sub_12364(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = 136315906;
  v7 = "[AAPCommandFilterNonRestricted performWithCompletion:]";
  v8 = 2114;
  v9 = objc_opt_class();
  v10 = 2048;
  v11 = a1;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: <%{public}@:%p> Error: failed to talk to systemService for apps (%@)", &v6, 0x2Au);
}