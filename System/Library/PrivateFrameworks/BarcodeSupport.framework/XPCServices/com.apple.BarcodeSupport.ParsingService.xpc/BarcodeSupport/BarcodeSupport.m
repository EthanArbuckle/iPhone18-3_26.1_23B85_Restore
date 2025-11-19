void sub_100001834(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v38 = 0;
  v4 = [v2 _urlDecoderWithVersion:v3 error:&v38];
  v5 = v38;
  if (v4)
  {
    v6 = *(a1 + 40);
    v37 = 0;
    v7 = [v4 decodeURLWithData:v6 error:&v37];
    v8 = v37;
    [v4 clearCaches];
    if (v7)
    {
      if (*(a1 + 104))
      {
        v9 = [CPSDeveloperOverride overrideForURL:v7];
        v36 = v5;
        v10 = *(a1 + 88);
        v35[0] = *(a1 + 72);
        v35[1] = v10;
        v11 = [LSBundleProxy bundleProxyWithAuditToken:v35 error:&v36];
        v12 = v36;

        v13 = [v11 bundleIdentifier];
        v14 = v13;
        if (v12 || !v13)
        {
          v19 = *(a1 + 56);
          v20 = *(a1 + 32);
          v21 = [v12 localizedDescription];
          v22 = [v20 _urlDecoderErrorWithCode:0 description:v21];
          (*(v19 + 16))(v19, v7, v22);
        }

        else
        {
          v15 = [v9 clipBundleID];
          v16 = [v15 isEqualToString:v14];

          if (v16)
          {
            (*(*(a1 + 56) + 16))();
          }

          else if ([*(a1 + 32) _associatedDomainIsApprovedForURL:v7 applicationIdentifier:*(a1 + 48)])
          {
            v23 = *(*(a1 + 32) + 24);
            if (!v23)
            {
              v24 = objc_alloc_init(BCSBusinessQueryService);
              v25 = *(a1 + 32);
              v26 = *(v25 + 24);
              *(v25 + 24) = v24;

              v23 = *(*(a1 + 32) + 24);
            }

            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v30[2] = sub_100001BB4;
            v30[3] = &unk_100004210;
            v31 = v14;
            v32 = v7;
            v27 = *(a1 + 56);
            v33 = *(a1 + 32);
            v34 = v27;
            [v23 isBusinessRegisteredForURL:v32 chopURL:1 completion:v30];
          }

          else
          {
            v28 = *(a1 + 56);
            v29 = [*(a1 + 32) _urlDecoderErrorWithCode:3 description:@"Decoded URL is not authorized for this application"];
            (*(v28 + 16))(v28, 0, v29);
          }
        }

        goto LABEL_16;
      }

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v17 = *(a1 + 56);
      if (v8)
      {
        v18 = [*(a1 + 32) _urlDecoderErrorWithCode:2 description:@"Decoding of the URL failed"];
        (*(v17 + 16))(v17, 0, v18);
      }

      else
      {
        (*(v17 + 16))(*(a1 + 56), 0, 0);
      }
    }

    v12 = v5;
LABEL_16:

    v5 = v12;
    goto LABEL_17;
  }

  (*(*(a1 + 56) + 16))();
LABEL_17:
}

void sub_100001BB4(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v7 && a2)
  {
    a2 = [*(a1 + 32) isEqualToString:v7];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100001F58(a1, a2, v7);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
LABEL_6:
    v9 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
    goto LABEL_11;
  }

  v10 = *(a1 + 56);
  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  if (v8)
  {
    v13 = [v8 localizedDescription];
    v14 = [v11 _urlDecoderErrorWithCode:0 description:v13];
    (*(v10 + 16))(v10, v12, v14);
  }

  else
  {
    v15 = [v11 _urlDecoderErrorWithCode:4 description:@"URL is not registered as an app clip"];
    (*(v10 + 16))(v10, v12, v15);
  }

LABEL_11:
}

void sub_100001D54(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t start()
{
  v0 = objc_opt_new();
  v1 = +[NSXPCListener serviceListener];
  [v1 setDelegate:v0];
  [v1 resume];

  return 0;
}

void sub_100001F58(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v5 = 138740483;
  v6 = v3;
  if (a2)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v7 = 2112;
  v8 = v4;
  v9 = 2113;
  v10 = a3;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "BarcodeParsingService: URL: %{sensitive}@, valid: %@, machingBundleID: %{private}@", &v5, 0x20u);
}