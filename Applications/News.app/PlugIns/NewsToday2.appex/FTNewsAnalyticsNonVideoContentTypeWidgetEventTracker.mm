@interface FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker
- (FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker)init;
- (FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker)initWithSessionManager:(id)manager userIDProvider:(id)provider;
- (id)_newWidgetEngagementWithTrackableWidgetState:(id)state;
- (id)_widgetEngagementEventAtDate:(id)date withEngagement:(id)engagement trackableWidgetState:(id)state;
- (id)_widgetEngagementForHeadline:(id)headline inSection:(id)section withTrackableWidgetState:(id)state;
- (id)engagementWithBackgroundAtDate:(id)date withTargetURL:(id)l trackableWidgetState:(id)state;
- (id)engagementWithBannerAtDate:(id)date withTargetURL:(id)l trackableWidgetState:(id)state;
- (id)engagementWithEmbedTapTargetAtDate:(id)date withEmbedURL:(id)l targetURL:(id)rL trackableWidgetState:(id)state;
- (id)engagementWithHeaderAtDate:(id)date withTargetURL:(id)l trackableWidgetState:(id)state;
- (id)engagementWithPlaceholderAtDate:(id)date withTargetURL:(id)l trackableWidgetState:(id)state;
- (id)engagementWithRowAtDate:(id)date forHeadline:(id)headline withTrackableWidgetState:(id)state;
- (int)_pbDisplayModeWithDisplayMode:(unint64_t)mode;
- (int)_pbStackLocationWithStackLocation:(unint64_t)location;
- (int)_pbWidgetTypeWithStackKind:(unint64_t)kind;
- (void)_annotateEvent:(id)event withTrackableWidgetState:(id)state;
- (void)visibleItemsDidChangeAtDate:(id)date withTriggerEvent:(unint64_t)event trackableWidgetState:(id)state;
@end

@implementation FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker

- (FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker init]";
    v8 = 2080;
    v9 = "FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker.m";
    v10 = 1024;
    v11 = 72;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker)initWithSessionManager:(id)manager userIDProvider:(id)provider
{
  managerCopy = manager;
  providerCopy = provider;
  if (!managerCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C6038();
    if (providerCopy)
    {
      goto LABEL_6;
    }
  }

  else if (providerCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C60FC();
  }

LABEL_6:
  v19.receiver = self;
  v19.super_class = FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker;
  v8 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)&v19 init];
  if (v8)
  {
    v9 = [[NSSNewsAnalyticsEventAnnotator alloc] initWithSessionManager:managerCopy userIDProvider:providerCopy];
    eventAnnotator = v8->_eventAnnotator;
    v8->_eventAnnotator = v9;

    v11 = objc_opt_new();
    lastVisibleItemsChangePairs = v8->_lastVisibleItemsChangePairs;
    v8->_lastVisibleItemsChangePairs = v11;

    v13 = objc_opt_new();
    outstandingItemExposureEvents = v8->_outstandingItemExposureEvents;
    v8->_outstandingItemExposureEvents = v13;

    v15 = [[NSSNewsAnalyticsEnvelopeDescriptor alloc] initWithContentType:3 contentTypeVersion:1 contentTypeMinorVersion:0 contentTypePatchVersion:0];
    v16 = [[NSSNewsAnalyticsPBEventAccumulator alloc] initWithEnvelopeDescriptor:v15 sessionManager:managerCopy];
    accumulator = v8->_accumulator;
    v8->_accumulator = v16;

    objc_storeStrong(&v8->_userIDProvider, provider);
  }

  return v8;
}

