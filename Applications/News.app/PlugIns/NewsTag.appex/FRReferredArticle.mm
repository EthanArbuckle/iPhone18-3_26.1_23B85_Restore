@interface FRReferredArticle
- (FRReferredArticle)initWithArticleID:(id)a3 sourceChannelID:(id)a4 sectionData:(id)a5 flintDocumentAssetHandle:(id)a6 articleRecordData:(id)a7 sourceChannelRecordData:(id)a8 parentIssueRecordData:(id)a9;
- (id)headlineWithContentContext:(id)a3;
@end

@implementation FRReferredArticle

- (FRReferredArticle)initWithArticleID:(id)a3 sourceChannelID:(id)a4 sectionData:(id)a5 flintDocumentAssetHandle:(id)a6 articleRecordData:(id)a7 sourceChannelRecordData:(id)a8 parentIssueRecordData:(id)a9
{
  v15 = a3;
  v16 = a4;
  v37 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v38.receiver = self;
  v38.super_class = FRReferredArticle;
  v21 = [(FRReferredArticle *)&v38 init];
  if (v21)
  {
    v22 = [v15 copy];
    articleID = v21->_articleID;
    v21->_articleID = v22;

    v24 = [v16 copy];
    sourceChannelID = v21->_sourceChannelID;
    v21->_sourceChannelID = v24;

    objc_storeStrong(&v21->_sectionData, a5);
    objc_storeStrong(&v21->_flintDocumentAssetHandle, a6);
    v26 = [v18 copy];
    articleRecordData = v21->_articleRecordData;
    v21->_articleRecordData = v26;

    v28 = [v19 copy];
    sourceChannelRecordData = v21->_sourceChannelRecordData;
    v21->_sourceChannelRecordData = v28;

    v30 = [v20 copy];
    parentIssueRecordData = v21->_parentIssueRecordData;
    v21->_parentIssueRecordData = v30;

    v32 = [v17 filePath];

    if (v32)
    {
      v33 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
        v35 = [v17 uniqueKey];
        *buf = 138543618;
        v40 = v35;
        v41 = 2114;
        v42 = v15;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "initializing referredArticle with prefetched JSON %{public}@ to asset manager for article %{public}@", buf, 0x16u);
      }
    }
  }

  return v21;
}

- (id)headlineWithContentContext:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A139C();
  }

  v5 = [(FRReferredArticle *)self articleRecordData];
  if (v5 && (v6 = v5, -[FRReferredArticle sourceChannelID](self, "sourceChannelID"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7) && (([v4 tagController], v8 = objc_claimAutoreleasedReturnValue(), -[FRReferredArticle sourceChannelID](self, "sourceChannelID"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "slowCachedTagForID:", v9), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "asChannel"), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v11) || (-[FRReferredArticle sourceChannelRecordData](self, "sourceChannelRecordData"), v16 = objc_claimAutoreleasedReturnValue(), v16, v16) && (v17 = [FCTag alloc], -[FRReferredArticle sourceChannelRecordData](self, "sourceChannelRecordData"), v18 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v17, "initWithData:context:", v18, v4), v18, v11)))
  {
    v12 = [(FRReferredArticle *)self parentIssueRecordData];

    v32 = v11;
    if (v12)
    {
      v13 = [FCIssue alloc];
      v14 = [(FRReferredArticle *)self parentIssueRecordData];
      v15 = [v4 assetManager];
      v33 = [v13 initWithData:v14 sourceChannel:v11 assetManager:v15];
    }

    else
    {
      v33 = 0;
    }

    v20 = [v4 appConfigurationManager];
    v21 = [v20 possiblyUnfetchedAppConfiguration];

    v30 = [[FCHeadlineExperimentalTitleProvider alloc] initWithShouldShowAlternateHeadlines:{objc_msgSend(v21, "shouldShowAlternateHeadlines")}];
    v22 = [FCArticleHeadline alloc];
    v29 = [(FRReferredArticle *)self articleRecordData];
    v31 = [v21 topStoriesConfig];
    v23 = [v31 styleConfigurations];
    v24 = [v21 topStoriesConfig];
    v25 = [v24 storyTypeTimeout];
    v26 = [v21 articleRapidUpdatesTimeout];
    v27 = [v4 assetManager];
    v19 = [v22 initWithArticleRecordData:v29 sourceChannel:v32 parentIssue:v33 storyStyleConfigs:v23 storyTypeTimeout:v25 rapidUpdatesTimeout:v26 assetManager:v27 experimentalTitleProvider:v30];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end