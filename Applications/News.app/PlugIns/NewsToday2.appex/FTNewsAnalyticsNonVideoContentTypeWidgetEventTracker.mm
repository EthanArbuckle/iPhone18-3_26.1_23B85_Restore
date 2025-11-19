@interface FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker
- (FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker)init;
- (FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker)initWithSessionManager:(id)a3 userIDProvider:(id)a4;
- (id)_newWidgetEngagementWithTrackableWidgetState:(id)a3;
- (id)_widgetEngagementEventAtDate:(id)a3 withEngagement:(id)a4 trackableWidgetState:(id)a5;
- (id)_widgetEngagementForHeadline:(id)a3 inSection:(id)a4 withTrackableWidgetState:(id)a5;
- (id)engagementWithBackgroundAtDate:(id)a3 withTargetURL:(id)a4 trackableWidgetState:(id)a5;
- (id)engagementWithBannerAtDate:(id)a3 withTargetURL:(id)a4 trackableWidgetState:(id)a5;
- (id)engagementWithEmbedTapTargetAtDate:(id)a3 withEmbedURL:(id)a4 targetURL:(id)a5 trackableWidgetState:(id)a6;
- (id)engagementWithHeaderAtDate:(id)a3 withTargetURL:(id)a4 trackableWidgetState:(id)a5;
- (id)engagementWithPlaceholderAtDate:(id)a3 withTargetURL:(id)a4 trackableWidgetState:(id)a5;
- (id)engagementWithRowAtDate:(id)a3 forHeadline:(id)a4 withTrackableWidgetState:(id)a5;
- (int)_pbDisplayModeWithDisplayMode:(unint64_t)a3;
- (int)_pbStackLocationWithStackLocation:(unint64_t)a3;
- (int)_pbWidgetTypeWithStackKind:(unint64_t)a3;
- (void)_annotateEvent:(id)a3 withTrackableWidgetState:(id)a4;
- (void)visibleItemsDidChangeAtDate:(id)a3 withTriggerEvent:(unint64_t)a4 trackableWidgetState:(id)a5;
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

- (FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker)initWithSessionManager:(id)a3 userIDProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C6038();
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
    sub_1000C60FC();
  }

LABEL_6:
  v19.receiver = self;
  v19.super_class = FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker;
  v8 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)&v19 init];
  if (v8)
  {
    v9 = [[NSSNewsAnalyticsEventAnnotator alloc] initWithSessionManager:v6 userIDProvider:v7];
    eventAnnotator = v8->_eventAnnotator;
    v8->_eventAnnotator = v9;

    v11 = objc_opt_new();
    lastVisibleItemsChangePairs = v8->_lastVisibleItemsChangePairs;
    v8->_lastVisibleItemsChangePairs = v11;

    v13 = objc_opt_new();
    outstandingItemExposureEvents = v8->_outstandingItemExposureEvents;
    v8->_outstandingItemExposureEvents = v13;

    v15 = [[NSSNewsAnalyticsEnvelopeDescriptor alloc] initWithContentType:3 contentTypeVersion:1 contentTypeMinorVersion:0 contentTypePatchVersion:0];
    v16 = [[NSSNewsAnalyticsPBEventAccumulator alloc] initWithEnvelopeDescriptor:v15 sessionManager:v6];
    accumulator = v8->_accumulator;
    v8->_accumulator = v16;

    objc_storeStrong(&v8->_userIDProvider, a4);
  }

  return v8;
}

- (void)visibleItemsDidChangeAtDate:(id)a3 withTriggerEvent:(unint64_t)a4 trackableWidgetState:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C61C0();
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C6284();
  }

