@interface MailStatusViewController
+ (OS_os_log)log;
+ (id)signpostLog;
- (BOOL)_rebuildStatus;
- (BOOL)_shouldForceStatus;
- (BOOL)preferUnreadCountInsteadOfTotalCount:(id)a3;
- (BOOL)shouldShowSubtitle;
- (MailMainScene)scene;
- (MailStatusDelegate)delegate;
- (MailStatusInfo)statusInfo;
- (MailStatusViewController)initWithMailboxRepository:(id)a3 outgoingMessageRepository:(id)a4 scene:(id)a5;
- (id)_forcedStatusInfo;
- (id)accountStatusErrorAttributedStringForAccountWithErrors:(id)a3;
- (id)actionBlockForAccountError:(id)a3 error:(id)a4 description:(id)a5 failureReason:(id)a6;
- (id)mailboxQualifier;
- (id)networkStatusErrorString;
- (id)statusBarView:(id)a3 preferredPrefixFromStatusInfo:(id)a4;
- (int64_t)currentState;
- (int64_t)interfaceOrientation;
- (unint64_t)signpostID;
- (void)_performStatusUpdateAndSignpostForMailboxObjectID:(id)a3;
- (void)_reset;
- (void)_subtitlePressed;
- (void)_updateStatusView:(id)a3 statusInfo:(id)a4;
- (void)_updateStatusViewsWithStatusInfo:(id)a3;
- (void)badgeCountUpdated:(id)a3 badgeCount:(int64_t)a4;
- (void)currentStatusInfoWithCompletion:(id)a3;
- (void)hasDelayedMessagesDidChange:(BOOL)a3;
- (void)iCloudQuotaOfferUpdated:(id)a3 offer:(id)a4;
- (void)mailStatusBarViewFilterCriteriaButtonTapped:(id)a3;
- (void)mailStatusBarViewUndoButtonTapped:(id)a3;
- (void)mailStatusObserver:(id)a3 didChangeInAppMessage:(id)a4;
- (void)mailboxStatusUpdatedWithStatusInfo:(id)a3 forMailboxObjectID:(id)a4;
- (void)networkStatusChanged:(id)a3;
- (void)numberOfPendingMessagesChanged:(unint64_t)a3;
- (void)resetAccountErrors;
- (void)setStatusInfo:(id)a3;
- (void)signpostPreviousStatus:(id)a3 andCurrentStatus:(id)a4 usingMailboxObjectID:(id)a5;
- (void)startObservingForActivityStatusMailboxes:(id)a3 badgeCountStatusMailboxes:(id)a4 delegate:(id)a5 filterPredicate:(id)a6 label:(id)a7;
- (void)startObservingForVisibleMailboxes:(id)a3 delegate:(id)a4 filterPredicate:(id)a5 label:(id)a6;
- (void)stopObserving;
- (void)tintColorDidChange;
- (void)updateBarItemTitle:(id)a3 secondaryTitle:(id)a4;
- (void)updatePrimaryStatusPrefix:(id)a3 secondaryStatusPrefix:(id)a4;
- (void)updateStatusWithFilterCriteria:(id)a3;
@end

@implementation MailStatusViewController

- (void)stopObserving
{
  objc_storeWeak(&self->_delegate, 0);
  v3 = +[MailStatusViewController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v7 = self;
    v8 = 2112;
    v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%p Set delegate:%@", buf, 0x16u);
  }

  v4 = [(MailStatusViewController *)self mailboxStatusScheduler];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000F63C;
  v5[3] = &unk_10064C7E8;
  v5[4] = self;
  [v4 performBlock:v5];
}

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E0B0;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD1B0 != -1)
  {
    dispatch_once(&qword_1006DD1B0, block);
  }

  v2 = qword_1006DD1A8;

  return v2;
}

+ (id)signpostLog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F5A0;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD1C0 != -1)
  {
    dispatch_once(&qword_1006DD1C0, block);
  }

  v2 = qword_1006DD1B8;

  return v2;
}

- (void)_reset
{
  v6 = [(MailStatusViewController *)self mailboxStatusInfos];
  [v6 removeAllObjects];

  [(MailStatusViewController *)self setBadgeCount:0];
  [(MailStatusViewController *)self setFilterCriteria:0];
  v7 = [(MailStatusViewController *)self statusInfo];
  v3 = objc_alloc_init(MailStatusInfo);
  [(MailStatusInfo *)v3 setStatus:&stru_100662A88];
  [(MailStatusInfo *)v3 setState:2];
  [(MailStatusViewController *)self setStatusInfo:v3];
  v4 = v3;
  [(MailStatusViewController *)self signpostPreviousStatus:v7 andCurrentStatus:v4 usingMailboxObjectID:0];
  [(MailStatusViewController *)self _updateStatusViewsWithStatusInfo:v4];
  v5 = [(MailStatusViewController *)self statusObserver];
  [v5 checkForiCloudQuotaUpsellOffer];
}

- (MailStatusInfo)statusInfo
{
  os_unfair_lock_lock(&self->_statusInfoLock);
  v3 = self->_statusInfo;
  os_unfair_lock_unlock(&self->_statusInfoLock);

  return v3;
}

