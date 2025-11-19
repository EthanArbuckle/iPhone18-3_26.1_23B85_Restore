@interface _OfflineMapSubscriptionTwoLinesContentViewModel
- (_OfflineMapSubscriptionTwoLinesContentViewModel)initWithTitleText:(id)a3 subtitleText:(id)a4 cancelableImageCreationBlock:(id)a5;
- (void)_updateModelWithSubscriptionState:(id)a3 pairedDeviceState:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setSubscriptionInfo:(id)a3;
@end

@implementation _OfflineMapSubscriptionTwoLinesContentViewModel

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_101933848 == a6)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C49E30;
    block[3] = &unk_101661B98;
    objc_copyWeak(&v8, &location);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _OfflineMapSubscriptionTwoLinesContentViewModel;
    [(_OfflineMapSubscriptionTwoLinesContentViewModel *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)_updateModelWithSubscriptionState:(id)a3 pairedDeviceState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if (qword_10195EC80 != -1)
    {
      dispatch_once(&qword_10195EC80, &stru_10164EC58);
    }

    v8 = [v6 downloadProgress];

    if (v8)
    {
      if (![v6 loadState] || (objc_msgSend(v6, "loadState") == 1 || objc_msgSend(v6, "loadState") == 3) && (objc_msgSend(v6, "downloadProgress"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "userInfo"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", GEOMapDataSubscriptionDownloadReasonKey), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v11) && (v12 = objc_msgSend(v11, "isEqualToString:", GEOMapDataSubscriptionProgressDownloadReasonForcedUpdate), v11, v12))
      {
        objc_initWeak(&location, self);
        v13 = [v6 downloadState];
        if (v13 == 1)
        {
          v14 = +[NSBundle mainBundle];
          v15 = [v14 localizedStringForKey:@"Waiting [subscription cell subtitle]" value:@"localized string not found" table:@"Offline"];

          v16 = +[UIColor systemFillColor];
        }

        else
        {
          v23 = [v6 downloadProgress];
          v15 = [v23 localizedAdditionalDescription];

          v16 = 0;
        }

        v24 = [(_OfflineMapSubscriptionTwoLinesContentViewModel *)self progressView];
        [v24 setTintColor:v16];

        if (v13 == 1)
        {
        }

        v25 = [v6 downloadProgress];
        v26 = [(_OfflineMapSubscriptionTwoLinesContentViewModel *)self progressView];
        [v26 setProgress:v25];

        v65[0] = _NSConcreteStackBlock;
        v65[1] = 3221225472;
        v65[2] = sub_100C4A8E4;
        v65[3] = &unk_101661B98;
        objc_copyWeak(&v66, &location);
        v27 = [(_OfflineMapSubscriptionTwoLinesContentViewModel *)self progressView];
        [v27 setPrimaryAction:v65];

        v28 = [UICellAccessoryCustomView alloc];
        v29 = [(_OfflineMapSubscriptionTwoLinesContentViewModel *)self progressView];
        v30 = [v28 initWithCustomView:v29 placement:1];

        v71 = v30;
        v31 = [NSArray arrayWithObjects:&v71 count:1];
        [(_BasicTwoLinesContentViewModel *)self setCellAccessories:v31];

        objc_destroyWeak(&v66);
        objc_destroyWeak(&location);
        goto LABEL_45;
      }
    }

    if (![v6 loadState] || objc_msgSend(v6, "loadState") == 3 || objc_msgSend(v6, "loadState") == 1)
    {
      objc_initWeak(&location, self);
      if (MapsFeature_IsEnabled_OfflineMapsUIEnhancementsEnabled() && [v6 loadState] == 1)
      {
        v17 = +[NSBundle mainBundle];
        v18 = [v17 localizedStringForKey:@"New update available [subscription cell subtitle]" value:@"localized string not found" table:@"Offline"];
      }

      else
      {
        if ([v6 loadState] == 3)
        {
          v17 = +[NSBundle mainBundle];
          [v17 localizedStringForKey:@"Update required [subscription cell subtitle]" value:@"localized string not found" table:@"Offline"];
        }

        else
        {
          v17 = +[NSBundle mainBundle];
          [v17 localizedStringForKey:@"Download offline map [subscription cell subtitle]" value:@"localized string not found" table:@"Offline"];
        }
        v18 = ;
      }

      v19 = v18;

      v20 = [v6 downloadState];
      if (v20 == 5)
      {
        if (MGGetBoolAnswer())
        {
          v21 = +[NSBundle mainBundle];
          [v21 localizedStringForKey:@"Waiting for WLAN [subscription cell subtitle]" value:@"localized string not found" table:@"Offline"];
        }

        else
        {
          v21 = +[NSBundle mainBundle];
          [v21 localizedStringForKey:@"Waiting for Wi-Fi [subscription cell subtitle]" value:@"localized string not found" table:@"Offline"];
        }
        v22 = ;
      }

      else if (v20 == 4)
      {
        v21 = +[NSBundle mainBundle];
        v22 = [v21 localizedStringForKey:@"Failed [subscription cell subtitle]" value:@"localized string not found" table:@"Offline"];
      }

      else
      {
        if (v20 != 3)
        {
          v15 = v19;
LABEL_44:
          v63[0] = _NSConcreteStackBlock;
          v63[1] = 3221225472;
          v63[2] = sub_100C4A964;
          v63[3] = &unk_101661900;
          objc_copyWeak(&v64, &location);
          v52 = [UIAction actionWithHandler:v63];
          v53 = [UIButton buttonWithType:0 primaryAction:v52];

          v54 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
          v55 = [UIImage systemImageNamed:@"arrow.down.circle" withConfiguration:v54];
          [v53 setImage:v55 forState:0];

          v56 = [[UICellAccessoryCustomView alloc] initWithCustomView:v53 placement:1];
          v70 = v56;
          v57 = [NSArray arrayWithObjects:&v70 count:1];
          [(_BasicTwoLinesContentViewModel *)self setCellAccessories:v57];

          objc_destroyWeak(&v64);
          objc_destroyWeak(&location);
LABEL_45:
          v34 = 0;
LABEL_46:
          [(_BasicTwoLinesContentViewModel *)self setSubtitleText:v15];
          [(_BasicTwoLinesContentViewModel *)self setAttributedSubtitleText:v34];

          goto LABEL_47;
        }

        v21 = +[NSBundle mainBundle];
        v22 = [v21 localizedStringForKey:@"Paused [subscription cell subtitle]" value:@"localized string not found" table:@"Offline"];
      }

      v15 = v22;

      goto LABEL_44;
    }

    v32 = [qword_10195EC78 stringFromByteCount:{objc_msgSend(v6, "downloadedDataSize")}];
    IsEnabled_StandaloneWatchOffline = MapsFeature_IsEnabled_StandaloneWatchOffline();
    v34 = 0;
    if (v7)
    {
      v15 = v32;
      if (!IsEnabled_StandaloneWatchOffline)
      {
LABEL_50:
        v58 = objc_alloc_init(UICellAccessoryDisclosureIndicator);
        v68 = v58;
        v59 = [NSArray arrayWithObjects:&v68 count:1];
        [(_BasicTwoLinesContentViewModel *)self setCellAccessories:v59];

        goto LABEL_46;
      }

      v35 = [v7 loadState];
      if (v35 == 3 || !v35)
      {
        v36 = [v7 downloadState];
        if (v36 <= 5)
        {
          v37 = *(&off_10164ED38 + v36);
          v38 = +[NSBundle mainBundle];
          v62 = [v38 localizedStringForKey:v37 value:@"localized string not found" table:@"Offline"];

          if (v62)
          {
            v39 = [NSAttributedString alloc];
            v40 = +[NSBundle mainBundle];
            v41 = [v40 localizedStringForKey:@"OFFLINE_REGION_CELL_SUBTITLE_SEPARATOR" value:@"localized string not found" table:@"Offline"];
            v60 = [v39 initWithString:v41];

            v61 = [UIImageSymbolConfiguration configurationWithScale:1];
            v42 = objc_alloc_init(NSTextAttachment);
            v43 = [UIImage systemImageNamed:@"arrow.down.applewatch" withConfiguration:v61];
            v44 = [v43 imageWithRenderingMode:2];
            [v42 setImage:v44];

            v45 = [NSAttributedString attributedStringWithAttachment:v42];
            v46 = [[NSMutableAttributedString alloc] initWithAttributedString:v45];
            v47 = [[NSAttributedString alloc] initWithString:@" "];
            [v46 appendAttributedString:v47];

            v48 = [[NSAttributedString alloc] initWithString:v62];
            [v46 appendAttributedString:v48];

            v49 = [[NSAttributedString alloc] initWithString:v32];
            v69[0] = v49;
            v69[1] = v46;
            v50 = [NSArray arrayWithObjects:v69 count:2];
            v51 = [MKMultiPartAttributedString multiPartAttributedStringWithComponents:v50 repeatedSeparator:v60];

            v34 = [v51 attributedString];

            v15 = 0;
            goto LABEL_50;
          }
        }
      }

      v34 = 0;
    }

    v15 = v32;
    goto LABEL_50;
  }

LABEL_47:
}

- (void)setSubscriptionInfo:(id)a3
{
  v5 = a3;
  subscriptionInfo = self->_subscriptionInfo;
  if (subscriptionInfo != v5 && ![(MapDataSubscriptionInfo *)subscriptionInfo isEqual:v5])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    if (qword_10195EC88 != -1)
    {
      dispatch_once(&qword_10195EC88, &stru_10164ECC8);
    }

    v7 = qword_10195EC90;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(MapDataSubscriptionInfo *)self->_subscriptionInfo removeObserver:self forKeyPath:*(*(&v23 + 1) + 8 * i) context:off_101933848];
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->_subscriptionInfo, a3);
    v12 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo state];
    v13 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo pairedDeviceState];
    [(_OfflineMapSubscriptionTwoLinesContentViewModel *)self _updateModelWithSubscriptionState:v12 pairedDeviceState:v13];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    if (qword_10195EC88 != -1)
    {
      dispatch_once(&qword_10195EC88, &stru_10164ECC8);
    }

    v14 = qword_10195EC90;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [(MapDataSubscriptionInfo *)self->_subscriptionInfo addObserver:self forKeyPath:*(*(&v19 + 1) + 8 * j) options:0 context:off_101933848, v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v16);
    }
  }
}