LABEL_6:
  v10 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self lastVisibleItemsChangeDate];
  v11 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self outstandingItemExposureEvents];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10000BBF0;
  v48[3] = &unk_10010BC08;
  v12 = v10;
  v49 = v12;
  v13 = v8;
  v50 = v13;
  [v11 enumerateObjectsUsingBlock:v48];
  v14 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self accumulator];
  [v14 observeEvents:v11];

  -[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker setItemExposuresSinceLastWidgetAppearance:](self, "setItemExposuresSinceLastWidgetAppearance:", [v11 count] + -[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker itemExposuresSinceLastWidgetAppearance](self, "itemExposuresSinceLastWidgetAppearance"));
  v15 = [v9 visibleItems];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10000BC50;
  v45[3] = &unk_10010BC30;
  v45[4] = self;
  v16 = v9;
  v46 = v16;
  v17 = v15;
  v47 = v17;
  v18 = [v17 fc_arrayByTransformingWithBlock:v45];
  v19 = [v18 mutableCopy];
  [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self setOutstandingItemExposureEvents:v19];

  if (a4 == 4)
  {
    v20 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self widgetAppearanceDate];
    if (v20)
    {
      v21 = objc_opt_new();
      v22 = [v16 entryID];
      [v21 setEntryId:v22];

      v23 = [v16 appearanceType];
      if (v23 < 4)
      {
        v24 = (v23 + 1);
      }

      else
      {
        v24 = 0;
      }

      [v21 setWidgetAppearanceType:v24];
      [v21 setWidgetArticleCount:{-[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker lastVisibleItemsChangeArticleCount](self, "lastVisibleItemsChangeArticleCount")}];
      [v21 setWidgetHeadlineExposureCount:{-[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker itemExposuresSinceLastWidgetAppearance](self, "itemExposuresSinceLastWidgetAppearance")}];
      v25 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self lastVisibleItemsChangePairs];
      v42 = v12;
      v26 = [v25 mutableCopy];
      [v21 setWidgetSectionsArticleCountPairs:v26];

      v27 = [v16 contentID];
      [v21 setContentId:v27];

      [v21 setWidgetType:{-[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker _pbWidgetTypeWithStackKind:](self, "_pbWidgetTypeWithStackKind:", objc_msgSend(v16, "stackKind"))}];
      [v21 setWidgetExposureStackLocation:{-[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker _pbStackLocationWithStackLocation:](self, "_pbStackLocationWithStackLocation:", objc_msgSend(v16, "stackLocation"))}];
      v28 = [v16 todayResults];
      v29 = [v28 banner];
      v30 = [v29 identifier];
      [v21 setBannerIdentifier:v30];

      v31 = objc_opt_new();
      [v31 setTodayWidgetExposure:v21];
      v32 = +[NTPBEvent nss_eventWithIdentifier];
      v33 = +[NSDate date];
      [v32 ft_setTemporalBoundsBySanitizingStartDate:v20 endDate:v33];

      v34 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self eventAnnotator];
      [v34 annotateEvent:v32 withOptions:47];

      [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _annotateEvent:v32 withTrackableWidgetState:v16];
      [v32 setEventObject:v31];
      v35 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self accumulator];
      [v35 observeEvent:v32];

      [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self setWidgetAppearanceDate:0];
      [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self setItemExposuresSinceLastWidgetAppearance:0];

      v12 = v42;
    }
  }

  [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self setLastVisibleItemsChangeDate:v13];
  v36 = [v16 visibleSections];
  v37 = [v16 extentsOfSections:v36];

  v38 = [v16 visibleSections];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10000BEF4;
  v43[3] = &unk_10010BC58;
  v44 = v37;
  v39 = v37;
  v40 = [v38 fc_arrayByTransformingWithBlock:v43];
  v41 = [v40 mutableCopy];
  [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self setLastVisibleItemsChangePairs:v41];

  -[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker setLastVisibleItemsChangeArticleCount:](self, "setLastVisibleItemsChangeArticleCount:", [v17 count]);
}