- (MailStatusDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_shouldForceStatus
{
  v3 = +[EFDevice currentDevice];
  v4 = [v3 isInternal];

  return (v4 & 1) != 0 && [(MailStatusViewController *)self forcedStatus]!= 0;
}

- (BOOL)shouldShowSubtitle
{
  v2 = [(MailStatusViewController *)self delegate];
  v3 = [v2 shouldShowSubtitle];

  return v3;
}

- (id)networkStatusErrorString
{
  v2 = +[MFNetworkController sharedInstance];
  v3 = [v2 dataStatus];

  v4 = +[MailStatusViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSNumber numberWithInteger:v3];
    *buf = 138543362;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Current network data status: %{public}@", buf, 0xCu);
  }

  if (v3)
  {
    v6 = +[NSBundle mainBundle];
    v7 = MFLookupLocalizedString();
    v8 = [v6 localizedStringForKey:v7 value:&stru_100662A88 table:@"Main"];

    v9 = +[UIColor systemGrayColor];
    v14 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

    v11 = [[NSMutableAttributedString alloc] initWithString:v8 attributes:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_rebuildStatus
{
  v64 = [(MailStatusViewController *)self mailboxStatusInfos];
  v80 = +[NSDate date];
  v65 = objc_alloc_init(NSMutableArray);
  v2 = self;
  [(MailStatusViewController *)self setPressedBlock:0];
  os_unfair_lock_lock(&self->_numberOfPendingMessagesLock);
  numberOfPendingMessages = self->_numberOfPendingMessages;
  hasDelayedMessages = self->_hasDelayedMessages;
  os_unfair_lock_unlock(&self->_numberOfPendingMessagesLock);
  v63 = numberOfPendingMessages;
  if (hasDelayedMessages)
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v5 = v64;
    v6 = [v5 countByEnumeratingWithState:&v90 objects:v99 count:16];
    if (v6)
    {
      v7 = *v91;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v91 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [v5 objectForKeyedSubscript:*(*(&v90 + 1) + 8 * i)];
          [v9 setState:4];
        }

        v6 = [v5 countByEnumeratingWithState:&v90 objects:v99 count:16];
      }

      while (v6);
    }

    v81 = 0;
    v69 = 0;
    v70 = 0;
    v78 = 0;
    v79 = 0;
    v10 = 0;
    v67 = 0;
    v11 = 0;
    v12 = 0;
    v72 = 0;
    v73 = 0;
    v77 = 0;
    v74 = 4;
    v75 = 0;
    goto LABEL_10;
  }

  if (numberOfPendingMessages)
  {
    v81 = 0;
    v69 = 0;
    v70 = 0;
    v78 = 0;
    v79 = 0;
    v10 = 0;
    v67 = 0;
    v11 = 0;
    v12 = 0;
    v72 = 0;
    v73 = 0;
    v77 = 0;
    v74 = 1;
    v75 = 0;
    goto LABEL_52;
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v64;
  v13 = [obj countByEnumeratingWithState:&v86 objects:v98 count:16];
  if (!v13)
  {
    v81 = 0;
    v69 = 0;
    v70 = 0;
    v78 = 0;
    v79 = 0;
    v67 = 0;
    v11 = 0;
    v12 = 0;
    v72 = 0;
    v73 = 0;
    v77 = 0;
    v74 = 1;
    v75 = 0;
    goto LABEL_44;
  }

  v81 = 0;
  v69 = 0;
  v70 = 0;
  v78 = 0;
  v79 = 0;
  v67 = 0;
  v11 = 0;
  v12 = 0;
  v72 = 0;
  v73 = 0;
  v77 = 0;
  v68 = *v87;
  v74 = 1;
  v75 = 0;
  do
  {
    v71 = v13;
    for (j = 0; j != v71; j = j + 1)
    {
      if (*v87 != v68)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v86 + 1) + 8 * j);
      v16 = [obj objectForKeyedSubscript:v15];
      v17 = [v16 lastUpdateTime];
      v18 = [v17 compare:v80] == 1;

      if (v18)
      {
        v19 = [v16 lastUpdateTime];

        v80 = v19;
      }

      v20 = [v16 progress];
      v21 = v20;
      if (v20 && [v20 totalUnitCount] >= 1)
      {
        if (!v72)
        {
          v72 = [[NSProgress alloc] initWithParent:0 userInfo:0];
        }

        v22 = [v16 status];

        v81 = +[NSProgress discreteProgressWithTotalUnitCount:](NSProgress, "discreteProgressWithTotalUnitCount:", [v21 totalUnitCount]);
        v23 = [v16 progress];
        [v81 setCompletedUnitCount:{objc_msgSend(v23, "completedUnitCount")}];

        [v72 addChild:v81 withPendingUnitCount:1];
        v24 = 3;
        goto LABEL_29;
      }

      if (v74 == 3)
      {
        v74 = 3;
        goto LABEL_30;
      }

      if ([v16 state] == 2)
      {
        v22 = [v16 status];
        v24 = 2;
LABEL_29:
        v74 = v24;

        v81 = v22;
      }

LABEL_30:
      if ([v16 state] == 1)
      {
        v25 = [v16 status];

        v70 = v25;
      }

      v26 = [v16 iCloudQuotaOfferText];

      if (v26)
      {
        v27 = [v16 iCloudQuotaOfferText];

        v28 = [v16 iCloudQuotaOfferLink];

        v73 = v28;
        v77 = v27;
      }

      v29 = [v16 iCloudQuotaOfferInlineText];

      if (v29)
      {
        v30 = [v16 iCloudQuotaOfferInlineText];

        v31 = [v16 iCloudQuotaOfferLargeText];

        v32 = [v16 iCloudQuotaOfferCallToAction];

        v67 = [v16 iCloudQuotaOfferShouldPersist];
        v78 = v32;
        v11 = v31;
        v12 = v30;
      }

      if ([v16 hasAccountError])
      {
        v33 = [(MailStatusViewController *)self mailboxRepository];
        v34 = [v33 mailboxForObjectID:v15];
        v35 = [v34 result:0];

        v36 = [v35 account];
        if (v36)
        {
          [v65 addObject:v36];
        }

        v37 = [v16 error];

        v38 = [v16 accountErrorTitle];

        v39 = [v16 failureReasonDescription];

        v79 = v37;
        v75 = v38;
        v69 = v39;
      }
    }

    v13 = [obj countByEnumeratingWithState:&v86 objects:v98 count:16];
  }

  while (v13);