- (void)visibleItemsDidChangeAtDate:(id)date withTriggerEvent:(unint64_t)event trackableWidgetState:(id)state
{
  dateCopy = date;
  stateCopy = state;
  if (!dateCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C61C0();
    if (stateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (stateCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C6284();
  }

LABEL_6:
  lastVisibleItemsChangeDate = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self lastVisibleItemsChangeDate];
  outstandingItemExposureEvents = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self outstandingItemExposureEvents];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10000BBF0;
  v48[3] = &unk_10010BC08;
  v12 = lastVisibleItemsChangeDate;
  v49 = v12;
  v13 = dateCopy;
  v50 = v13;
  [outstandingItemExposureEvents enumerateObjectsUsingBlock:v48];
  accumulator = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self accumulator];
  [accumulator observeEvents:outstandingItemExposureEvents];

  -[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker setItemExposuresSinceLastWidgetAppearance:](self, "setItemExposuresSinceLastWidgetAppearance:", [outstandingItemExposureEvents count] + -[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker itemExposuresSinceLastWidgetAppearance](self, "itemExposuresSinceLastWidgetAppearance"));
  visibleItems = [stateCopy visibleItems];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10000BC50;
  v45[3] = &unk_10010BC30;
  v45[4] = self;
  v16 = stateCopy;
  v46 = v16;
  v17 = visibleItems;
  v47 = v17;
  v18 = [v17 fc_arrayByTransformingWithBlock:v45];
  v19 = [v18 mutableCopy];
  [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self setOutstandingItemExposureEvents:v19];

  if (event == 4)
  {
    widgetAppearanceDate = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self widgetAppearanceDate];
    if (widgetAppearanceDate)
    {
      v21 = objc_opt_new();
      entryID = [v16 entryID];
      [v21 setEntryId:entryID];

      appearanceType = [v16 appearanceType];
      if (appearanceType < 4)
      {
        v24 = (appearanceType + 1);
      }

      else
      {
        v24 = 0;
      }

      [v21 setWidgetAppearanceType:v24];
      [v21 setWidgetArticleCount:{-[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker lastVisibleItemsChangeArticleCount](self, "lastVisibleItemsChangeArticleCount")}];
      [v21 setWidgetHeadlineExposureCount:{-[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker itemExposuresSinceLastWidgetAppearance](self, "itemExposuresSinceLastWidgetAppearance")}];
      lastVisibleItemsChangePairs = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self lastVisibleItemsChangePairs];
      v42 = v12;
      v26 = [lastVisibleItemsChangePairs mutableCopy];
      [v21 setWidgetSectionsArticleCountPairs:v26];

      contentID = [v16 contentID];
      [v21 setContentId:contentID];

      [v21 setWidgetType:{-[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker _pbWidgetTypeWithStackKind:](self, "_pbWidgetTypeWithStackKind:", objc_msgSend(v16, "stackKind"))}];
      [v21 setWidgetExposureStackLocation:{-[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker _pbStackLocationWithStackLocation:](self, "_pbStackLocationWithStackLocation:", objc_msgSend(v16, "stackLocation"))}];
      todayResults = [v16 todayResults];
      banner = [todayResults banner];
      identifier = [banner identifier];
      [v21 setBannerIdentifier:identifier];

      v31 = objc_opt_new();
      [v31 setTodayWidgetExposure:v21];
      v32 = +[NTPBEvent nss_eventWithIdentifier];
      v33 = +[NSDate date];
      [v32 ft_setTemporalBoundsBySanitizingStartDate:widgetAppearanceDate endDate:v33];

      eventAnnotator = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self eventAnnotator];
      [eventAnnotator annotateEvent:v32 withOptions:47];

      [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _annotateEvent:v32 withTrackableWidgetState:v16];
      [v32 setEventObject:v31];
      accumulator2 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self accumulator];
      [accumulator2 observeEvent:v32];

      [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self setWidgetAppearanceDate:0];
      [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self setItemExposuresSinceLastWidgetAppearance:0];

      v12 = v42;
    }
  }

  [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self setLastVisibleItemsChangeDate:v13];
  visibleSections = [v16 visibleSections];
  v37 = [v16 extentsOfSections:visibleSections];

  visibleSections2 = [v16 visibleSections];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10000BEF4;
  v43[3] = &unk_10010BC58;
  v44 = v37;
  v39 = v37;
  v40 = [visibleSections2 fc_arrayByTransformingWithBlock:v43];
  v41 = [v40 mutableCopy];
  [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self setLastVisibleItemsChangePairs:v41];

  -[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker setLastVisibleItemsChangeArticleCount:](self, "setLastVisibleItemsChangeArticleCount:", [v17 count]);
}

