void sub_16C4(uint64_t a1)
{
  v2 = [*(a1 + 32) customizationPickerDelegate];
  [v2 customizationPickerControllerDidPresent:*(a1 + 40)];
}

void sub_18D8(uint64_t a1)
{
  v2 = [*(a1 + 32) customizationPickerDelegate];
  [v2 customizationPickerControllerDidDismiss:*(a1 + 40)];

  *(*(a1 + 32) + 25) = 0;
}

BOOL sub_1A14(void *a1, void *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1AB8;
  v6[3] = &unk_C348;
  v7 = a1;
  v3 = v7;
  v4 = [a2 indexOfObjectPassingTest:v6] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

id sub_1AE0()
{
  if (qword_11BA0 != -1)
  {
    sub_5940();
  }

  v1 = qword_11BA8;

  return v1;
}

void sub_1B24(id a1)
{
  qword_11BA8 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

id sub_1B80(void *a1)
{
  v1 = a1;
  v2 = sub_1AE0();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id sub_273C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) isPlaceholder];
  if (result)
  {
    v3 = LPLogChannelPlugin();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 messageGUID];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "RichLinkPluginDataSource<%@>: update watchdog timer fired", &v7, 0xCu);
    }

    *(*(a1 + 32) + 54) = 1;
    return [*(a1 + 32) dispatchMetadataUpdateToAllClients];
  }

  return result;
}

void sub_2930(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSProcessInfo processInfo];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2A18;
  v10[3] = &unk_C400;
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 performExpiringActivityWithReason:@"com.apple.LinkPresentation.RichLinkPluginDataSource.Fetch" usingBlock:v10];
}

void sub_2A18(uint64_t a1, int a2)
{
  v4 = LPLogChannelPlugin();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = v4;
      v8 = [v6 messageGUID];
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "RichLinkPluginDataSource<%@>: background activity expired", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v9 = *(a1 + 32);
      v10 = v4;
      v11 = [v9 messageGUID];
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "RichLinkPluginDataSource<%@>: starting background activity", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2BC8;
    block[3] = &unk_C3D8;
    v12 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v14 = v12;
    v15 = *(a1 + 48);
    dispatch_sync(&_dispatch_main_q, block);
  }
}

id sub_2BC8(void *a1)
{
  objc_storeWeak((a1[4] + 8), 0);
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];

  return [v2 _didFetchMetadata:v3 error:v4];
}

void sub_2FD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_30B0;
  block[3] = &unk_C450;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = v5;
  v14 = *(a1 + 48);
  v12 = v7;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_30B0(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 8), 0);
  v2 = *(a1 + 40);
  if (*(a1 + 64) == 1)
  {
    v5 = v2;
    v3 = [*(a1 + 48) copy];
    v4 = *(a1 + 48);

    [v4 _copyPropertiesFrom:*(a1 + 40) onlyUpgradeFields:1];
    [*(a1 + 32) postProcessMetadataUpgradedByCompleteRefetch:v4 originalMetadata:v3];

    v2 = v4;
  }

  v6 = v2;
  [*(a1 + 32) _didFetchMetadata:v2 error:*(a1 + 56)];
}

void sub_3C80(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) rendererForRichLinkPluginDataSource:{*(a1 + 32), v8}];
        [v7 setNeedsLayout];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_5218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak(&a31);
  objc_destroyWeak((v32 - 136));
  _Unwind_Resume(a1);
}

void sub_5288(uint64_t a1)
{
  *(*(a1 + 32) + 55) = 1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5344;
  v5[3] = &unk_C3B0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  [WeakRetained _setCollaborationFooterViewModel:v3 action:v5];
  v4 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) pluginPayloadShouldSendCollaboration];
  }
}

void sub_534C(uint64_t a1)
{
  *(*(a1 + 32) + 55) = 1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setCollaborationFooterViewModel:0 action:0];
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) pluginPayloadShouldSendCopy];
  }
}

void sub_5954(void *a1, void *a2)
{
  v3 = a1;
  v9 = [a2 messageGUID];
  sub_58EC();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_5A0C(void *a1, void *a2)
{
  v3 = a1;
  v9 = [a2 messageGUID];
  sub_58EC();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_5AAC(void *a1, void *a2)
{
  v3 = a1;
  v9 = [a2 messageGUID];
  sub_58EC();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}