- (void)dealloc
{
  [(_OfflineMapSubscriptionTwoLinesContentViewModel *)self setSubscriptionInfo:0];
  [(_OfflineMapSubscriptionTwoLinesContentViewModel *)self setProgressView:0];
  [(_OfflineMapSubscriptionTwoLinesContentViewModel *)self setCancelDownloadBlock:0];
  [(_OfflineMapSubscriptionTwoLinesContentViewModel *)self setResumeDownloadBlock:0];
  v3.receiver = self;
  v3.super_class = _OfflineMapSubscriptionTwoLinesContentViewModel;
  [(_BasicTwoLinesContentViewModel *)&v3 dealloc];
}

- (_OfflineMapSubscriptionTwoLinesContentViewModel)initWithTitleText:(id)a3 subtitleText:(id)a4 cancelableImageCreationBlock:(id)a5
{
  v11.receiver = self;
  v11.super_class = _OfflineMapSubscriptionTwoLinesContentViewModel;
  v5 = [(_BasicTwoLinesContentViewModel *)&v11 initWithTitleText:a3 subtitleText:a4 cancelableImageCreationBlock:a5];
  if (v5)
  {
    v6 = objc_alloc_init(MUCircleProgressObservingView);
    progressView = v5->_progressView;
    v5->_progressView = v6;

    v8 = [UIImageSymbolConfiguration configurationWithPointSize:10.0];
    v9 = [UIImage systemImageNamed:@"stop.fill" withConfiguration:v8];
    [(MUCircleProgressObservingView *)v5->_progressView setImage:v9];
  }

  return v5;
}

@end