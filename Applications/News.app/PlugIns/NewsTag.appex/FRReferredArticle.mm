@interface FRReferredArticle
- (FRReferredArticle)initWithArticleID:(id)d sourceChannelID:(id)iD sectionData:(id)data flintDocumentAssetHandle:(id)handle articleRecordData:(id)recordData sourceChannelRecordData:(id)channelRecordData parentIssueRecordData:(id)issueRecordData;
- (id)headlineWithContentContext:(id)context;
@end

@implementation FRReferredArticle

- (FRReferredArticle)initWithArticleID:(id)d sourceChannelID:(id)iD sectionData:(id)data flintDocumentAssetHandle:(id)handle articleRecordData:(id)recordData sourceChannelRecordData:(id)channelRecordData parentIssueRecordData:(id)issueRecordData
{
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  handleCopy = handle;
  recordDataCopy = recordData;
  channelRecordDataCopy = channelRecordData;
  issueRecordDataCopy = issueRecordData;
  v38.receiver = self;
  v38.super_class = FRReferredArticle;
  v21 = [(FRReferredArticle *)&v38 init];
  if (v21)
  {
    v22 = [dCopy copy];
    articleID = v21->_articleID;
    v21->_articleID = v22;

    v24 = [iDCopy copy];
    sourceChannelID = v21->_sourceChannelID;
    v21->_sourceChannelID = v24;

    objc_storeStrong(&v21->_sectionData, data);
    objc_storeStrong(&v21->_flintDocumentAssetHandle, handle);
    v26 = [recordDataCopy copy];
    articleRecordData = v21->_articleRecordData;
    v21->_articleRecordData = v26;

    v28 = [channelRecordDataCopy copy];
    sourceChannelRecordData = v21->_sourceChannelRecordData;
    v21->_sourceChannelRecordData = v28;

    v30 = [issueRecordDataCopy copy];
    parentIssueRecordData = v21->_parentIssueRecordData;
    v21->_parentIssueRecordData = v30;

    filePath = [handleCopy filePath];

    if (filePath)
    {
      v33 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
        uniqueKey = [handleCopy uniqueKey];
        *buf = 138543618;
        v40 = uniqueKey;
        v41 = 2114;
        v42 = dCopy;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "initializing referredArticle with prefetched JSON %{public}@ to asset manager for article %{public}@", buf, 0x16u);
      }
    }
  }

  return v21;
}

- (id)headlineWithContentContext:(id)context
{
  contextCopy = context;
  if (!contextCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A139C();
  }

  articleRecordData = [(FRReferredArticle *)self articleRecordData];
  if (articleRecordData && (v6 = articleRecordData, -[FRReferredArticle sourceChannelID](self, "sourceChannelID"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7) && (([contextCopy tagController], v8 = objc_claimAutoreleasedReturnValue(), -[FRReferredArticle sourceChannelID](self, "sourceChannelID"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "slowCachedTagForID:", v9), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "asChannel"), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v11) || (-[FRReferredArticle sourceChannelRecordData](self, "sourceChannelRecordData"), v16 = objc_claimAutoreleasedReturnValue(), v16, v16) && (v17 = [FCTag alloc], -[FRReferredArticle sourceChannelRecordData](self, "sourceChannelRecordData"), v18 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v17, "initWithData:context:", v18, contextCopy), v18, v11)))
  {
    parentIssueRecordData = [(FRReferredArticle *)self parentIssueRecordData];

    v32 = v11;
    if (parentIssueRecordData)
    {
      v13 = [FCIssue alloc];
      parentIssueRecordData2 = [(FRReferredArticle *)self parentIssueRecordData];
      assetManager = [contextCopy assetManager];
      v33 = [v13 initWithData:parentIssueRecordData2 sourceChannel:v11 assetManager:assetManager];
    }

    else
    {
      v33 = 0;
    }

    appConfigurationManager = [contextCopy appConfigurationManager];
    possiblyUnfetchedAppConfiguration = [appConfigurationManager possiblyUnfetchedAppConfiguration];

    v30 = [[FCHeadlineExperimentalTitleProvider alloc] initWithShouldShowAlternateHeadlines:{objc_msgSend(possiblyUnfetchedAppConfiguration, "shouldShowAlternateHeadlines")}];
    v22 = [FCArticleHeadline alloc];
    articleRecordData2 = [(FRReferredArticle *)self articleRecordData];
    topStoriesConfig = [possiblyUnfetchedAppConfiguration topStoriesConfig];
    styleConfigurations = [topStoriesConfig styleConfigurations];
    topStoriesConfig2 = [possiblyUnfetchedAppConfiguration topStoriesConfig];
    storyTypeTimeout = [topStoriesConfig2 storyTypeTimeout];
    articleRapidUpdatesTimeout = [possiblyUnfetchedAppConfiguration articleRapidUpdatesTimeout];
    assetManager2 = [contextCopy assetManager];
    v19 = [v22 initWithArticleRecordData:articleRecordData2 sourceChannel:v32 parentIssue:v33 storyStyleConfigs:styleConfigurations storyTypeTimeout:storyTypeTimeout rapidUpdatesTimeout:articleRapidUpdatesTimeout assetManager:assetManager2 experimentalTitleProvider:v30];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end