LABEL_44:

  if ([v65 count])
  {
    v40 = [(MailStatusViewController *)self accountStatusErrorAttributedStringForAccountWithErrors:v65];
    v41 = [(MailStatusViewController *)self actionBlockForAccountError:v65 error:v79 description:v75 failureReason:v69];
    [(MailStatusViewController *)self setPressedBlock:v41];
    v10 = v40;
    goto LABEL_50;
  }

  v2 = self;
  if (v73)
  {
    v42 = [(MailStatusViewController *)self scene];
    v43 = [v42 masterNavigationController];

    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_10013820C;
    v84[3] = &unk_10064C7E8;
    v85 = v43;
    v41 = v43;
    [(MailStatusViewController *)self setPressedBlock:v84];

    v10 = 0;
    goto LABEL_50;
  }

  if (v78)
  {
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = sub_10013839C;
    v82[3] = &unk_10064C598;
    v83 = v78;
    [(MailStatusViewController *)self setPressedBlock:v82];
    v10 = 0;
    v41 = v83;
LABEL_50:

    v2 = self;
  }

  else
  {
    v10 = 0;
  }

  if (!v80)
  {
    v80 = +[NSDate now];
LABEL_10:
    v2 = self;
  }

LABEL_52:
  v44 = [(MailStatusViewController *)v2 filterCriteria];

  if (v44)
  {
    v45 = 5;
  }

  else
  {
    v45 = v74;
  }

  if ([(MailStatusViewController *)self _shouldForceStatus])
  {
    v46 = [(MailStatusViewController *)self _forcedStatusInfo];
  }

  else
  {
    v46 = objc_alloc_init(MailStatusInfo);
    [(MailStatusInfo *)v46 setState:v45];
    if (v81)
    {
      v47 = v81;
    }

    else
    {
      v47 = v70;
    }

    [(MailStatusInfo *)v46 setStatus:v47];
    -[MailStatusInfo setHasAccountError:](v46, "setHasAccountError:", [v65 count] != 0);
    [(MailStatusInfo *)v46 setLastUpdateTime:v80];
    v48 = [(MailStatusViewController *)self primaryStatusPrefix];
    [(MailStatusInfo *)v46 setPrimaryStatusPrefix:v48];

    v49 = [(MailStatusViewController *)self secondaryStatusPrefix];
    [(MailStatusInfo *)v46 setSecondaryStatusPrefix:v49];

    [(MailStatusInfo *)v46 setShouldShowSubtitle:[(MailStatusViewController *)self shouldShowSubtitle]];
    if ((MUISolariumFeatureEnabled() & 1) == 0)
    {
      v50 = [(MailStatusInfo *)v46 shouldShowSubtitle];
      if (v73)
      {
        v51 = 1;
      }

      else
      {
        v51 = v50;
      }

      [(MailStatusInfo *)v46 setShouldShowSubtitle:v51];
    }

    v52 = [(MailStatusViewController *)self networkStatusErrorString];
    [(MailStatusInfo *)v46 setNetworkingAccountErrorString:v52];

    [(MailStatusInfo *)v46 setAccountErrorString:v10];
    v53 = [(MailStatusViewController *)self delegate];
    if ([v53 shouldShowUnreadCountForMailStatusViewController:self])
    {
      v54 = [(MailStatusViewController *)self badgeCount];
    }

    else
    {
      v54 = 0;
    }

    [(MailStatusInfo *)v46 setBadgeCount:v54];

    [(MailStatusInfo *)v46 setUnsentCount:v63];
    [(MailStatusInfo *)v46 setProgress:v72];
    [(MailStatusInfo *)v46 setICloudQuotaOfferText:v77];
    [(MailStatusInfo *)v46 setICloudQuotaOfferLink:v73];
    [(MailStatusInfo *)v46 setICloudQuotaOfferInlineText:v12];
    [(MailStatusInfo *)v46 setICloudQuotaOfferLargeText:v11];
    [(MailStatusInfo *)v46 setICloudQuotaOfferCallToAction:v78];
    [(MailStatusInfo *)v46 setICloudQuotaOfferShouldPersist:v67 & 1];
    v55 = [(MailStatusViewController *)self filterCriteria];
    [(MailStatusInfo *)v46 setFilterCriteria:v55];

    v56 = [(MailStatusViewController *)self statusInfo];
    v57 = [v56 formattedStatuses];
    [(MailStatusInfo *)v46 setFormattedStatuses:v57];
  }

  v58 = [(MailStatusViewController *)self statusInfo];
  v59 = [(MailStatusInfo *)v46 isEqual:v58];

  if ((v59 & 1) == 0)
  {
    v60 = +[MailStatusViewController log];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = [(MailStatusInfo *)v46 ef_publicDescription];
      *buf = 134218242;
      v95 = self;
      v96 = 2112;
      v97 = v61;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%p rebuildStatus - setting new statusInfo:%@", buf, 0x16u);
    }

    [(MailStatusViewController *)self setStatusInfo:v46];
  }

  return v59 ^ 1;
}

