@interface MailStatusUpdateView
+ (id)log;
- (MailStatusUpdateView)initWithFrame:(CGRect)frame;
- (id)_rebuildFormattedStatusWithStatusInfo:(id)info;
- (id)_statusUpdateFormatUpdatedMinutesAgoWithCalendar:(id)calendar date:(id)date now:(id)now;
- (id)_updateTimer:(id)timer fireDate:(id)date;
- (void)_invalidateAllTimers;
- (void)_setUpdateTimerFireDate:(id)date;
- (void)_significantTimeChange:(id)change;
- (void)_transitionToNextStatus:(id)status afterDelay:(double)delay;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)tintColorDidChange;
- (void)updateWithStatusInfo:(id)info;
@end

@implementation MailStatusUpdateView

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CA98;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD1A0 != -1)
  {
    dispatch_once(&qword_1006DD1A0, block);
  }

  v2 = qword_1006DD198;

  return v2;
}

- (void)tintColorDidChange
{
  delegate = [(MailStatusLabelView *)self delegate];
  [delegate tintColorDidChange];
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = MailStatusUpdateView;
  [(MailStatusUpdateView *)&v4 didMoveToSuperview];
  superview = [(MailStatusUpdateView *)self superview];

  if (!superview)
  {
    [(MailStatusUpdateView *)self _invalidateAllTimers];
  }
}

