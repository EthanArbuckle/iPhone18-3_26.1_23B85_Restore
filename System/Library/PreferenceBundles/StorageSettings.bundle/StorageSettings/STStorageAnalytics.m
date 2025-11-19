@interface STStorageAnalytics
+ (id)sharedInstance;
- (void)sendAnalyticsEventActionWithType:(int64_t)a3 andActionSize:(id)a4;
- (void)sendAnalyticsEventExitWithOtherSize:(int64_t)a3;
- (void)sendAnalyticsEventLaunchWithBarData:(id)a3 otherSize:(int64_t)a4 andAppsCount:(int64_t)a5;
- (void)trackDisplayCalculating;
- (void)trackDisplayEnd;
- (void)trackDisplayStart;
@end

@implementation STStorageAnalytics

+ (id)sharedInstance
{
  if (qword_39FE8 != -1)
  {
    sub_1CAA0();
  }

  v3 = qword_39FE0;

  return v3;
}

- (void)trackDisplayStart
{
  v3 = [(STStorageAnalytics *)self dateDisplayStart];

  if (!v3)
  {
    v4 = +[NSDate date];
    [(STStorageAnalytics *)self setDateDisplayStart:v4];

    v5 = [(STStorageAnalytics *)self dateDisplayStart];
    STLog();
  }
}

- (void)trackDisplayCalculating
{
  v3 = [(STStorageAnalytics *)self dateDisplayCalculating];

  if (!v3)
  {
    v4 = +[NSDate date];
    [(STStorageAnalytics *)self setDateDisplayCalculating:v4];

    v5 = [(STStorageAnalytics *)self dateDisplayCalculating];
    STLog();
  }
}

- (void)trackDisplayEnd
{
  v3 = [(STStorageAnalytics *)self dateDisplayEnd];

  if (!v3)
  {
    v4 = +[NSDate date];
    [(STStorageAnalytics *)self setDateDisplayEnd:v4];

    v5 = [(STStorageAnalytics *)self dateDisplayEnd];
    STLog();
  }
}

