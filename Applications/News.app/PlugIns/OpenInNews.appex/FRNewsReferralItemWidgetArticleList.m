@interface FRNewsReferralItemWidgetArticleList
- (FRNewsReferralItemWidgetArticleList)init;
- (FRNewsReferralItemWidgetArticleList)initWithEncodableElement:(id)a3 assetHandlesByRemoteURL:(id)a4;
- (FRNewsReferralItemWidgetArticleList)initWithJSONArray:(id)a3 flintDocumentURLAssetHandlesByRemoteURL:(id)a4;
- (NSArray)JSONArray;
- (NSArray)assetHandles;
- (id)referredArticlesWithAssetManager:(id)a3;
@end

@implementation FRNewsReferralItemWidgetArticleList

- (FRNewsReferralItemWidgetArticleList)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRNewsReferralItemWidgetArticleList init]";
    v8 = 2080;
    v9 = "FRNewsReferralItemWidgetArticleList.m";
    v10 = 1024;
    v11 = 38;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRNewsReferralItemWidgetArticleList init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRNewsReferralItemWidgetArticleList)initWithJSONArray:(id)a3 flintDocumentURLAssetHandlesByRemoteURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100004340();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100004404();
  }

LABEL_6:
  v8 = [[FRNewsReferralItemWidgetArticleListEncodableElement alloc] initWithJSONArray:v6];
  v9 = [(FRNewsReferralItemWidgetArticleList *)self initWithEncodableElement:v8 assetHandlesByRemoteURL:v7];

  return v9;
}

- (NSArray)JSONArray
{
  v2 = [(FRNewsReferralItemWidgetArticleList *)self myEncodableElement];
  v3 = [v2 JSONArray];

  return v3;
}

- (id)referredArticlesWithAssetManager:(id)a3
{
  v20 = a3;
  if (!v20 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000044C8();
  }

  v30 = objc_opt_new();
  v21 = self;
  [(FRNewsReferralItemWidgetArticleList *)self JSONArray];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v32 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v32)
  {
    v31 = *v41;
    v29 = FCWidgetArticleListArticleID;
    v28 = FCWidgetArticleListSourceChannelID;
    v27 = FCWidgetArticleListSectionName;
    v26 = FCWidgetArticleListFlintDocumentURL;
    v25 = FCWidgetArticleListArticleRecordData;
    v24 = FCWidgetArticleListSourceChannelRecordData;
    v23 = FCWidgetArticleListParentIssueRecordData;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v40 + 1) + 8 * i);
        objc_opt_class();
        v6 = FCDynamicCast();
        v7 = v6;
        if (v6)
        {
          v39 = [v6 objectForKey:v29];
          v35 = [v7 objectForKey:v28];
          v38 = [v7 objectForKey:v27];
          v34 = [[FRSectionData alloc] initWithName:v38];
          v8 = [v7 objectForKey:v26];
          v37 = v8;
          if (v8)
          {
            v9 = [NSURL URLWithString:v8];
            if (v9)
            {
              v10 = [(FRNewsReferralItemWidgetArticleList *)v21 flintDocumentURLAssetHandlesByRemoteURL];
              v11 = [v10 objectForKeyedSubscript:v9];

              v12 = v11;
LABEL_15:
              v13 = [v7 objectForKeyedSubscript:v25];
              if (v13)
              {
                v33 = [[NSData alloc] initWithBase64EncodedString:v13 options:0];
              }

              else
              {
                v33 = 0;
              }

              v36 = v13;
              v14 = [v7 objectForKeyedSubscript:v24];
              if (v14)
              {
                v15 = [[NSData alloc] initWithBase64EncodedString:v14 options:0];
              }

              else
              {
                v15 = 0;
              }

              v16 = [v7 objectForKeyedSubscript:v23];
              if (v16)
              {
                v17 = [[NSData alloc] initWithBase64EncodedString:v16 options:0];
              }

              else
              {
                v17 = 0;
              }

              v18 = [[FRReferredArticle alloc] initWithArticleID:v39 sourceChannelID:v35 sectionData:v34 flintDocumentAssetHandle:v12 articleRecordData:v33 sourceChannelRecordData:v15 parentIssueRecordData:v17];
              [v30 addObject:v18];

              goto LABEL_25;
            }
          }

          else
          {
            v9 = 0;
          }

          v12 = 0;
          goto LABEL_15;
        }

LABEL_25:
      }

      v32 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v32);
  }

  return v30;
}

- (FRNewsReferralItemWidgetArticleList)initWithEncodableElement:(id)a3 assetHandlesByRemoteURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000458C();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100004650();
  }

LABEL_6:
  v14.receiver = self;
  v14.super_class = FRNewsReferralItemWidgetArticleList;
  v8 = [(FRNewsReferralItemWidgetArticleList *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    myEncodableElement = v8->_myEncodableElement;
    v8->_myEncodableElement = v9;

    v11 = [v7 copy];
    flintDocumentURLAssetHandlesByRemoteURL = v8->_flintDocumentURLAssetHandlesByRemoteURL;
    v8->_flintDocumentURLAssetHandlesByRemoteURL = v11;
  }

  return v8;
}

- (NSArray)assetHandles
{
  v2 = [(FRNewsReferralItemWidgetArticleList *)self flintDocumentURLAssetHandlesByRemoteURL];
  v3 = [v2 allValues];

  return v3;
}

@end