- (id)engagementWithRowAtDate:(id)date forHeadline:(id)headline withTrackableWidgetState:(id)state
{
  headlineCopy = headline;
  stateCopy = state;
  v9 = NTNewsSourceIdentifier;
  fetchInfoForVisibleResults = [stateCopy fetchInfoForVisibleResults];
  todaySourceIdentifier = [fetchInfoForVisibleResults todaySourceIdentifier];
  LODWORD(v9) = [v9 isEqualToString:todaySourceIdentifier];

  if (v9 && ([headlineCopy analyticsElement], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = [stateCopy sectionForItem:headlineCopy];
    v14 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _widgetEngagementForHeadline:headlineCopy inSection:v13 withTrackableWidgetState:stateCopy];
    [v14 setWidgetEngagementType:1];
    v15 = objc_opt_new();
    [v15 setWidgetEngagement:v14];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)engagementWithEmbedTapTargetAtDate:(id)date withEmbedURL:(id)l targetURL:(id)rL trackableWidgetState:(id)state
{
  lCopy = l;
  rLCopy = rL;
  stateCopy = state;
  v12 = NTNewsSourceIdentifier;
  fetchInfoForVisibleResults = [stateCopy fetchInfoForVisibleResults];
  todaySourceIdentifier = [fetchInfoForVisibleResults todaySourceIdentifier];
  LODWORD(v12) = [v12 isEqualToString:todaySourceIdentifier];

  if (v12)
  {
    v15 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _newWidgetEngagementWithTrackableWidgetState:stateCopy];
    [v15 setWidgetEngagementType:5];
    absoluteString = [lCopy absoluteString];
    [v15 setWebEmbedId:absoluteString];

    absoluteString2 = [rLCopy absoluteString];
    [v15 setEngagementTargetUrl:absoluteString2];

    [v15 setWidgetContentType:2];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)engagementWithHeaderAtDate:(id)date withTargetURL:(id)l trackableWidgetState:(id)state
{
  lCopy = l;
  stateCopy = state;
  v9 = NTNewsSourceIdentifier;
  fetchInfoForVisibleResults = [stateCopy fetchInfoForVisibleResults];
  todaySourceIdentifier = [fetchInfoForVisibleResults todaySourceIdentifier];
  LODWORD(v9) = [v9 isEqualToString:todaySourceIdentifier];

  if (v9)
  {
    v12 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _newWidgetEngagementWithTrackableWidgetState:stateCopy];
    [v12 setWidgetEngagementType:9];
    absoluteString = [lCopy absoluteString];
    [v12 setEngagementTargetUrl:absoluteString];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)engagementWithPlaceholderAtDate:(id)date withTargetURL:(id)l trackableWidgetState:(id)state
{
  lCopy = l;
  stateCopy = state;
  v9 = NTNewsSourceIdentifier;
  fetchInfoForVisibleResults = [stateCopy fetchInfoForVisibleResults];
  todaySourceIdentifier = [fetchInfoForVisibleResults todaySourceIdentifier];
  LODWORD(v9) = [v9 isEqualToString:todaySourceIdentifier];

  if (v9)
  {
    v12 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _newWidgetEngagementWithTrackableWidgetState:stateCopy];
    [v12 setWidgetEngagementType:10];
    absoluteString = [lCopy absoluteString];
    [v12 setEngagementTargetUrl:absoluteString];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)engagementWithBackgroundAtDate:(id)date withTargetURL:(id)l trackableWidgetState:(id)state
{
  lCopy = l;
  stateCopy = state;
  v9 = NTNewsSourceIdentifier;
  fetchInfoForVisibleResults = [stateCopy fetchInfoForVisibleResults];
  todaySourceIdentifier = [fetchInfoForVisibleResults todaySourceIdentifier];
  LODWORD(v9) = [v9 isEqualToString:todaySourceIdentifier];

  if (v9)
  {
    v12 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _newWidgetEngagementWithTrackableWidgetState:stateCopy];
    [v12 setWidgetEngagementType:8];
    absoluteString = [lCopy absoluteString];
    [v12 setEngagementTargetUrl:absoluteString];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)engagementWithBannerAtDate:(id)date withTargetURL:(id)l trackableWidgetState:(id)state
{
  lCopy = l;
  stateCopy = state;
  v9 = NTNewsSourceIdentifier;
  fetchInfoForVisibleResults = [stateCopy fetchInfoForVisibleResults];
  todaySourceIdentifier = [fetchInfoForVisibleResults todaySourceIdentifier];
  LODWORD(v9) = [v9 isEqualToString:todaySourceIdentifier];

  if (v9)
  {
    v12 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _newWidgetEngagementWithTrackableWidgetState:stateCopy];
    [v12 setWidgetEngagementType:11];
    absoluteString = [lCopy absoluteString];
    [v12 setEngagementTargetUrl:absoluteString];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_widgetEngagementEventAtDate:(id)date withEngagement:(id)engagement trackableWidgetState:(id)state
{
  dateCopy = date;
  engagementCopy = engagement;
  stateCopy = state;
  if (!dateCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C640C();
    if (engagementCopy)
    {
      goto LABEL_6;
    }
  }

  else if (engagementCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C64D0();
  }

LABEL_6:
  if (!stateCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C6594();
  }

  v11 = objc_opt_new();
  [v11 setWidgetEngagement:engagementCopy];
  v12 = +[NTPBEvent nss_eventWithIdentifier];
  [v12 nss_setStartDate:dateCopy];
  eventAnnotator = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self eventAnnotator];
  [eventAnnotator annotateEvent:v12 withOptions:47];

  [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _annotateEvent:v12 withTrackableWidgetState:stateCopy];
  [v12 setGestureType:1];
  [v12 setEventObject:v11];

  return v12;
}

- (void)_annotateEvent:(id)event withTrackableWidgetState:(id)state
{
  eventCopy = event;
  stateCopy = state;
  if (!eventCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C6658();
    if (stateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (stateCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C671C();
  }

LABEL_6:
  fetchInfoForVisibleResults = [stateCopy fetchInfoForVisibleResults];
  appConfigTreatmentID = [fetchInfoForVisibleResults appConfigTreatmentID];

  if (appConfigTreatmentID)
  {
    [eventCopy setAppConfigTreatmentId:{objc_msgSend(appConfigTreatmentID, "integerValue")}];
  }
}

- (id)_widgetEngagementForHeadline:(id)headline inSection:(id)section withTrackableWidgetState:(id)state
{
  headlineCopy = headline;
  stateCopy = state;
  analyticsElement = [headlineCopy analyticsElement];

  if (analyticsElement)
  {
    v10 = [stateCopy sectionForItem:headlineCopy];
    visibleSections = [stateCopy visibleSections];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000CA5C;
    v26[3] = &unk_10010BC80;
    v12 = v10;
    v27 = v12;
    v13 = [visibleSections fc_arrayByTransformingWithBlock:v26];

    analyticsElement2 = [headlineCopy analyticsElement];
    articleID = [analyticsElement2 articleID];

    v16 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _newWidgetEngagementWithTrackableWidgetState:stateCopy];
    [v16 setArticleId:articleID];
    analyticsElement3 = [headlineCopy analyticsElement];
    channelID = [analyticsElement3 channelID];
    [v16 setSourceChannelId:channelID];

    identifier = [v12 identifier];
    [v16 setWidgetSectionId:identifier];

    subidentifier = [v12 subidentifier];
    [v16 setWidgetSectionSubid:subidentifier];

    [v16 setWidgetSectionDisplayRank:{objc_msgSend(stateCopy, "absoluteOrderOfSection:", v12)}];
    [v16 setWidgetArticleRank:{objc_msgSend(stateCopy, "absoluteOrderOfItem:", headlineCopy)}];
    items = [v12 items];
    [v16 setWidgetArticleRankInSection:{objc_msgSend(items, "indexOfObject:", headlineCopy)}];

    [v16 setWidgetArticleCount:{objc_msgSend(stateCopy, "absoluteItemCountForCurrentDisplayMode")}];
    items2 = [v12 items];
    [v16 setWidgetArticleCountInSection:{objc_msgSend(items2, "count")}];

    v23 = [v13 copy];
    [v16 setOtherVisibleSections:v23];

    [v16 setWidgetContentType:0];
    storyType = [headlineCopy storyType];
    [v16 setStoryType:storyType];

    if (![headlineCopy itemType])
    {
      [v16 setWidgetContentType:1];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_newWidgetEngagementWithTrackableWidgetState:(id)state
{
  stateCopy = state;
  v5 = objc_opt_new();
  userIDProvider = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self userIDProvider];
  userID = [userIDProvider userID];
  [v5 setWidgetUserId:userID];

  fetchDate = [stateCopy fetchDate];
  [fetchDate timeIntervalSince1970];
  [v5 setContentFetchDate:v9];

  [v5 setWidgetDisplayMode:{-[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker _pbDisplayModeWithDisplayMode:](self, "_pbDisplayModeWithDisplayMode:", objc_msgSend(stateCopy, "activeDisplayMode"))}];
  contentID = [stateCopy contentID];
  [v5 setContentId:contentID];

  [v5 setWidgetType:{-[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker _pbWidgetTypeWithStackKind:](self, "_pbWidgetTypeWithStackKind:", objc_msgSend(stateCopy, "stackKind"))}];
  [v5 setWidgetExposureStackLocation:{-[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker _pbStackLocationWithStackLocation:](self, "_pbStackLocationWithStackLocation:", objc_msgSend(stateCopy, "stackLocation"))}];
  entryID = [stateCopy entryID];

  [v5 setEntryId:entryID];
  return v5;
}

- (int)_pbDisplayModeWithDisplayMode:(unint64_t)mode
{
  if (mode - 1 < 7)
  {
    return mode;
  }

  else
  {
    return 0;
  }
}

- (int)_pbWidgetTypeWithStackKind:(unint64_t)kind
{
  if (kind - 1 < 3)
  {
    return kind;
  }

  else
  {
    return 0;
  }
}

- (int)_pbStackLocationWithStackLocation:(unint64_t)location
{
  if (location - 1 < 5)
  {
    return location;
  }

  else
  {
    return 0;
  }
}

@end