- (void)resetAccountErrors
{
  v3 = [(MailStatusViewController *)self mailboxStatusScheduler];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001790C;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  [v3 performSyncBlock:v4];
}

- (id)mailboxQualifier
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained mailboxQualifier];

  return v3;
}

- (void)tintColorDidChange
{
  v3 = [(MailStatusViewController *)self primaryStatusView];
  v4 = [v3 tintColor];
  [(MailStatusViewController *)self setStatusBarViewTintColor:v4];

  [(MailStatusViewController *)self _performStatusUpdate];
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

- (MailStatusViewController)initWithMailboxRepository:(id)a3 outgoingMessageRepository:(id)a4 scene:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v45.receiver = self;
  v45.super_class = MailStatusViewController;
  v12 = [(MailStatusViewController *)&v45 init];
  if (v12)
  {
    v13 = [MailStatusBarView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v17 = [(MailStatusBarView *)v13 initWithFrame:CGRectZero.origin.x, y, width, height];
    primaryStatusView = v12->_primaryStatusView;
    v12->_primaryStatusView = v17;

    [(MailStatusBarView *)v12->_primaryStatusView setTarget:v12 withAction:"_subtitlePressed"];
    [(MailStatusBarView *)v12->_primaryStatusView setDelegate:v12];
    v19 = [(MailStatusBarView *)v12->_primaryStatusView tintColor];
    statusBarViewTintColor = v12->_statusBarViewTintColor;
    v12->_statusBarViewTintColor = v19;

    v21 = [[UIBarButtonItem alloc] initWithCustomView:v12->_primaryStatusView];
    mailStatusBarButtonItem = v12->_mailStatusBarButtonItem;
    v12->_mailStatusBarButtonItem = v21;

    if (MUISolariumFeatureEnabled())
    {
      v23 = [[MailStatusBarView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
      secondaryStatusView = v12->_secondaryStatusView;
      v12->_secondaryStatusView = v23;

      [(MailStatusBarView *)v12->_secondaryStatusView setTextAlignment:0];
      [(MailStatusBarView *)v12->_secondaryStatusView setShouldShowLargeTitle:1];
      [(MailStatusBarView *)v12->_secondaryStatusView setTarget:v12 withAction:"_subtitlePressed"];
      [(MailStatusBarView *)v12->_secondaryStatusView setDelegate:v12];
    }

    v25 = +[EFDevice currentDevice];
    v26 = [v25 isInternal];

    if (v26)
    {
      v27 = +[NSUserDefaults em_userDefaults];
      v28 = EMUserDefaultForceStatus;
      v12->_forcedStatus = [v27 integerForKey:EMUserDefaultForceStatus];

      objc_initWeak(&location, v12);
      v29 = +[NSUserDefaults em_userDefaults];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100137694;
      v42[3] = &unk_10064E0C0;
      objc_copyWeak(&v43, &location);
      v30 = [v29 ef_observeKeyPath:v28 options:1 autoCancelToken:1 usingBlock:v42];
      forcedStatusToken = v12->_forcedStatusToken;
      v12->_forcedStatusToken = v30;

      objc_destroyWeak(&v43);
      objc_destroyWeak(&location);
    }

    objc_storeStrong(&v12->_mailboxRepository, a3);
    objc_storeStrong(&v12->_outgoingMessageRepository, a4);
    v32 = [[MailStatusObserver alloc] initWithMailboxRepository:v12->_mailboxRepository delegate:v12];
    statusObserver = v12->_statusObserver;
    v12->_statusObserver = v32;

    v34 = objc_opt_new();
    mailboxStatusInfos = v12->_mailboxStatusInfos;
    v12->_mailboxStatusInfos = v34;

    v36 = [NSString stringWithFormat:@"com.apple.mobilemail.%@.scheduler", objc_opt_class()];
    v37 = [EFScheduler serialDispatchQueueSchedulerWithName:v36];
    mailboxStatusScheduler = v12->_mailboxStatusScheduler;
    v12->_mailboxStatusScheduler = v37;

    *&v12->_statusInfoLock._os_unfair_lock_opaque = 0;
    v12->_hasDelayedMessagesLock._os_unfair_lock_opaque = 0;
    v39 = objc_alloc_init(MailStatusInfo);
    statusInfo = v12->_statusInfo;
    v12->_statusInfo = v39;

    objc_storeWeak(&v12->_scene, v11);
    v12->_hasDelayedMessages = 0;
  }

  return v12;
}

- (void)startObservingForVisibleMailboxes:(id)a3 delegate:(id)a4 filterPredicate:(id)a5 label:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MailStatusViewController *)self mailboxStatusScheduler];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100137854;
  v15[3] = &unk_10064C7E8;
  v15[4] = self;
  [v14 performBlock:v15];

  [(MailStatusViewController *)self startObservingForActivityStatusMailboxes:v10 badgeCountStatusMailboxes:v10 delegate:v11 filterPredicate:v12 label:v13];
}

