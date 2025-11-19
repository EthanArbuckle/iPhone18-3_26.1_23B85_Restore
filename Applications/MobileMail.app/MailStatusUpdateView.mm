@interface MailStatusUpdateView
+ (id)log;
- (MailStatusUpdateView)initWithFrame:(CGRect)a3;
- (id)_rebuildFormattedStatusWithStatusInfo:(id)a3;
- (id)_statusUpdateFormatUpdatedMinutesAgoWithCalendar:(id)a3 date:(id)a4 now:(id)a5;
- (id)_updateTimer:(id)a3 fireDate:(id)a4;
- (void)_invalidateAllTimers;
- (void)_setUpdateTimerFireDate:(id)a3;
- (void)_significantTimeChange:(id)a3;
- (void)_transitionToNextStatus:(id)a3 afterDelay:(double)a4;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)tintColorDidChange;
- (void)updateWithStatusInfo:(id)a3;
@end

@implementation MailStatusUpdateView

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CA98;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD1A0 != -1)
  {
    dispatch_once(&qword_1006DD1A0, block);
  }

  v2 = qword_1006DD198;

  return v2;
}

- (void)tintColorDidChange
{
  v2 = [(MailStatusLabelView *)self delegate];
  [v2 tintColorDidChange];
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = MailStatusUpdateView;
  [(MailStatusUpdateView *)&v4 didMoveToSuperview];
  v3 = [(MailStatusUpdateView *)self superview];

  if (!v3)
  {
    [(MailStatusUpdateView *)self _invalidateAllTimers];
  }
}

- (MailStatusUpdateView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = MailStatusUpdateView;
  v3 = [(MailStatusLabelView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(EMStatusUpdateProvider);
    statusUpdateProvider = v3->_statusUpdateProvider;
    v3->_statusUpdateProvider = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v3 selector:"_significantTimeChange:" name:UIApplicationSignificantTimeChangeNotification object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(MailStatusUpdateView *)self _invalidateAllTimers];
  v4.receiver = self;
  v4.super_class = MailStatusUpdateView;
  [(MailStatusUpdateView *)&v4 dealloc];
}

- (void)_invalidateAllTimers
{
  [(MailStatusUpdateView *)self _setUpdateTimerFireDate:0];
  [(NSTimer *)self->_statusTimer invalidate];
  statusTimer = self->_statusTimer;
  self->_statusTimer = 0;

  self->_currentStatus = 0;
}

- (void)_significantTimeChange:(id)a3
{
  v4 = objc_alloc_init(EMStatusUpdateProvider);
  statusUpdateProvider = self->_statusUpdateProvider;
  self->_statusUpdateProvider = v4;
}

- (void)_setUpdateTimerFireDate:(id)a3
{
  v4 = a3;
  v5 = +[MailStatusUpdateView log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 134218242;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "<MailStatusUpdateView: %p> Kick off new update timer to fire at: %@", &v8, 0x16u);
  }

  v6 = [(MailStatusUpdateView *)self _updateTimer:self->_updateTimer fireDate:v4];
  updateTimer = self->_updateTimer;
  self->_updateTimer = v6;
}

- (id)_updateTimer:(id)a3 fireDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 invalidate];

  if (v7)
  {
    objc_initWeak(&location, self);
    v8 = [NSTimer alloc];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1001359A8;
    v15 = &unk_1006512D8;
    objc_copyWeak(&v16, &location);
    v9 = [v8 initWithFireDate:v7 interval:0 repeats:&v12 block:0.0];
    v10 = [NSRunLoop currentRunLoop:v12];
    [v10 addTimer:v9 forMode:NSDefaultRunLoopMode];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_statusUpdateFormatUpdatedMinutesAgoWithCalendar:(id)a3 date:(id)a4 now:(id)a5
{
  v5 = [a3 components:64 fromDate:a4 toDate:a5 options:0];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"UPDATED_N_MINUTES_AGO_FORMAT%1$ld" value:&stru_100662A88 table:@"Main"];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v7, [v5 minute]);

  return v8;
}