- (void)sendAnalyticsEventLaunchWithBarData:(id)a3 otherSize:(int64_t)a4 andAppsCount:(int64_t)a5
{
  v7 = a3;
  if (![(STStorageAnalytics *)self lauchEventDidSend])
  {
    [(STStorageAnalytics *)self setLauchEventDidSend:1];
    v8 = +[STStorageDiskMonitor sharedMonitor];
    v94 = [v8 storageSpace];
    v72 = v7;
    v9 = [v7 categories];
    v10 = objc_opt_new();
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v110 objects:v114 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v111;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v111 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v110 + 1) + 8 * i);
          v17 = [v16 identifier];

          if (v17)
          {
            v18 = [v16 identifier];
            [v10 setObject:v16 forKeyedSubscript:v18];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v110 objects:v114 count:16];
      }

      while (v13);
    }

    v19 = +[STStorageMediaMonitor sharedMonitor];
    v20 = [v19 atcDictionary];

    [(NSDate *)self->_dateDisplayCalculating timeIntervalSinceDate:self->_dateDisplayStart];
    v93 = [NSNumber numberWithDouble:?];
    [(NSDate *)self->_dateDisplayEnd timeIntervalSinceDate:self->_dateDisplayStart];
    v92 = [NSNumber numberWithDouble:?];
    +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 deviceSize]);
    v21 = v71 = v8;
    v91 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v94 usedBytes]);
    v90 = STStorageComputePercentage();
    v89 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v94 purgeableBytes]);
    v88 = STStorageComputePercentage();
    v87 = [NSNumber numberWithLongLong:a4];
    v85 = STStorageComputePercentage();
    v22 = [v10 objectForKeyedSubscript:STCategoryMediaKey];
    v83 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 bytes]);

    v81 = STStorageComputePercentage();
    v23 = [v10 objectForKeyedSubscript:STCategoryPhotosKey];
    v79 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v23 bytes]);

    v77 = STStorageComputePercentage();
    v24 = [v10 objectForKeyedSubscript:STCategoryAppsKey];
    v75 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 bytes]);

    v73 = STStorageComputePercentage();
    v25 = [v10 objectForKeyedSubscript:STCategoryMessagesKey];
    v57 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v25 bytes]);

    v59 = STStorageComputePercentage();
    v26 = [v10 objectForKeyedSubscript:STCategoryMailKey];
    v61 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v26 bytes]);

    v27 = v21;
    v56 = v21;
    v63 = STStorageComputePercentage();
    v28 = [v20 objectForKeyedSubscript:@"Photo"];
    v29 = [v28 objectForKeyedSubscript:@"CameraRoll"];
    v30 = [v29 objectForKeyedSubscript:@"_Count"];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = &off_2FE98;
    }

    v67 = v32;

    v33 = v20;
    v69 = v20;
    v34 = [v20 objectForKeyedSubscript:@"Media"];
    v35 = [v34 objectForKeyedSubscript:@"Podcast"];
    v36 = [v35 objectForKeyedSubscript:@"_Count"];
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = &off_2FE98;
    }

    v55 = v38;

    v39 = [v33 objectForKeyedSubscript:@"Media"];
    v40 = [v39 objectForKeyedSubscript:@"Music"];
    v41 = [v40 objectForKeyedSubscript:@"_Count"];
    v42 = v41;
    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = &off_2FE98;
    }

    v44 = v43;

    v45 = +[CacheDeleteVolume rootVolume];
    v46 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v45 state]);

    v95 = v27;
    v96 = v85;
    v97 = v83;
    v98 = v81;
    v99 = v79;
    v100 = v77;
    v101 = v75;
    v102 = v73;
    v103 = v57;
    v104 = v59;
    v105 = v61;
    v106 = v63;
    v107 = v67;
    v108 = v44;
    v109 = v46;
    v66 = v46;
    v65 = v44;
    v70 = v55;
    v68 = v67;
    v64 = v63;
    v62 = v61;
    v60 = v59;
    v58 = v57;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v47 = v87;
    v48 = v88;
    v49 = v89;
    v50 = v90;
    v51 = v91;
    v52 = v56;
    v53 = v92;
    v54 = v93;
    AnalyticsSendEventLazy();

    v7 = v72;
  }
}

- (void)sendAnalyticsEventActionWithType:(int64_t)a3 andActionSize:(id)a4
{
  v4 = a4;
  v8 = +[STStorageDiskMonitor sharedMonitor];
  v7 = v4;
  v5 = v8;
  v6 = v4;
  AnalyticsSendEventLazy();
  STLog();
}

- (void)sendAnalyticsEventExitWithOtherSize:(int64_t)a3
{
  v5 = +[STStorageDiskMonitor sharedMonitor];
  v30 = v5;
  v6 = [v5 storageSpace];
  v31 = +[NSDate date];
  [v31 timeIntervalSinceDate:self->_dateDisplayStart];
  v28 = [NSNumber numberWithDouble:?];
  v7 = +[STStorageMediaMonitor sharedMonitor];
  v8 = [v7 isAsynchronouslyLoaded];

  if (v8)
  {
    v9 = &off_2FEC8;
  }

  else
  {
    v9 = &off_2FEB0;
  }

  v10 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 deviceSize]);
  v29 = v6;
  v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 usedBytes]);
  v12 = STStorageComputePercentage();
  v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 purgeableBytes]);
  v14 = STStorageComputePercentage();
  v15 = [NSNumber numberWithLongLong:a3];
  v16 = STStorageComputePercentage();
  v17 = +[CacheDeleteVolume rootVolume];
  v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v17 state]);

  v32 = v9;
  v33 = v10;
  v34 = v11;
  v35 = v12;
  v36 = v14;
  v37 = v15;
  v38 = v16;
  v39 = v18;
  v27 = v18;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  v24 = v11;
  v25 = v10;
  v26 = v28;
  AnalyticsSendEventLazy();
  STLog();
}

@end