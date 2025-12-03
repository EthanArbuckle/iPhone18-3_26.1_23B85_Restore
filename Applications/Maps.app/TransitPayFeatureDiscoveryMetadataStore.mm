@interface TransitPayFeatureDiscoveryMetadataStore
- (BOOL)_userHasBecomeLocalAndTipShouldDisplayInMarket:(unint64_t)market tipType:(int)type currentTip:(id)tip;
- (BOOL)shouldDisplayTipInMarket:(unint64_t)market tipType:(int)type sinkType:(int)sinkType;
- (TransitPayFeatureDiscoveryMetadataStore)initWithTouristStatus:(BOOL)status;
- (id)_tipInfoForMarket:(unint64_t)market tipType:(int)type;
- (void)_persistData;
- (void)handleManualTipDismissForMarket:(unint64_t)market tipType:(int)type sinkType:(int)sinkType;
- (void)handleTipDisplayForMarket:(unint64_t)market tipType:(int)type sinkType:(int)sinkType;
@end

@implementation TransitPayFeatureDiscoveryMetadataStore

- (void)_persistData
{
  defaultsDictionary = self->_defaultsDictionary;
  v4 = [(NSMutableDictionary *)self->_tipInfoDictionary copy];
  [(NSMutableDictionary *)defaultsDictionary setObject:v4 forKey:@"TransitPayTipInfoDictionary"];

  v6 = +[NSUserDefaults standardUserDefaults];
  v5 = [(NSMutableDictionary *)self->_defaultsDictionary copy];
  [v6 setObject:v5 forKey:@"__internal__TransitPayTipInfoKey"];
}

- (BOOL)_userHasBecomeLocalAndTipShouldDisplayInMarket:(unint64_t)market tipType:(int)type currentTip:(id)tip
{
  tipCopy = tip;
  v9 = tipCopy;
  v10 = tipCopy != 0;
  if (!tipCopy)
  {
    v19 = sub_10003D020();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Feature Discovery/Sources/TransitPayFeatureDiscoveryMetadataStore.m";
      v25 = 1024;
      v26 = 218;
      v27 = 2082;
      v28 = "[TransitPayFeatureDiscoveryMetadataStore _userHasBecomeLocalAndTipShouldDisplayInMarket:tipType:currentTip:]";
      v29 = 2082;
      v30 = "nil == currentTip";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Current tip cannot be nil", buf, 0x26u);
    }

    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Feature Discovery/Sources/TransitPayFeatureDiscoveryMetadataStore.m";
      v25 = 1024;
      v26 = 218;
      v27 = 2082;
      v28 = "[TransitPayFeatureDiscoveryMetadataStore _userHasBecomeLocalAndTipShouldDisplayInMarket:tipType:currentTip:]";
      v29 = 2082;
      v30 = "nil == currentTip";
      _os_log_impl(&_mh_execute_header, &v12->super, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Current tip cannot be nil", buf, 0x26u);
    }

    goto LABEL_18;
  }

  if (([tipCopy tipType] == 1 || objc_msgSend(v9, "tipType") == 2) && objc_msgSend(v9, "isTourist"))
  {
    v11 = 0;
    if (type == 3 && !self->_isTourist)
    {
      v12 = [[_TransitPayTipInteractionRecord alloc] initWithTipType:3 isTourist:self->_isTourist];
      tipInfoDictionary = self->_tipInfoDictionary;
      v22 = 0;
      v14 = [NSKeyedArchiver archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v22];
      v15 = v22;
      if (v15)
      {
        v16 = sub_10003D020();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          localizedDescription = [v15 localizedDescription];
          *buf = 138412290;
          v24 = localizedDescription;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "There was an error archiving the tip metadata: %@", buf, 0xCu);
        }

        v18 = 0;
      }

      else
      {
        v18 = v14;
      }

      market = [NSString stringWithFormat:@"%llu", market];
      [(NSMutableDictionary *)tipInfoDictionary setObject:v18 forKey:market];

      [(TransitPayFeatureDiscoveryMetadataStore *)self _persistData];
LABEL_18:

      v11 = v10;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_tipInfoForMarket:(unint64_t)market tipType:(int)type
{
  v4 = *&type;
  tipInfoDictionary = self->_tipInfoDictionary;
  market = [NSString stringWithFormat:@"%llu", market];
  v9 = [(NSMutableDictionary *)tipInfoDictionary objectForKey:market];

  if (v9)
  {
    v10 = v9;
    v18 = 0;
    v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v18];
    v12 = v18;
    if (v12)
    {
      v13 = sub_10003D020();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v12 debugDescription];
        *buf = 138412290;
        marketCopy = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "There was an error unarchiving the tip metadata: %@", buf, 0xCu);
      }

      v15 = 0;
    }

    else
    {
      v15 = v11;
    }
  }

  else
  {
    v16 = sub_10003D020();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      marketCopy = market;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "This market: %llu has no tip data", buf, 0xCu);
    }

    v15 = [[_TransitPayTipInteractionRecord alloc] initWithTipType:v4 isTourist:self->_isTourist];
  }

  return v15;
}

