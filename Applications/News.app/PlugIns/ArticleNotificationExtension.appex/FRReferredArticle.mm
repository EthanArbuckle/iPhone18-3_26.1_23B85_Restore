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
    sub_1000030F0();
  }

  articleRecordData = [(FRReferredArticle *)self articleRecordData];
  if (!articleRecordData)
  {
    goto LABEL_11;
  }

  v6 = articleRecordData;
  sourceChannelID = [(FRReferredArticle *)self sourceChannelID];

  if (!sourceChannelID)
  {
    goto LABEL_11;
  }

  tagController = [contextCopy tagController];
  sourceChannelID2 = [(FRReferredArticle *)self sourceChannelID];
  v10 = [tagController slowCachedTagForID:sourceChannelID2];
  asChannel = [v10 asChannel];

  if (asChannel)
  {
    goto LABEL_7;
  }

  sourceChannelRecordData = [(FRReferredArticle *)self sourceChannelRecordData];

  if (!sourceChannelRecordData)
  {
    goto LABEL_11;
  }

  v17 = [FCTag alloc];
  sourceChannelRecordData2 = [(FRReferredArticle *)self sourceChannelRecordData];
  asChannel = [v17 initWithData:sourceChannelRecordData2 context:contextCopy];

  if (asChannel)
  {
LABEL_7:
    parentIssueRecordData = [(FRReferredArticle *)self parentIssueRecordData];

    v32 = asChannel;
    if (parentIssueRecordData)
    {
      v13 = [FCIssue alloc];
      parentIssueRecordData2 = [(FRReferredArticle *)self parentIssueRecordData];
      assetManager = [contextCopy assetManager];
      v33 = [v13 initWithData:parentIssueRecordData2 sourceChannel:asChannel assetManager:assetManager];
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
LABEL_11:
    v19 = 0;
  }

  return v19;
}

@end