- (id)engagementWithRowAtDate:(id)a3 forHeadline:(id)a4 withTrackableWidgetState:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = NTNewsSourceIdentifier;
  v10 = [v8 fetchInfoForVisibleResults];
  v11 = [v10 todaySourceIdentifier];
  LODWORD(v9) = [v9 isEqualToString:v11];

  if (v9 && ([v7 analyticsElement], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = [v8 sectionForItem:v7];
    v14 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _widgetEngagementForHeadline:v7 inSection:v13 withTrackableWidgetState:v8];
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

- (id)engagementWithEmbedTapTargetAtDate:(id)a3 withEmbedURL:(id)a4 targetURL:(id)a5 trackableWidgetState:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = NTNewsSourceIdentifier;
  v13 = [v11 fetchInfoForVisibleResults];
  v14 = [v13 todaySourceIdentifier];
  LODWORD(v12) = [v12 isEqualToString:v14];

  if (v12)
  {
    v15 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _newWidgetEngagementWithTrackableWidgetState:v11];
    [v15 setWidgetEngagementType:5];
    v16 = [v9 absoluteString];
    [v15 setWebEmbedId:v16];

    v17 = [v10 absoluteString];
    [v15 setEngagementTargetUrl:v17];

    [v15 setWidgetContentType:2];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)engagementWithHeaderAtDate:(id)a3 withTargetURL:(id)a4 trackableWidgetState:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = NTNewsSourceIdentifier;
  v10 = [v8 fetchInfoForVisibleResults];
  v11 = [v10 todaySourceIdentifier];
  LODWORD(v9) = [v9 isEqualToString:v11];

  if (v9)
  {
    v12 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _newWidgetEngagementWithTrackableWidgetState:v8];
    [v12 setWidgetEngagementType:9];
    v13 = [v7 absoluteString];
    [v12 setEngagementTargetUrl:v13];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)engagementWithPlaceholderAtDate:(id)a3 withTargetURL:(id)a4 trackableWidgetState:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = NTNewsSourceIdentifier;
  v10 = [v8 fetchInfoForVisibleResults];
  v11 = [v10 todaySourceIdentifier];
  LODWORD(v9) = [v9 isEqualToString:v11];

  if (v9)
  {
    v12 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _newWidgetEngagementWithTrackableWidgetState:v8];
    [v12 setWidgetEngagementType:10];
    v13 = [v7 absoluteString];
    [v12 setEngagementTargetUrl:v13];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)engagementWithBackgroundAtDate:(id)a3 withTargetURL:(id)a4 trackableWidgetState:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = NTNewsSourceIdentifier;
  v10 = [v8 fetchInfoForVisibleResults];
  v11 = [v10 todaySourceIdentifier];
  LODWORD(v9) = [v9 isEqualToString:v11];

  if (v9)
  {
    v12 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _newWidgetEngagementWithTrackableWidgetState:v8];
    [v12 setWidgetEngagementType:8];
    v13 = [v7 absoluteString];
    [v12 setEngagementTargetUrl:v13];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)engagementWithBannerAtDate:(id)a3 withTargetURL:(id)a4 trackableWidgetState:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = NTNewsSourceIdentifier;
  v10 = [v8 fetchInfoForVisibleResults];
  v11 = [v10 todaySourceIdentifier];
  LODWORD(v9) = [v9 isEqualToString:v11];

  if (v9)
  {
    v12 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _newWidgetEngagementWithTrackableWidgetState:v8];
    [v12 setWidgetEngagementType:11];
    v13 = [v7 absoluteString];
    [v12 setEngagementTargetUrl:v13];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_widgetEngagementEventAtDate:(id)a3 withEngagement:(id)a4 trackableWidgetState:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C640C();
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C64D0();
  }

LABEL_6:
  if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C6594();
  }

  v11 = objc_opt_new();
  [v11 setWidgetEngagement:v9];
  v12 = +[NTPBEvent nss_eventWithIdentifier];
  [v12 nss_setStartDate:v8];
  v13 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self eventAnnotator];
  [v13 annotateEvent:v12 withOptions:47];

  [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _annotateEvent:v12 withTrackableWidgetState:v10];
  [v12 setGestureType:1];
  [v12 setEventObject:v11];

  return v12;
}

