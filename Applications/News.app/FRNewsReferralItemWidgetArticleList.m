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
    sub_10006B3A0();
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
    sub_10006B464();
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
  v19 = a3;
  if (!v19 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006B528();
  }

  v29 = objc_opt_new();
  v20 = self;
  [(FRNewsReferralItemWidgetArticleList *)self JSONArray];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v31 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v31)
  {
    v30 = *v40;
    v28 = FCWidgetArticleListArticleID;
    v27 = FCWidgetArticleListSourceChannelID;
    v26 = FCWidgetArticleListSectionName;
    v25 = FCWidgetArticleListFlintDocumentURL;
    v24 = FCWidgetArticleListArticleRecordData;
    v23 = FCWidgetArticleListSourceChannelRecordData;
    v22 = FCWidgetArticleListParentIssueRecordData;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v5 = FCDynamicCast();
        v6 = v5;
        if (v5)
        {
          v38 = [v5 objectForKey:v28];
          v34 = [v6 objectForKey:v27];
          v37 = [v6 objectForKey:v26];
          v33 = [[FRSectionData alloc] initWithName:v37];
          v7 = [v6 objectForKey:v25];
          v36 = v7;
          if (v7)
          {
            v8 = [NSURL URLWithString:v7];
            if (v8)
            {
              v9 = [(FRNewsReferralItemWidgetArticleList *)v20 flintDocumentURLAssetHandlesByRemoteURL];
              v10 = [v9 objectForKeyedSubscript:v8];

              v11 = v10;
LABEL_15:
              v12 = [v6 objectForKeyedSubscript:v24];
              if (v12)
              {
                v32 = [[NSData alloc] initWithBase64EncodedString:v12 options:0];
              }

              else
              {
                v32 = 0;
              }

              v35 = v12;
              v13 = [v6 objectForKeyedSubscript:v23];
              if (v13)
              {
                v14 = [[NSData alloc] initWithBase64EncodedString:v13 options:0];
              }

              else
              {
                v14 = 0;
              }

              v15 = [v6 objectForKeyedSubscript:v22];
              if (v15)
              {
                v16 = [[NSData alloc] initWithBase64EncodedString:v15 options:0];
              }

              else
              {
                v16 = 0;
              }

              v17 = [[FRReferredArticle alloc] initWithArticleID:v38 sourceChannelID:v34 sectionData:v33 flintDocumentAssetHandle:v11 articleRecordData:v32 sourceChannelRecordData:v14 parentIssueRecordData:v16];
              [v29 addObject:v17];

              goto LABEL_25;
            }
          }

          else
          {
            v8 = 0;
          }

          v11 = 0;
          goto LABEL_15;
        }

LABEL_25:
      }

      v31 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v31);
  }

  return v29;
}

- (FRNewsReferralItemWidgetArticleList)initWithEncodableElement:(id)a3 assetHandlesByRemoteURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006B5EC();
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
    sub_10006B6B0();
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