- (void)handleTipDisplayForMarket:(unint64_t)market tipType:(int)type sinkType:(int)sinkType
{
  v5 = *&sinkType;
  v6 = *&type;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (market)
  {
    if (v6 == 5)
    {
      v9 = sub_10003D020();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v10 = "No teardown logic for top-up tips";
        v11 = v9;
        v12 = 2;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
      }
    }

    else
    {
      v9 = [(TransitPayFeatureDiscoveryMetadataStore *)self _tipInfoForMarket:market tipType:v6];
      lastDisplayed = [v9 lastDisplayed];
      if (lastDisplayed)
      {
        lastDisplayed2 = [v9 lastDisplayed];
        v15 = objc_alloc_init(NSDateComponents);
        [v15 setDay:-1];
        v16 = +[NSCalendar currentCalendar];
        v17 = +[NSDate now];
        v18 = [v16 dateByAddingComponents:v15 toDate:v17 options:0];

        v19 = [lastDisplayed2 compare:v18] == -1;
      }

      else
      {
        v19 = 1;
      }

      if (v5 == 4 || v5 == 2 && v19)
      {
        v20 = [v9 incrementDisplayCountForSink:v5];
        v21 = sub_10003D020();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = @"UNKNOWN SINK TYPE";
          if (v5 == 4)
          {
            v22 = @"SinkTypeRoutePlanning";
          }

          if (v5 == 2)
          {
            v23 = @"SinkTypeMapsHome";
          }

          else
          {
            v23 = v22;
          }

          lastDisplayed3 = [v9 lastDisplayed];
          *buf = 134218754;
          marketCopy = market;
          v36 = 2112;
          v37 = v23;
          v38 = 2112;
          v39 = lastDisplayed3;
          v40 = 2112;
          v41 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Incremented tip displays in market: %llu for %@. Last tip display: %@. Current count: %@", buf, 0x2Au);
        }

        UInteger = GEOConfigGetUInteger();
        if ([v9 displayCountForSink:v5]>= UInteger)
        {
          [v9 userDismissedInSink:v5];
        }

        tipInfoDictionary = self->_tipInfoDictionary;
        v33 = 0;
        v27 = [NSKeyedArchiver archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v33];
        v28 = v33;
        if (v28)
        {
          v29 = sub_10003D020();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            localizedDescription = [v28 localizedDescription];
            *buf = 138412290;
            marketCopy = localizedDescription;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "There was an error archiving the tip metadata: %@", buf, 0xCu);
          }

          v31 = 0;
        }

        else
        {
          v31 = v27;
        }

        market = [NSString stringWithFormat:@"%llu", market];
        [(NSMutableDictionary *)tipInfoDictionary setObject:v31 forKey:market];

        [(TransitPayFeatureDiscoveryMetadataStore *)self _persistData];
      }
    }
  }

  else
  {
    v9 = sub_10003D020();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      marketCopy = 0;
      v10 = "Server gave us invalid market MUID: %llu";
      v11 = v9;
      v12 = 12;
      goto LABEL_7;
    }
  }
}

- (void)handleManualTipDismissForMarket:(unint64_t)market tipType:(int)type sinkType:(int)sinkType
{
  v5 = *&sinkType;
  v6 = *&type;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (market)
  {
    if (v6 == 5)
    {
      v9 = sub_10003D020();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v10 = "No teardown logic for top-up tips";
        v11 = v9;
        v12 = 2;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
      }
    }

    else
    {
      v9 = [(TransitPayFeatureDiscoveryMetadataStore *)self _tipInfoForMarket:market tipType:v6];
      [v9 userDismissedInSink:v5];
      tipInfoDictionary = self->_tipInfoDictionary;
      v20 = 0;
      v14 = [NSKeyedArchiver archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v20];
      v15 = v20;
      if (v15)
      {
        v16 = sub_10003D020();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          localizedDescription = [v15 localizedDescription];
          *buf = 138412290;
          v22 = localizedDescription;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "There was an error archiving the tip metadata: %@", buf, 0xCu);
        }

        v18 = 0;
      }

      else
      {
        v18 = v14;
      }

      market = [NSString stringWithFormat:@"%llu", market];
      [(NSMutableDictionary *)tipInfoDictionary setObject:v18 forKey:market];

      [(TransitPayFeatureDiscoveryMetadataStore *)self _persistData];
    }
  }

  else
  {
    v9 = sub_10003D020();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v22 = 0;
      v10 = "Server gave us invalid market MUID: %llu";
      v11 = v9;
      v12 = 12;
      goto LABEL_7;
    }
  }
}