- (void)_annotateEvent:(id)a3 withTrackableWidgetState:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C6658();
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C671C();
  }

LABEL_6:
  v7 = [v6 fetchInfoForVisibleResults];
  v8 = [v7 appConfigTreatmentID];

  if (v8)
  {
    [v5 setAppConfigTreatmentId:{objc_msgSend(v8, "integerValue")}];
  }
}

- (id)_widgetEngagementForHeadline:(id)a3 inSection:(id)a4 withTrackableWidgetState:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 analyticsElement];

  if (v9)
  {
    v10 = [v8 sectionForItem:v7];
    v11 = [v8 visibleSections];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000CA5C;
    v26[3] = &unk_10010BC80;
    v12 = v10;
    v27 = v12;
    v13 = [v11 fc_arrayByTransformingWithBlock:v26];

    v14 = [v7 analyticsElement];
    v15 = [v14 articleID];

    v16 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self _newWidgetEngagementWithTrackableWidgetState:v8];
    [v16 setArticleId:v15];
    v17 = [v7 analyticsElement];
    v18 = [v17 channelID];
    [v16 setSourceChannelId:v18];

    v19 = [v12 identifier];
    [v16 setWidgetSectionId:v19];

    v20 = [v12 subidentifier];
    [v16 setWidgetSectionSubid:v20];

    [v16 setWidgetSectionDisplayRank:{objc_msgSend(v8, "absoluteOrderOfSection:", v12)}];
    [v16 setWidgetArticleRank:{objc_msgSend(v8, "absoluteOrderOfItem:", v7)}];
    v21 = [v12 items];
    [v16 setWidgetArticleRankInSection:{objc_msgSend(v21, "indexOfObject:", v7)}];

    [v16 setWidgetArticleCount:{objc_msgSend(v8, "absoluteItemCountForCurrentDisplayMode")}];
    v22 = [v12 items];
    [v16 setWidgetArticleCountInSection:{objc_msgSend(v22, "count")}];

    v23 = [v13 copy];
    [v16 setOtherVisibleSections:v23];

    [v16 setWidgetContentType:0];
    v24 = [v7 storyType];
    [v16 setStoryType:v24];

    if (![v7 itemType])
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

- (id)_newWidgetEngagementWithTrackableWidgetState:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker *)self userIDProvider];
  v7 = [v6 userID];
  [v5 setWidgetUserId:v7];

  v8 = [v4 fetchDate];
  [v8 timeIntervalSince1970];
  [v5 setContentFetchDate:v9];

  [v5 setWidgetDisplayMode:{-[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker _pbDisplayModeWithDisplayMode:](self, "_pbDisplayModeWithDisplayMode:", objc_msgSend(v4, "activeDisplayMode"))}];
  v10 = [v4 contentID];
  [v5 setContentId:v10];

  [v5 setWidgetType:{-[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker _pbWidgetTypeWithStackKind:](self, "_pbWidgetTypeWithStackKind:", objc_msgSend(v4, "stackKind"))}];
  [v5 setWidgetExposureStackLocation:{-[FTNewsAnalyticsNonVideoContentTypeWidgetEventTracker _pbStackLocationWithStackLocation:](self, "_pbStackLocationWithStackLocation:", objc_msgSend(v4, "stackLocation"))}];
  v11 = [v4 entryID];

  [v5 setEntryId:v11];
  return v5;
}

- (int)_pbDisplayModeWithDisplayMode:(unint64_t)a3
{
  if (a3 - 1 < 7)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (int)_pbWidgetTypeWithStackKind:(unint64_t)a3
{
  if (a3 - 1 < 3)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (int)_pbStackLocationWithStackLocation:(unint64_t)a3
{
  if (a3 - 1 < 5)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

@end