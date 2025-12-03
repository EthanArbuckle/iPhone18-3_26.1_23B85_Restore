@interface FRArticleEditorialItemProvider
- (BOOL)shouldShowBadgeForArticleID:(id)d currentDocumentVersion:(id)version lastSeenDocumentVersion:(id)documentVersion;
- (FRArticleEditorialItemProvider)init;
- (FRArticleEditorialItemProvider)initWithEditorialItemEntryManager:(id)manager thumbnailCreator:(id)creator editorialItemCreator:(id)itemCreator;
- (void)createEditorialItemWithContext:(id)context articleModifiedDate:(id)date articleID:(id)d headline:(id)headline flintDataProvider:(id)provider completion:(id)completion;
- (void)downloadThumbnailIconWithContext:(id)context flintDataProvider:(id)provider iconIdentifier:(id)identifier completion:(id)completion;
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

- (FRArticleEditorialItemProvider)initWithEditorialItemEntryManager:(id)manager thumbnailCreator:(id)creator editorialItemCreator:(id)itemCreator
{
  managerCopy = manager;
  creatorCopy = creator;
  itemCreatorCopy = itemCreator;
  if (!managerCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F4A4();
    if (creatorCopy)
    {
      goto LABEL_6;
    }
  }

  else if (creatorCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F568();
  }

LABEL_6:
  if (!itemCreatorCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F62C();
  }

  v15.receiver = self;
  v15.super_class = FRArticleEditorialItemProvider;
  v12 = [(FRArticleEditorialItemProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_editorialItemEntryManager, manager);
    objc_storeStrong(&v13->_thumbnailCreator, creator);
    objc_storeStrong(&v13->_editorialItemCreator, itemCreator);
  }

  return v13;
}