- (BOOL)shouldDisplayTipInMarket:(unint64_t)market tipType:(int)type sinkType:(int)sinkType
{
  if (market)
  {
    v5 = *&type;
    if (type == 5)
    {
      v6 = sub_10003D020();
      v7 = 1;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "No teardown logic for top-up tips", buf, 2u);
      }

      goto LABEL_29;
    }

    tipInfoDictionary = self->_tipInfoDictionary;
    market = [NSString stringWithFormat:@"%llu", market];
    v6 = [(NSMutableDictionary *)tipInfoDictionary objectForKey:market];

    if (!v6)
    {
      v19 = sub_10003D020();
      v7 = 1;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = objc_opt_class();
        v21 = v20;
        v22 = NSStringFromSelector(a2);
        *buf = 138412802;
        marketCopy4 = v20;
        v40 = 2112;
        v41 = v22;
        v42 = 2048;
        marketCopy = market;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%@ %@: This market: %llu has no tip data", buf, 0x20u);
      }

      goto LABEL_28;
    }

    v14 = v6;
    v37 = 0;
    v15 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:&v37];
    v16 = v37;
    if (v16)
    {
      v17 = sub_10003D020();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v16 debugDescription];
        *buf = 138412290;
        marketCopy4 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "There was an error unarchiving the tip metadata: %@", buf, 0xCu);
      }

      v19 = 0;
    }

    else
    {
      v19 = v15;
    }

    if ([(TransitPayFeatureDiscoveryMetadataStore *)self _userHasBecomeLocalAndTipShouldDisplayInMarket:market tipType:v5 currentTip:v19])
    {
      v23 = sub_10003D020();
      v7 = 1;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        marketCopy4 = market;
        v24 = "The user dismissed the open-loop tip when they were a tourist and are now being shown the closed-loop tip since they are a local in this market: %llu";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, v24, buf, 0xCu);
      }
    }

    else
    {
      if (sinkType == 4)
      {
        dismissalDate = [v19 dismissalDate];
        if (dismissalDate)
        {
          v26 = dismissalDate;
          dismissalDate2 = [v19 dismissalDate];
          UInteger = GEOConfigGetUInteger();
          v29 = dismissalDate2;
          v30 = objc_alloc_init(NSDateComponents);
          [v30 setDay:-UInteger];
          v31 = +[NSCalendar currentCalendar];
          v32 = +[NSDate now];
          v33 = [v31 dateByAddingComponents:v30 toDate:v32 options:0];

          v34 = [v29 compare:v33];
          if (v34 == -1)
          {
            v23 = sub_10003D020();
            v7 = 1;
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              goto LABEL_27;
            }

            *buf = 134217984;
            marketCopy4 = market;
            v24 = "The tip has been dismissed in this market, but it is now reappearing: %llu";
            goto LABEL_19;
          }
        }
      }

      dismissalDate3 = [v19 dismissalDate];

      if (!dismissalDate3)
      {
        v7 = 1;
        goto LABEL_28;
      }

      v23 = sub_10003D020();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        marketCopy4 = market;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "The tip was either manually or automatically dismissed in this market: %llu", buf, 0xCu);
      }

      v7 = 0;
    }

LABEL_27:

LABEL_28:
    goto LABEL_29;
  }

  v6 = sub_10003D020();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    marketCopy4 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Server gave us invalid market MUID: %llu", buf, 0xCu);
  }

  v7 = 0;
LABEL_29:

  return v7;
}

- (TransitPayFeatureDiscoveryMetadataStore)initWithTouristStatus:(BOOL)status
{
  v19.receiver = self;
  v19.super_class = TransitPayFeatureDiscoveryMetadataStore;
  v4 = [(TransitPayFeatureDiscoveryMetadataStore *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_isTourist = status;
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 dictionaryForKey:@"__internal__TransitPayTipInfoKey"];
    v8 = [v7 mutableCopy];
    defaultsDictionary = v5->_defaultsDictionary;
    v5->_defaultsDictionary = v8;

    v10 = v5->_defaultsDictionary;
    if (!v10)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      v12 = v5->_defaultsDictionary;
      v5->_defaultsDictionary = v11;

      v10 = v5->_defaultsDictionary;
    }

    v13 = [(NSMutableDictionary *)v10 objectForKey:@"TransitPayTipInfoDictionary"];
    v14 = [v13 mutableCopy];
    tipInfoDictionary = v5->_tipInfoDictionary;
    v5->_tipInfoDictionary = v14;

    if (!v5->_tipInfoDictionary)
    {
      v16 = objc_alloc_init(NSMutableDictionary);
      v17 = v5->_tipInfoDictionary;
      v5->_tipInfoDictionary = v16;
    }
  }

  return v5;
}

@end