- (void)startObservingForActivityStatusMailboxes:(id)a3 badgeCountStatusMailboxes:(id)a4 delegate:(id)a5 filterPredicate:(id)a6 label:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  objc_storeWeak(&self->_delegate, v14);
  v17 = +[MailStatusViewController log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v29 = self;
    v30 = 2112;
    v31 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%p Set delegate:%@", buf, 0x16u);
  }

  v18 = [(MailStatusViewController *)self mailboxStatusScheduler];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100137AFC;
  v23[3] = &unk_100651378;
  v23[4] = self;
  v19 = v12;
  v24 = v19;
  v20 = v13;
  v25 = v20;
  v21 = v15;
  v26 = v21;
  v22 = v16;
  v27 = v22;
  [v18 performBlock:v23];
}

- (void)setStatusInfo:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_statusInfoLock);
  if (self->_statusInfo != v5)
  {
    objc_storeStrong(&self->_statusInfo, a3);
  }

  os_unfair_lock_unlock(&self->_statusInfoLock);
}

- (void)_subtitlePressed
{
  v3 = [(MailStatusViewController *)self pressedBlock];

  if (v3)
  {
    v4 = [(MailStatusViewController *)self pressedBlock];
    v4[2]();
  }
}

- (void)_performStatusUpdateAndSignpostForMailboxObjectID:(id)a3
{
  v4 = a3;
  v5 = [(MailStatusViewController *)self mailboxStatusScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100137FD8;
  v7[3] = &unk_10064C660;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];
}

- (void)_updateStatusViewsWithStatusInfo:(id)a3
{
  v6 = a3;
  v4 = [(MailStatusViewController *)self primaryStatusView];
  [(MailStatusViewController *)self _updateStatusView:v4 statusInfo:v6];

  v5 = [(MailStatusViewController *)self secondaryStatusView];
  [(MailStatusViewController *)self _updateStatusView:v5 statusInfo:v6];
}

- (void)_updateStatusView:(id)a3 statusInfo:(id)a4
{
  v6 = a3;
  v5 = [a4 copy];
  [v6 setNeedsDisplayWithStatusInfo:v5];
}

- (id)_forcedStatusInfo
{
  v3 = objc_alloc_init(MailStatusInfo);
  [(MailStatusInfo *)v3 setShouldShowSubtitle:MUISolariumFeatureEnabled() ^ 1];
  v4 = [(MailStatusViewController *)self forcedStatus];
  v5 = 0;
  switch(v4)
  {
    case 0:
      goto LABEL_17;
    case 1:
      [(MailStatusInfo *)v3 setState:2];
      v6 = @"Connecting…";
      goto LABEL_11;
    case 2:
      [(MailStatusInfo *)v3 setState:3];
      v6 = @"Downloading 123 of 9876";
LABEL_11:
      [(MailStatusInfo *)v3 setStatus:v6];
      break;
    case 3:
      goto LABEL_6;
    case 4:
      [(MailStatusInfo *)v3 setBadgeCount:987];
LABEL_6:
      [(MailStatusInfo *)v3 setState:1];
      v28 = +[NSDate now];
      [(MailStatusInfo *)v3 setLastUpdateTime:v28];
      goto LABEL_15;
    case 5:
      goto LABEL_14;
    case 6:
      [(MailStatusInfo *)v3 setBadgeCount:987];
LABEL_14:
      [(MailStatusInfo *)v3 setState:1];
      v50 = +[NSDate now];
      [(MailStatusInfo *)v3 setLastUpdateTime:v50];

      v28 = [[NSAttributedString alloc] initWithString:@"Account Error"];
      [(MailStatusInfo *)v3 setNetworkingAccountErrorString:v28];
LABEL_15:

      break;
    case 7:
      [(MailStatusInfo *)v3 setState:4];
      break;
    case 8:
      goto LABEL_9;
    case 9:
      [(MailStatusInfo *)v3 setBadgeCount:123];
LABEL_9:
      [(MailStatusInfo *)v3 setState:1];
      v29 = +[NSDate now];
      [(MailStatusInfo *)v3 setLastUpdateTime:v29];

      v30 = [NSAttributedString alloc];
      v66[0] = NSFontAttributeName;
      v31 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
      v67[0] = v31;
      v66[1] = NSForegroundColorAttributeName;
      v32 = +[UIColor systemRedColor];
      v67[1] = v32;
      v33 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:2];
      v34 = [v30 initWithString:@"iCloud storage is almost full" attributes:v33];
      [(MailStatusInfo *)v3 setICloudQuotaOfferText:v34];

      v35 = [NSAttributedString alloc];
      v64[0] = NSFontAttributeName;
      v36 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
      v64[1] = NSForegroundColorAttributeName;
      v65[0] = v36;
      v37 = +[UIColor systemBlueColor];
      v65[1] = v37;
      v38 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2];
      v39 = [v35 initWithString:@"Add or manage…" attributes:v38];
      [(MailStatusInfo *)v3 setICloudQuotaOfferLink:v39];

      v40 = [NSAttributedString alloc];
      v62[0] = NSFontAttributeName;
      v41 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
      v62[1] = NSForegroundColorAttributeName;
      v63[0] = v41;
      v42 = +[UIColor secondaryLabelColor];
      v63[1] = v42;
      v43 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:2];
      v44 = [v40 initWithString:@"iCloud Almost Full" attributes:v43];
      [(MailStatusInfo *)v3 setICloudQuotaOfferInlineText:v44];

      v45 = [NSAttributedString alloc];
      v60[0] = NSFontAttributeName;
      v46 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
      v60[1] = NSForegroundColorAttributeName;
      v61[0] = v46;
      v47 = +[UIColor secondaryLabelColor];
      v61[1] = v47;
      v48 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
      v49 = [v45 initWithString:@"iCloud Storage Almost Full" attributes:v48];
      [(MailStatusInfo *)v3 setICloudQuotaOfferLargeText:v49];

      break;
    case 10:
      goto LABEL_4;
    case 11:
      [(MailStatusInfo *)v3 setBadgeCount:123];
