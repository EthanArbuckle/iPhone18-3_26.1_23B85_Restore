@interface FRArticleEditorialItemProvider
- (BOOL)shouldShowBadgeForArticleID:(id)a3 currentDocumentVersion:(id)a4 lastSeenDocumentVersion:(id)a5;
- (FRArticleEditorialItemProvider)init;
- (FRArticleEditorialItemProvider)initWithEditorialItemEntryManager:(id)a3 thumbnailCreator:(id)a4 editorialItemCreator:(id)a5;
- (void)createEditorialItemWithContext:(id)a3 articleModifiedDate:(id)a4 articleID:(id)a5 headline:(id)a6 flintDataProvider:(id)a7 completion:(id)a8;
- (void)downloadThumbnailIconWithContext:(id)a3 flintDataProvider:(id)a4 iconIdentifier:(id)a5 completion:(id)a6;
@end

@implementation FRArticleEditorialItemProvider

- (FRArticleEditorialItemProvider)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRArticleEditorialItemProvider init]";
    v8 = 2080;
    v9 = "FRArticleEditorialItemProvider.m";
    v10 = 1024;
    v11 = 35;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRArticleEditorialItemProvider init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRArticleEditorialItemProvider)initWithEditorialItemEntryManager:(id)a3 thumbnailCreator:(id)a4 editorialItemCreator:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F4A4();
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else if (v10)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F568();
  }

LABEL_6:
  if (!v11 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F62C();
  }

  v15.receiver = self;
  v15.super_class = FRArticleEditorialItemProvider;
  v12 = [(FRArticleEditorialItemProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_editorialItemEntryManager, a3);
    objc_storeStrong(&v13->_thumbnailCreator, a4);
    objc_storeStrong(&v13->_editorialItemCreator, a5);
  }

  return v13;
}

- (void)createEditorialItemWithContext:(id)a3 articleModifiedDate:(id)a4 articleID:(id)a5 headline:(id)a6 flintDataProvider:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v58 = a7;
  v63 = a8;
  v18 = [(FRArticleEditorialItemProvider *)self editorialItemEntryManager];
  v19 = [v18 editorialItemsByID];
  v20 = [v19 objectForKey:v16];

  v57 = v14;
  v21 = [v14 documentController];
  v22 = [v21 metadata];

  v23 = [v22 documentVersion];
  v62 = v20;
  v55 = [v20 lastSeenDocumentVersion];
  v24 = [(FRArticleEditorialItemProvider *)self shouldShowBadgeForArticleID:v16 currentDocumentVersion:v23 lastSeenDocumentVersion:?];
  v25 = [v22 feedNavigationAppearance];
  v26 = [v25 compactTitle];

  v27 = [v22 feedNavigationAppearance];
  v61 = [v27 subtitle];

  v28 = [v22 feedNavigationAppearance];
  v60 = [v28 subtitleColor];

  v59 = [NSString stringWithFormat:@"https://apple.news/%@", v16];
  v29 = [v22 feedNavigationAppearance];
  v30 = [v29 iconImageIdentifier];

  v31 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v97 = v26;
    v98 = 2112;
    v99 = v30;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Editorial Item Provider: compactitle=%@ iconIdentifier=%@", buf, 0x16u);
  }

  v56 = v23;
  if (v26)
  {
    v32 = +[NSMutableArray array];
    v53 = v15;
    if (v24)
    {
      v33 = [NSNumber numberWithInteger:0];
      [v32 addObject:v33];

      v15 = v53;
    }

    v54 = v17;
    if (v30)
    {
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_100037E84;
      v64[3] = &unk_1000C3C78;
      v52 = &v65;
      v65 = v16;
      v51 = &v66;
      v66 = v26;
      v50 = &v67;
      v67 = v61;
      v49 = &v68;
      v68 = v60;
      v48 = &v69;
      v69 = v59;
      v47 = &v70;
      v70 = v15;
      v46 = &v71;
      v71 = v23;
      v34 = v72;
      v35 = v62;
      v76 = v24;
      v72[0] = v35;
      v72[1] = self;
      v36 = &v73;
      v73 = v32;
      v37 = &v74;
      v74 = v17;
      v38 = &v75;
      v75 = v63;
      v39 = v32;
      v40 = self;
      v41 = v57;
      [(FRArticleEditorialItemProvider *)v40 downloadThumbnailIconWithContext:v57 flintDataProvider:v58 iconIdentifier:v30 completion:v64];
    }

    else
    {
      v77 = _NSConcreteStackBlock;
      v78 = 3221225472;
      v79 = sub_100037D24;
      v80 = &unk_1000C3C50;
      v52 = &v81;
      v81 = v16;
      v51 = &v82;
      v82 = v26;
      v50 = &v83;
      v83 = v61;
      v49 = &v84;
      v84 = v60;
      v48 = &v85;
      v85 = v59;
      v47 = &v86;
      v86 = v15;
      v46 = &v87;
      v87 = v23;
      v34 = v88;
      v44 = v62;
      v92 = v24;
      v88[0] = v44;
      v88[1] = self;
      v36 = &v89;
      v89 = v32;
      v37 = &v90;
      v90 = v17;
      v38 = &v91;
      v91 = v63;
      v45 = v32;
      FCPerformBlockOnMainThread();
      v41 = v57;
    }

    v15 = v53;
    v17 = v54;
    v43 = v62;
    v42 = v63;
  }

  else
  {
    v93[0] = _NSConcreteStackBlock;
    v93[1] = 3221225472;
    v93[2] = sub_100037C98;
    v93[3] = &unk_1000C3C28;
    v42 = v63;
    v95 = v63;
    v93[4] = self;
    v43 = v62;
    v94 = v62;
    sub_100037C98(v93);

    v32 = v95;
    v41 = v57;
  }
}

- (BOOL)shouldShowBadgeForArticleID:(id)a3 currentDocumentVersion:(id)a4 lastSeenDocumentVersion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v8)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000381FC;
    v17[3] = &unk_1000C3CA0;
    v18 = v7;
    v12 = sub_1000381FC(v17);
    v13 = v18;
LABEL_9:

    goto LABEL_11;
  }

  if (!v9)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003824C;
    v15[3] = &unk_1000C3CA0;
    v16 = v7;
    v12 = sub_10003824C(v15);
    v13 = v16;
    goto LABEL_9;
  }

  if ([v8 compare:v9 options:64] == 1)
  {
    v11 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v20 = v7;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Editorial Item Provider: New version of Editorial ArticleID: %{public}@ currentDocumentVersion: %{public}@ lastSeenDocumentVersion: %{public}@, showing badge", buf, 0x20u);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (void)downloadThumbnailIconWithContext:(id)a3 flintDataProvider:(id)a4 iconIdentifier:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v15 = v9;
  v16 = a5;
  v17 = v10;
  v18 = a6;
  v11 = v18;
  v12 = v10;
  v13 = v16;
  v14 = v9;
  FCPerformBlockOnMainThread();
}

@end