- (MailStatusUpdateView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = MailStatusUpdateView;
  v3 = [(MailStatusLabelView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)_significantTimeChange:(id)change
{
  v4 = objc_alloc_init(EMStatusUpdateProvider);
  statusUpdateProvider = self->_statusUpdateProvider;
  self->_statusUpdateProvider = v4;
}

- (void)_setUpdateTimerFireDate:(id)date
{
  dateCopy = date;
  v5 = +[MailStatusUpdateView log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 134218242;
    selfCopy = self;
    v10 = 2112;
    v11 = dateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "<MailStatusUpdateView: %p> Kick off new update timer to fire at: %@", &v8, 0x16u);
  }

  v6 = [(MailStatusUpdateView *)self _updateTimer:self->_updateTimer fireDate:dateCopy];
  updateTimer = self->_updateTimer;
  self->_updateTimer = v6;
}

- (id)_updateTimer:(id)timer fireDate:(id)date
{
  timerCopy = timer;
  dateCopy = date;
  [timerCopy invalidate];

  if (dateCopy)
  {
    objc_initWeak(&location, self);
    v8 = [NSTimer alloc];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1001359A8;
    v15 = &unk_1006512D8;
    objc_copyWeak(&v16, &location);
    v9 = [v8 initWithFireDate:dateCopy interval:0 repeats:&v12 block:0.0];
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

- (id)_statusUpdateFormatUpdatedMinutesAgoWithCalendar:(id)calendar date:(id)date now:(id)now
{
  v5 = [calendar components:64 fromDate:date toDate:now options:0];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"UPDATED_N_MINUTES_AGO_FORMAT%1$ld" value:&stru_100662A88 table:@"Main"];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v7, [v5 minute]);

  return v8;
}

- (void)_transitionToNextStatus:(id)status afterDelay:(double)delay
{
  statusCopy = status;
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
  v10 = statusCopy;
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

- (void)updateWithStatusInfo:(id)info
{
  infoCopy = info;
  v5 = +[MailStatusUpdateView log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    delegate = [(MailStatusLabelView *)self delegate];
    delegate2 = [(MailStatusLabelView *)self delegate];
    shouldShowSubtitle = [delegate2 shouldShowSubtitle];
    ef_publicDescription = [infoCopy ef_publicDescription];
    v23 = 134218754;
    selfCopy = self;
    v25 = 2112;
    v26 = delegate;
    v27 = 1024;
    v28 = shouldShowSubtitle;
    v29 = 2112;
    v30 = ef_publicDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<MailStatusUpdateView: %p> updateWithStatusInfo: delegate:%@ shouldShowSubtitle:%i statusInfo:%@", &v23, 0x26u);
  }

  v10 = [(MailStatusUpdateView *)self _rebuildFormattedStatusWithStatusInfo:infoCopy];
  formattedStatuses = [infoCopy formattedStatuses];
  v12 = [formattedStatuses count] == 0;

  if (!v12)
  {
    [(MailStatusUpdateView *)self _setUpdateTimerFireDate:v10];
    delegate3 = [(MailStatusLabelView *)self delegate];
    shouldTransitionBetweenMailStatuses = [delegate3 shouldTransitionBetweenMailStatuses];

    if ((shouldTransitionBetweenMailStatuses & 1) != 0 || ([infoCopy formattedStatuses], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count") > 2, v15, v16))
    {
      [(MailStatusUpdateView *)self _transitionToNextStatus:infoCopy afterDelay:5.0];
    }

    else
    {
      formattedStatuses2 = [infoCopy formattedStatuses];
      firstObject = [formattedStatuses2 firstObject];
      v19 = [(MailStatusLabelView *)self preferredPrefixWithStatusInfo:infoCopy];
      [(MailStatusLabelView *)self setPrimaryLabelText:firstObject prefix:v19 animated:0];

      formattedStatuses3 = [infoCopy formattedStatuses];
      LODWORD(firstObject) = [formattedStatuses3 count] > 1;

      if (firstObject)
      {
        formattedStatuses4 = [infoCopy formattedStatuses];
        v22 = [formattedStatuses4 objectAtIndexedSubscript:1];
        [(MailStatusLabelView *)self setSecondaryLabelText:v22];
      }

      else
      {
        [(MailStatusLabelView *)self setSecondaryLabelText:0];
      }
    }
  }
}

- (id)_rebuildFormattedStatusWithStatusInfo:(id)info
{
  infoCopy = info;
  lastUpdateTime = [infoCopy lastUpdateTime];
  unsentCount = [infoCopy unsentCount];
  badgeCount = [infoCopy badgeCount];
  if (MUISolariumFeatureEnabled())
  {
    iCloudQuotaOfferInlineText = [infoCopy iCloudQuotaOfferInlineText];
    if ([iCloudQuotaOfferInlineText length])
    {
      iCloudQuotaOfferLargeText = [infoCopy iCloudQuotaOfferLargeText];
      v9 = [iCloudQuotaOfferLargeText length];
LABEL_6:
      v10 = v9 != 0;

      goto LABEL_8;
    }
  }

  else
  {
    iCloudQuotaOfferInlineText = [infoCopy iCloudQuotaOfferText];
    if ([iCloudQuotaOfferInlineText length])
    {
      iCloudQuotaOfferLargeText = [infoCopy iCloudQuotaOfferLink];
      v9 = [iCloudQuotaOfferLargeText length];
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_8:

  if (lastUpdateTime)
  {
    statusUpdateProvider = self->_statusUpdateProvider;
    v12 = +[NSDate date];
    v51 = 0;
    v50 = [(EMStatusUpdateProvider *)statusUpdateProvider statusUpdateStringWithDate:lastUpdateTime now:v12 nextTransition:&v51];
    v45 = v51;
  }

  else
  {
    v45 = 0;
    v50 = 0;
  }

  delegate = [(MailStatusLabelView *)self delegate];
  mailboxQualifier = [delegate mailboxQualifier];

  v54 = NSForegroundColorAttributeName;
  v14 = +[UIColor systemGrayColor];
  v55 = v14;
  v46 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];

  if (unsentCount)
  {
    v15 = +[NSBundle mainBundle];
    v16 = v15;
    if (unsentCount <= 1)
    {
      v17 = @"UNSENT_MESSAGE_FORMAT";
    }

    else
    {
      v17 = @"UNSENT_MESSAGES_FORMAT";
    }

    v18 = [v15 localizedStringForKey:v17 value:&stru_100662A88 table:@"Main"];

    v19 = [NSNumberFormatter ef_formatUnsignedInteger:unsentCount withGrouping:1];
    v20 = [NSAttributedString alloc];
    v21 = [NSString stringWithFormat:v18, v19];
    v49 = [v20 initWithString:v21];

    goto LABEL_19;
  }

  v49 = 0;
  if (badgeCount >= 1 && mailboxQualifier)
  {
    v18 = [NSString localizedStringWithFormat:mailboxQualifier, badgeCount];
    v49 = [[NSAttributedString alloc] initWithString:v18 attributes:v46];
LABEL_19:
  }

  networkingAccountErrorString = [infoCopy networkingAccountErrorString];

  if (networkingAccountErrorString)
  {
    networkingAccountErrorString2 = [infoCopy networkingAccountErrorString];
    goto LABEL_22;
  }

  if ([infoCopy hasAccountError])
  {
    accountErrorString = [infoCopy accountErrorString];
    v28 = accountErrorString == 0;

    if (!v28)
    {
      networkingAccountErrorString2 = [infoCopy accountErrorString];
LABEL_22:
      v24 = networkingAccountErrorString2;
      if (v10)
      {
        goto LABEL_23;
      }

LABEL_30:
      iCloudQuotaOfferLargeText2 = 0;
LABEL_31:
      iCloudQuotaOfferLink = 0;
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
      iCloudQuotaOfferLink = 0;
      iCloudQuotaOfferLargeText2 = [infoCopy iCloudQuotaOfferLargeText];
      goto LABEL_33;
    }

    iCloudQuotaOfferLargeText2 = [infoCopy iCloudQuotaOfferInlineText];
    goto LABEL_31;
  }

  iCloudQuotaOfferLargeText2 = [infoCopy iCloudQuotaOfferText];
  iCloudQuotaOfferLink = [infoCopy iCloudQuotaOfferLink];
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
  if (iCloudQuotaOfferLargeText2)
  {
    [v42 ef_addOptionalObject:iCloudQuotaOfferLargeText2];
    [v42 ef_addOptionalObject:iCloudQuotaOfferLink];
    if ([v42 count] >= 3 && (objc_msgSend(infoCopy, "iCloudQuotaOfferShouldPersist") & 1) == 0)
    {
      if ([infoCopy shouldShowSubtitle])
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

  [infoCopy setFormattedStatuses:v42];

  return v45;
}

@end