LABEL_4:
      [(MailStatusInfo *)v3 setState:1];
      v7 = +[NSDate now];
      [(MailStatusInfo *)v3 setLastUpdateTime:v7];

      v8 = [NSAttributedString alloc];
      v58[0] = NSFontAttributeName;
      v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
      v59[0] = v9;
      v58[1] = NSForegroundColorAttributeName;
      v10 = +[UIColor systemRedColor];
      v59[1] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];
      v12 = [v8 initWithString:@"iCloud storage is full" attributes:v11];
      [(MailStatusInfo *)v3 setICloudQuotaOfferText:v12];

      v13 = [NSAttributedString alloc];
      v56[0] = NSFontAttributeName;
      v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
      v56[1] = NSForegroundColorAttributeName;
      v57[0] = v14;
      v15 = +[UIColor systemBlueColor];
      v57[1] = v15;
      v16 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:2];
      v17 = [v13 initWithString:@"Add or manage…" attributes:v16];
      [(MailStatusInfo *)v3 setICloudQuotaOfferLink:v17];

      v18 = [NSAttributedString alloc];
      v54[0] = NSFontAttributeName;
      v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
      v54[1] = NSForegroundColorAttributeName;
      v55[0] = v19;
      v20 = +[UIColor secondaryLabelColor];
      v55[1] = v20;
      v21 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:2];
      v22 = [v18 initWithString:@"iCloud Full" attributes:v21];
      [(MailStatusInfo *)v3 setICloudQuotaOfferInlineText:v22];

      v23 = [NSAttributedString alloc];
      v24 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote, NSFontAttributeName];
      v52[1] = NSForegroundColorAttributeName;
      v53[0] = v24;
      v25 = +[UIColor secondaryLabelColor];
      v53[1] = v25;
      v26 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:2];
      v27 = [v23 initWithString:@"iCloud Storage Full" attributes:v26];
      [(MailStatusInfo *)v3 setICloudQuotaOfferLargeText:v27];

      [(MailStatusInfo *)v3 setICloudQuotaOfferShouldPersist:1];
      break;
    case 12:
      [(MailStatusInfo *)v3 setState:5];
      [(MailStatusInfo *)v3 setFilterCriteria:@"Unread, Flagged"];
      break;
    default:
      break;
  }

  v5 = v3;
LABEL_17:

  return v5;
}

- (int64_t)currentState
{
  v2 = [(MailStatusViewController *)self statusInfo];
  v3 = [v2 state];

  return v3;
}

- (void)updatePrimaryStatusPrefix:(id)a3 secondaryStatusPrefix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MailStatusViewController *)self primaryStatusPrefix];
  if ([v6 isEqualToString:v8])
  {
    v9 = [(MailStatusViewController *)self secondaryStatusPrefix];
    v10 = [v7 isEqualToString:v9];

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = [(MailStatusViewController *)self mailboxStatusScheduler];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100138ED8;
  v12[3] = &unk_10064C6B0;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  [v11 performBlock:v12];

  [(MailStatusViewController *)self _performStatusUpdate];
LABEL_6:
}