- (void)_transitionToNextStatus:(id)a3 afterDelay:(double)a4
{
  v5 = a3;
  statusTimer = self->_statusTimer;
  if (statusTimer)
  {
    [(NSTimer *)statusTimer invalidate];
    v7 = self->_statusTimer;
    self->_statusTimer = 0;
  }

  self->_currentStatus = 0;
  objc_initWeak(&location, self);
  v8 = [NSTimer alloc];
  v9 = +[NSDate now];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100135F74;
  v14[3] = &unk_100651350;
  objc_copyWeak(&v16, &location);
  v10 = v5;
  v15 = v10;
  v11 = [v8 initWithFireDate:v9 interval:1 repeats:v14 block:5.0];
  v12 = self->_statusTimer;
  self->_statusTimer = v11;

  [(NSTimer *)self->_statusTimer setTolerance:1.0];
  v13 = +[NSRunLoop currentRunLoop];
  [v13 addTimer:self->_statusTimer forMode:NSRunLoopCommonModes];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)updateWithStatusInfo:(id)a3
{
  v4 = a3;
  v5 = +[MailStatusUpdateView log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MailStatusLabelView *)self delegate];
    v7 = [(MailStatusLabelView *)self delegate];
    v8 = [v7 shouldShowSubtitle];
    v9 = [v4 ef_publicDescription];
    v23 = 134218754;
    v24 = self;
    v25 = 2112;
    v26 = v6;
    v27 = 1024;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<MailStatusUpdateView: %p> updateWithStatusInfo: delegate:%@ shouldShowSubtitle:%i statusInfo:%@", &v23, 0x26u);
  }

  v10 = [(MailStatusUpdateView *)self _rebuildFormattedStatusWithStatusInfo:v4];
  v11 = [v4 formattedStatuses];
  v12 = [v11 count] == 0;

  if (!v12)
  {
    [(MailStatusUpdateView *)self _setUpdateTimerFireDate:v10];
    v13 = [(MailStatusLabelView *)self delegate];
    v14 = [v13 shouldTransitionBetweenMailStatuses];

    if ((v14 & 1) != 0 || ([v4 formattedStatuses], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count") > 2, v15, v16))
    {
      [(MailStatusUpdateView *)self _transitionToNextStatus:v4 afterDelay:5.0];
    }

    else
    {
      v17 = [v4 formattedStatuses];
      v18 = [v17 firstObject];
      v19 = [(MailStatusLabelView *)self preferredPrefixWithStatusInfo:v4];
      [(MailStatusLabelView *)self setPrimaryLabelText:v18 prefix:v19 animated:0];

      v20 = [v4 formattedStatuses];
      LODWORD(v18) = [v20 count] > 1;

      if (v18)
      {
        v21 = [v4 formattedStatuses];
        v22 = [v21 objectAtIndexedSubscript:1];
        [(MailStatusLabelView *)self setSecondaryLabelText:v22];
      }

      else
      {
        [(MailStatusLabelView *)self setSecondaryLabelText:0];
      }
    }
  }
}

- (id)_rebuildFormattedStatusWithStatusInfo:(id)a3
{
  v4 = a3;
  v48 = [v4 lastUpdateTime];
  v5 = [v4 unsentCount];
  v6 = [v4 badgeCount];
  if (MUISolariumFeatureEnabled())
  {
    v7 = [v4 iCloudQuotaOfferInlineText];
    if ([v7 length])
    {
      v8 = [v4 iCloudQuotaOfferLargeText];
      v9 = [v8 length];
LABEL_6:
      v10 = v9 != 0;

      goto LABEL_8;
    }
  }

  else
  {
    v7 = [v4 iCloudQuotaOfferText];
    if ([v7 length])
    {
      v8 = [v4 iCloudQuotaOfferLink];
      v9 = [v8 length];
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_8:

  if (v48)
  {
    statusUpdateProvider = self->_statusUpdateProvider;
    v12 = +[NSDate date];
    v51 = 0;
    v50 = [(EMStatusUpdateProvider *)statusUpdateProvider statusUpdateStringWithDate:v48 now:v12 nextTransition:&v51];
    v45 = v51;
  }

  else
  {
    v45 = 0;
    v50 = 0;
  }

  v13 = [(MailStatusLabelView *)self delegate];
  v47 = [v13 mailboxQualifier];

  v54 = NSForegroundColorAttributeName;
  v14 = +[UIColor systemGrayColor];
  v55 = v14;
  v46 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];

  if (v5)
  {
    v15 = +[NSBundle mainBundle];
    v16 = v15;
    if (v5 <= 1)
    {
      v17 = @"UNSENT_MESSAGE_FORMAT";
    }

    else
    {
      v17 = @"UNSENT_MESSAGES_FORMAT";
    }

    v18 = [v15 localizedStringForKey:v17 value:&stru_100662A88 table:@"Main"];

    v19 = [NSNumberFormatter ef_formatUnsignedInteger:v5 withGrouping:1];
    v20 = [NSAttributedString alloc];
    v21 = [NSString stringWithFormat:v18, v19];
    v49 = [v20 initWithString:v21];

    goto LABEL_19;
  }

  v49 = 0;
  if (v6 >= 1 && v47)
  {
    v18 = [NSString localizedStringWithFormat:v47, v6];
    v49 = [[NSAttributedString alloc] initWithString:v18 attributes:v46];
LABEL_19:
  }

  v22 = [v4 networkingAccountErrorString];

  if (v22)
  {
    v23 = [v4 networkingAccountErrorString];
    goto LABEL_22;
  }

  if ([v4 hasAccountError])
  {
    v27 = [v4 accountErrorString];
    v28 = v27 == 0;

    if (!v28)
    {
      v23 = [v4 accountErrorString];
LABEL_22:
      v24 = v23;
      if (v10)
      {
        goto LABEL_23;
      }

LABEL_30:
      v26 = 0;
LABEL_31:
      v25 = 0;
      goto LABEL_33;
    }
  }

  v24 = 0;
  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_23:
  if (MUISolariumFeatureEnabled())
  {
    if ([(MailStatusLabelView *)self shouldShowLargeTitle])
    {
      v25 = 0;
      v26 = [v4 iCloudQuotaOfferLargeText];
      goto LABEL_33;
    }

    v26 = [v4 iCloudQuotaOfferInlineText];
    goto LABEL_31;
  }

  v26 = [v4 iCloudQuotaOfferText];
  v25 = [v4 iCloudQuotaOfferLink];
LABEL_33:
  if (v50)
  {
    v29 = [[NSAttributedString alloc] initWithString:v50];
  }

  else
  {
    if (!v49)
    {
      v30 = 0;
      if (v24)
      {
        goto LABEL_38;
      }

LABEL_44:
      v39 = v49;
      goto LABEL_45;
    }

    v29 = v49;
  }

  v30 = v29;
  if (!v24)
  {
    goto LABEL_44;
  }

LABEL_38:
  if (v50 && v30 && v49)
  {
    v31 = [[NSMutableAttributedString alloc] initWithAttributedString:v30];
    v52 = NSForegroundColorAttributeName;
    v32 = +[UIColor systemGrayColor];
    v53 = v32;
    v33 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];

    v34 = [NSAttributedString alloc];
    v35 = +[NSBundle mainBundle];
    v36 = [v35 localizedStringForKey:@"STATUS_TEXT_SEPARATOR" value:&stru_100662A88 table:@"Main"];
    v37 = [v34 initWithString:v36 attributes:v33];

    [v31 appendAttributedString:v37];
    [v31 appendAttributedString:v49];
    v38 = [[NSAttributedString alloc] initWithAttributedString:v31];

    v39 = v24;
    v30 = v38;
  }

  else
  {
    v39 = v24;
  }

LABEL_45:
  v40 = v39;
  if ((MUISolariumFeatureEnabled() & 1) == 0 && (!v40 || [v40 isEqualToAttributedString:v30]))
  {
    v41 = objc_alloc_init(NSAttributedString);

    v40 = v41;
  }

  v42 = +[NSMutableArray array];
  [v42 ef_addOptionalObject:v30];
  [v42 ef_addOptionalObject:v40];
  if (v26)
  {
    [v42 ef_addOptionalObject:v26];
    [v42 ef_addOptionalObject:v25];
    if ([v42 count] >= 3 && (objc_msgSend(v4, "iCloudQuotaOfferShouldPersist") & 1) == 0)
    {
      if ([v4 shouldShowSubtitle])
      {
        [v42 ef_addOptionalObject:v30];
        v43 = v40;
      }

      else if (v40)
      {
        v43 = v40;
      }

      else
      {
        v43 = v30;
      }

      [v42 ef_addOptionalObject:v43];
    }
  }

  [v4 setFormattedStatuses:v42];

  return v45;
}

@end