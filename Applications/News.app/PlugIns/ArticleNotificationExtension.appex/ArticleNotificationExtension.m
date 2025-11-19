void sub_1000015E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001600(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  +[NSThread isMainThread];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = v6;
  v11 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  FCPerformIfNonNil();
}

void sub_1000016F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 32))
  {
    v5 = [*(a1 + 40) headline];
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x3032000000;
    v46[3] = sub_100001B6C;
    v46[4] = sub_100001B7C;
    v47 = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = sub_100001B6C;
    v44[4] = sub_100001B7C;
    v45 = 0;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3032000000;
    v42[3] = sub_100001B6C;
    v42[4] = sub_100001B7C;
    v43 = 0;
    v6 = [v5 thumbnailHQ];
    v32 = [v6 thumbnailAssetHandle];

    v7 = [v5 sourceChannel];
    v8 = [v7 theme];
    v9 = [v8 bannerImageForWhiteBackground];
    v10 = [v8 bannerImageForMask];
    v11 = [v9 assetHandle];
    v31 = v10;
    v12 = [v10 assetHandle];
    v13 = v12;
    v28 = v9;
    v29 = v7;
    v30 = v3;
    if (!v32 && !v11 && !v12)
    {
      v14 = [NSSArticleInternal alloc];
      v15 = [v5 title];
      v16 = [v5 shortExcerpt];
      v17 = [v5 publishDate];
      v18 = [v5 sourceName];
      v19 = [v14 initWithThumbnailImage:0 title:v15 shortExcerpt:v16 publishDate:v17 publisherName:v18 publisherLogoImage:0 publisherLogoMaskImage:0];

      v20 = *(a1 + 48);
      if (v20)
      {
        (*(v20 + 16))(v20, v19);
      }

      goto LABEL_17;
    }

    v19 = dispatch_group_create();
    if (v32)
    {
      v21 = [v32 downloadIfNeededWithGroup:v19];
    }

    v22 = +[UIScreen mainScreen];
    v23 = [v22 traitCollection];
    v24 = [v23 userInterfaceStyle];

    if (v24 == 2)
    {
      v25 = v11;
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v25 = v13;
      if (!v13)
      {
LABEL_16:
        v27 = FCDispatchQueueForQualityOfService();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100001B84;
        block[3] = &unk_1000082B8;
        v34 = v32;
        v39 = v46;
        v35 = v11;
        v40 = v44;
        v36 = v13;
        v41 = v42;
        v37 = v5;
        v38 = *(a1 + 48);
        dispatch_group_notify(v19, v27, block);

LABEL_17:
        _Block_object_dispose(v42, 8);

        _Block_object_dispose(v44, 8);
        _Block_object_dispose(v46, 8);

        v3 = v30;
        goto LABEL_18;
      }
    }

    v26 = [v25 downloadIfNeededWithGroup:v19];
    goto LABEL_16;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }

LABEL_18:
}

void sub_100001B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 184), 8);
  _Block_object_dispose((v28 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001B6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001B84(uint64_t a1)
{
  v2 = [*(a1 + 32) filePath];
  if ([v2 length])
  {
    v3 = [UIImage imageWithContentsOfFile:v2];
    v4 = *(*(a1 + 72) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = [*(a1 + 40) filePath];
  if ([v6 length])
  {
    v7 = [UIImage imageWithContentsOfFile:v6];
    v8 = *(*(a1 + 80) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = [*(a1 + 48) filePath];
  if ([v10 length])
  {
    v11 = [UIImage imageWithContentsOfFile:v10];
    v12 = [v11 imageWithRenderingMode:2];
    v13 = *(*(a1 + 88) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001D20;
  block[3] = &unk_100008290;
  v18 = *(a1 + 72);
  v16 = *(a1 + 56);
  v19 = *(a1 + 80);
  v17 = *(a1 + 64);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100001D20(uint64_t a1)
{
  v2 = [NSSArticleInternal alloc];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = [*(a1 + 32) title];
  v5 = [*(a1 + 32) shortExcerpt];
  v6 = [*(a1 + 32) publishDate];
  v7 = [*(a1 + 32) sourceName];
  v9 = [v2 initWithThumbnailImage:v3 title:v4 shortExcerpt:v5 publishDate:v6 publisherName:v7 publisherLogoImage:*(*(*(a1 + 56) + 8) + 40) publisherLogoMaskImage:*(*(*(a1 + 64) + 8) + 40)];

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v9);
  }
}

void sub_1000023D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100002404(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained articleViewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000024B4;
  v6[3] = &unk_100008330;
  v6[4] = WeakRetained;
  [v5 presentArticle:v3 completion:v6];
}

id sub_1000024B4(uint64_t a1, double a2, double a3)
{
  [*(a1 + 32) setArticlePreferredSize:?];
  v6 = *(a1 + 32);

  return [v6 setPreferredContentSize:{a2, a3}];
}

void sub_100002508(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = [WeakRetained articleViewController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100002654;
    v10[3] = &unk_100008330;
    v10[4] = v5;
    [v6 presentArticle:v3 completion:v10];
  }

  else
  {
    v7 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000026A8;
    v8[3] = &unk_100008358;
    objc_copyWeak(&v9, (a1 + 40));
    [NSSArticleInternal articleFromNotification:v7 completion:v8];
    objc_destroyWeak(&v9);
  }
}

id sub_100002654(uint64_t a1, double a2, double a3)
{
  [*(a1 + 32) setArticlePreferredSize:?];
  v6 = *(a1 + 32);

  return [v6 setPreferredContentSize:{a2, a3}];
}

void sub_1000026A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained articleViewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002758;
  v6[3] = &unk_100008330;
  v6[4] = WeakRetained;
  [v5 presentArticle:v3 completion:v6];
}

id sub_100002758(uint64_t a1, double a2, double a3)
{
  [*(a1 + 32) setArticlePreferredSize:?];
  v6 = *(a1 + 32);

  return [v6 setPreferredContentSize:{a2, a3}];
}

void sub_100002E80(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x26u);
}

void sub_100002F2C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "cachesDirectory"];
  *buf = 136315906;
  v2 = "[FRArticleNotificationArticleSource initWithCachesDirectory:]";
  v3 = 2080;
  v4 = "FRArticleNotificationArticleSource.m";
  v5 = 1024;
  sub_100001ECC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10000300C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "fetchCompletion != nil"];
  *buf = 136315906;
  v2 = "[FRArticleNotificationArticleSource fetchArticleWithID:completion:]";
  v3 = 2080;
  v4 = "FRArticleNotificationArticleSource.m";
  v5 = 1024;
  sub_100001ECC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000030F0()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100002E70();
  sub_100002E60();
  sub_100001ECC();
  sub_100002E80(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "contentContext", v6, 2u);
}