- (void)updateStatusWithFilterCriteria:(id)a3
{
  v4 = a3;
  v5 = [(MailStatusViewController *)self filterCriteria];
  v6 = [v5 isEqualToString:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [(MailStatusViewController *)self mailboxStatusScheduler];
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100139034;
    v11 = &unk_10064C660;
    v12 = self;
    v13 = v4;
    [v7 performBlock:&v8];

    [(MailStatusViewController *)self _performStatusUpdate:v8];
  }
}

- (void)signpostPreviousStatus:(id)a3 andCurrentStatus:(id)a4 usingMailboxObjectID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v30 = v8;
  v31 = a5;
  v10 = [v8 state];
  if (v10 == [v9 state])
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = [v8 state] == 1;
    v12 = [v9 state] == 1;
  }

  v13 = +[MailStatusViewController signpostLog];
  v14 = os_signpost_id_make_with_pointer(v13, self);

  v15 = [NSString stringWithFormat:@"<%@: %p>", objc_opt_class(), self];
  v16 = [v31 ef_publicDescription];
  v17 = [v8 ef_publicDescription];
  v18 = v9;
  v19 = [v9 ef_publicDescription];
  v20 = [NSString stringWithFormat:@"mailbox=%@\n    previously= %@\n    currently=  %@", v16, v17, v19];

  if (v11)
  {
    v21 = v30;
    v22 = v18;
    v23 = +[MailStatusViewController signpostLog];
    v24 = v23;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 138543618;
      v33 = v15;
      v34 = 2114;
      v35 = v20;
      v25 = "%{public, signpost.telemetry:string1}@\nBegin: %{public, signpost.telemetry:string2}@ enableTelemetry=YES ";
      v26 = v24;
      v27 = OS_SIGNPOST_INTERVAL_BEGIN;
LABEL_15:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v27, v14, "Mail Status Activity", v25, buf, 0x16u);
    }
  }

  else
  {
    v21 = v30;
    v22 = v18;
    if (v12)
    {
      v28 = +[MailStatusViewController signpostLog];
      v24 = v28;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *buf = 138543618;
        v33 = v15;
        v34 = 2114;
        v35 = v20;
        v25 = "%{public, signpost.telemetry:string1}@\nEnd: %{public, signpost.telemetry:string2}@ enableTelemetry=YES ";
        v26 = v24;
        v27 = OS_SIGNPOST_INTERVAL_END;
        goto LABEL_15;
      }
    }

    else
    {
      v29 = +[MailStatusViewController signpostLog];
      v24 = v29;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        *buf = 138543618;
        v33 = v15;
        v34 = 2114;
        v35 = v20;
        v25 = "%{public, signpost.telemetry:string1}@\nEvent: %{public, signpost.telemetry:string2}@ enableTelemetry=YES ";
        v26 = v24;
        v27 = OS_SIGNPOST_EVENT;
        goto LABEL_15;
      }
    }
  }
}

- (void)currentStatusInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MailStatusViewController *)self mailboxStatusScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001394A8;
  v7[3] = &unk_10064D270;
  v6 = v4;
  v7[4] = self;
  v8 = v6;
  [v5 performBlock:v7];
}

- (int64_t)interfaceOrientation
{
  v2 = [(MailStatusViewController *)self scene];
  v3 = [v2 interfaceOrientation];

  return v3;
}

- (void)updateBarItemTitle:(id)a3 secondaryTitle:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(MailStatusViewController *)self mailStatusBarButtonItem];
  if (v7)
  {
    v8 = [v11 length];

    if (v8)
    {
      v9 = [NSMutableString stringWithString:v11];
      if (-[MailStatusViewController shouldShowSubtitle](self, "shouldShowSubtitle") && [v6 length])
      {
        [v9 appendString:@"\n\n"];
        [v9 appendString:v6];
      }

      if ([v9 length])
      {
        v10 = [(MailStatusViewController *)self mailStatusBarButtonItem];
        [v10 setTitle:v9];
      }
    }
  }
}

- (void)mailStatusBarViewUndoButtonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained mailStatusViewControllerUndoButtonTapped:self];
}

- (void)mailStatusBarViewFilterCriteriaButtonTapped:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained mailStatusViewControllerFilterCriteriaButtonTapped:v4];
}

- (id)statusBarView:(id)a3 preferredPrefixFromStatusInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MailStatusViewController *)self primaryStatusView];

  if (v8 == v6)
  {
    v11 = [v7 primaryStatusPrefix];
  }

  else
  {
    v9 = [(MailStatusViewController *)self secondaryStatusView];

    if (v9 != v6)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v11 = [v7 secondaryStatusPrefix];
  }

  v10 = v11;
LABEL_7:

  return v10;
}

- (void)mailboxStatusUpdatedWithStatusInfo:(id)a3 forMailboxObjectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MailStatusViewController *)self mailboxStatusScheduler];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10013998C;
  v11[3] = &unk_10064C6B0;
  v11[4] = self;
  v9 = v7;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  [v8 performSyncBlock:v11];

  [(MailStatusViewController *)self _performStatusUpdateAndSignpostForMailboxObjectID:v9];
}