- (void)createEditorialItemWithContext:(id)context articleModifiedDate:(id)date articleID:(id)d headline:(id)headline flintDataProvider:(id)provider completion:(id)completion
{
  contextCopy = context;
  dateCopy = date;
  dCopy = d;
  headlineCopy = headline;
  providerCopy = provider;
  completionCopy = completion;
  editorialItemEntryManager = [(FRArticleEditorialItemProvider *)self editorialItemEntryManager];
  editorialItemsByID = [editorialItemEntryManager editorialItemsByID];
  v20 = [editorialItemsByID objectForKey:dCopy];

  v57 = contextCopy;
  documentController = [contextCopy documentController];
  metadata = [documentController metadata];

  documentVersion = [metadata documentVersion];
  v62 = v20;
  lastSeenDocumentVersion = [v20 lastSeenDocumentVersion];
  v24 = [(FRArticleEditorialItemProvider *)self shouldShowBadgeForArticleID:dCopy currentDocumentVersion:documentVersion lastSeenDocumentVersion:?];
  feedNavigationAppearance = [metadata feedNavigationAppearance];
  compactTitle = [feedNavigationAppearance compactTitle];

  feedNavigationAppearance2 = [metadata feedNavigationAppearance];
  subtitle = [feedNavigationAppearance2 subtitle];

  feedNavigationAppearance3 = [metadata feedNavigationAppearance];
  subtitleColor = [feedNavigationAppearance3 subtitleColor];

  dCopy = [NSString stringWithFormat:@"https://apple.news/%@", dCopy];
  feedNavigationAppearance4 = [metadata feedNavigationAppearance];
  iconImageIdentifier = [feedNavigationAppearance4 iconImageIdentifier];

  v31 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v97 = compactTitle;
    v98 = 2112;
    v99 = iconImageIdentifier;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Editorial Item Provider: compactitle=%@ iconIdentifier=%@", buf, 0x16u);
  }

  v56 = documentVersion;
  if (compactTitle)
  {
    v32 = +[NSMutableArray array];
    v53 = dateCopy;
    if (v24)
    {
      v33 = [NSNumber numberWithInteger:0];
      [v32 addObject:v33];

      dateCopy = v53;
    }

    v54 = headlineCopy;
    if (iconImageIdentifier)
    {
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_100037E84;
      v64[3] = &unk_1000C3C78;
      v52 = &v65;
      v65 = dCopy;
      v51 = &v66;
      v66 = compactTitle;
      v50 = &v67;
      v67 = subtitle;
      v49 = &v68;
      v68 = subtitleColor;
      v48 = &v69;
      v69 = dCopy;
      v47 = &v70;
      v70 = dateCopy;
      v46 = &v71;
      v71 = documentVersion;
      v34 = v72;
      v35 = v62;
      v76 = v24;
      v72[0] = v35;
      v72[1] = self;
      v36 = &v73;
      v73 = v32;
      v37 = &v74;
      v74 = headlineCopy;
      v38 = &v75;
      v75 = completionCopy;
      v39 = v32;
      selfCopy = self;
      v41 = v57;
      [(FRArticleEditorialItemProvider *)selfCopy downloadThumbnailIconWithContext:v57 flintDataProvider:providerCopy iconIdentifier:iconImageIdentifier completion:v64];
    }

    else
    {
      v77 = _NSConcreteStackBlock;
      v78 = 3221225472;
      v79 = sub_100037D24;
      v80 = &unk_1000C3C50;
      v52 = &v81;
      v81 = dCopy;
      v51 = &v82;
      v82 = compactTitle;
      v50 = &v83;
      v83 = subtitle;
      v49 = &v84;
      v84 = subtitleColor;
      v48 = &v85;
      v85 = dCopy;
      v47 = &v86;
      v86 = dateCopy;
      v46 = &v87;
      v87 = documentVersion;
      v34 = v88;
      v44 = v62;
      v92 = v24;
      v88[0] = v44;
      v88[1] = self;
      v36 = &v89;
      v89 = v32;
      v37 = &v90;
      v90 = headlineCopy;
      v38 = &v91;
      v91 = completionCopy;
      v45 = v32;
      FCPerformBlockOnMainThread();
      v41 = v57;
    }

    dateCopy = v53;
    headlineCopy = v54;
    v43 = v62;
    v42 = completionCopy;
  }

  else
  {
    v93[0] = _NSConcreteStackBlock;
    v93[1] = 3221225472;
    v93[2] = sub_100037C98;
    v93[3] = &unk_1000C3C28;
    v42 = completionCopy;
    v95 = completionCopy;
    v93[4] = self;
    v43 = v62;
    v94 = v62;
    sub_100037C98(v93);

    v32 = v95;
    v41 = v57;
  }
}

- (BOOL)shouldShowBadgeForArticleID:(id)d currentDocumentVersion:(id)version lastSeenDocumentVersion:(id)documentVersion
{
  dCopy = d;
  versionCopy = version;
  documentVersionCopy = documentVersion;
  v10 = documentVersionCopy;
  if (!versionCopy)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000381FC;
    v17[3] = &unk_1000C3CA0;
    v18 = dCopy;
    v12 = sub_1000381FC(v17);
    v13 = v18;
LABEL_9:

    goto LABEL_11;
  }

  if (!documentVersionCopy)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003824C;
    v15[3] = &unk_1000C3CA0;
    v16 = dCopy;
    v12 = sub_10003824C(v15);
    v13 = v16;
    goto LABEL_9;
  }

  if ([versionCopy compare:documentVersionCopy options:64] == 1)
  {
    v11 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v20 = dCopy;
      v21 = 2114;
      v22 = versionCopy;
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

- (void)downloadThumbnailIconWithContext:(id)context flintDataProvider:(id)provider iconIdentifier:(id)identifier completion:(id)completion
{
  contextCopy = context;
  providerCopy = provider;
  v15 = contextCopy;
  identifierCopy = identifier;
  v17 = providerCopy;
  completionCopy = completion;
  v11 = completionCopy;
  v12 = providerCopy;
  v13 = identifierCopy;
  v14 = contextCopy;
  FCPerformBlockOnMainThread();
}

@end