- (void)badgeCountUpdated:(id)a3 badgeCount:(int64_t)a4
{
  v6 = [(MailStatusViewController *)self mailboxStatusScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100139BC8;
  v7[3] = &unk_10064DE08;
  v7[4] = self;
  v7[5] = a4;
  [v6 performBlock:v7];

  [(MailStatusViewController *)self _performStatusUpdate];
}

- (BOOL)preferUnreadCountInsteadOfTotalCount:(id)a3
{
  v4 = [(MailStatusViewController *)self delegate];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 shouldShowUnreadCountForMailStatusViewController:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)numberOfPendingMessagesChanged:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_numberOfPendingMessagesLock);
  if (self->_numberOfPendingMessages == a3)
  {

    os_unfair_lock_unlock(&self->_numberOfPendingMessagesLock);
  }

  else
  {
    self->_numberOfPendingMessages = a3;
    os_unfair_lock_unlock(&self->_numberOfPendingMessagesLock);

    [(MailStatusViewController *)self _performStatusUpdate];
  }
}

- (void)hasDelayedMessagesDidChange:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_hasDelayedMessagesLock);
  if (self->_hasDelayedMessages == v3)
  {

    os_unfair_lock_unlock(&self->_hasDelayedMessagesLock);
  }

  else
  {
    self->_hasDelayedMessages = v3;
    os_unfair_lock_unlock(&self->_hasDelayedMessagesLock);

    [(MailStatusViewController *)self _performStatusUpdate];
  }
}

- (id)accountStatusErrorAttributedStringForAccountWithErrors:(id)a3
{
  v4 = a3;
  v23 = NSForegroundColorAttributeName;
  v5 = +[UIColor systemGrayColor];
  v24 = v5;
  v20 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

  if ([v4 count] == 1)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"ACCOUNT_ERROR" value:&stru_100662A88 table:@"Main"];
    v8 = [v4 firstObject];
    v9 = [v8 name];
    v10 = [NSString stringWithFormat:v7, v9];
  }

  else
  {
    v6 = +[NSBundle mainBundle];
    v10 = [v6 localizedStringForKey:@"ACCOUNT_ERRORS" value:&stru_100662A88 table:@"Main"];
  }

  v11 = [[NSMutableAttributedString alloc] initWithString:v10 attributes:v20];
  v21 = NSForegroundColorAttributeName;
  v12 = [(MailStatusViewController *)self statusBarViewTintColor];
  v22 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

  v14 = [NSAttributedString alloc];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"ACCOUNT_ERROR_DETAILS" value:&stru_100662A88 table:@"Main"];
  v17 = [v14 initWithString:v16 attributes:v13];

  v18 = [[NSAttributedString alloc] initWithString:@" "];
  [v11 appendAttributedString:v18];

  [v11 appendAttributedString:v17];

  return v11;
}

- (void)iCloudQuotaOfferUpdated:(id)a3 offer:(id)a4
{
  v5 = a4;
  v8 = v5;
  v9 = self;
  v6 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v6 performBlock:&v7];
}

- (void)mailStatusObserver:(id)a3 didChangeInAppMessage:(id)a4
{
  v5 = a4;
  v8 = v5;
  v9 = self;
  v6 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v6 performBlock:&v7];
}

- (id)actionBlockForAccountError:(id)a3 error:(id)a4 description:(id)a5 failureReason:(id)a6
{
  v9 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  if ([v9 count] == 1)
  {
    v10 = [v31 code];
    v11 = [MFError errorWithDomain:MFMessageErrorDomain code:v10 localizedDescription:v30];
    [v11 setUserInfoObject:v29 forKey:NSLocalizedFailureReasonErrorKey];
    v12 = [v9 firstObject];
    v13 = [v12 objectID];
    v14 = [v13 representedObjectID];

    v15 = [MailAccount accountWithUniqueId:v14];
  }

  else
  {
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10013AE34;
    v35[3] = &unk_1006513A0;
    v36 = v31;
    v16 = [v9 ef_compactMap:v35];
    v17 = objc_alloc_init(MUILocalizationListFormatter);
    v18 = [v17 localizedStringFromList:v16];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"MULTIPLE_ACCOUNT_ERRORS_DESCRIPTION %@" value:&stru_100662A88 table:@"Main"];
    v21 = [NSString localizedStringWithFormat:v20, v18];

    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"MULTIPLE_ACCOUNT_ERRORS" value:&stru_100662A88 table:@"Main"];
    v11 = [MFError errorWithDomain:MFMessageErrorDomain code:1042 localizedDescription:v21 title:v23 userInfo:0];

    v15 = 0;
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10013AF5C;
  v32[3] = &unk_10064C660;
  v33 = v11;
  v34 = v15;
  v24 = v15;
  v25 = v11;
  v26 = objc_retainBlock(v32);
  v27 = objc_retainBlock(v26);

  return v27;
}

- (void)networkStatusChanged:(id)a3
{
  v4 = +[MFNetworkController sharedInstance];
  v5 = [v4 dataStatus];

  v6 = +[MailStatusViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithInteger:v5];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Network status changed: %{public}@", &v8, 0xCu);
  }

  [(MailStatusViewController *)self resetAccountErrors];
  [(MailStatusViewController *)self _performStatusUpdate];
}

- (MailMainScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end