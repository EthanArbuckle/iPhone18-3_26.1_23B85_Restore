@interface MailboxOutlineCell
+ (BOOL)unreadCountIncludesAllMessages;
+ (id)log;
+ (void)updateUnreadCountIncludesAllMessages;
- (BOOL)_containsInbox;
- (BOOL)_isCellEnabledForMailboxes;
- (BOOL)isCellEnabled;
- (CGPoint)destinationPointForAnimation;
- (MailboxOutlineCell)initWithFrame:(CGRect)a3;
- (UICellAccessoryCustomView)businessesAccessoryView;
- (UICellAccessoryCustomView)focusAccessoryView;
- (UIImage)icon;
- (double)_verticalPaddingForExpandableTitle;
- (id)_countQueryLabelForMailboxes:(id)a3;
- (id)_createMailboxesFromUids:(id)a3;
- (id)_scriptingInfo;
- (id)configurationState;
- (void)_cleanupNotifications;
- (void)_invalidateIcon;
- (void)_resetDebouncer;
- (void)_setMailboxes:(id)a3 observeCount:(BOOL)a4 unreadCountIncludesRead:(BOOL)a5;
- (void)_setUnreadCountMailboxes:(id)a3 unreadCountIncludesRead:(BOOL)a4;
- (void)_updateBadgeShowsAllUnreadMessages;
- (void)_updateIndentationLevel;
- (void)_updateMailboxName;
- (void)_updateShouldExcludeBusinessMessages;
- (void)bucketBarConfigurationController:(id)a3 isHidden:(BOOL)a4 forMailboxes:(id)a5;
- (void)bucketBarConfigurationControllerRequiresReload:(id)a3;
- (void)dealloc;
- (void)messageRepository:(id)a3 query:(id)a4 countDidChange:(int64_t)a5;
- (void)prepareForReuse;
- (void)setBadgeCount:(int64_t)a3;
- (void)setEditing:(BOOL)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setFlattenHierarchy:(BOOL)a3;
- (void)setLegacyMailboxes:(id)a3 showUnreadCount:(BOOL)a4 unreadCountIncludesRead:(BOOL)a5;
- (void)setMailboxes:(id)a3 observeCount:(BOOL)a4;
- (void)setShowsDetailDisclosureButton:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setUseDisabledAppearance:(BOOL)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAccessories;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation MailboxOutlineCell

+ (void)updateUnreadCountIncludesAllMessages
{
  v2 = +[UNUserNotificationCenter currentNotificationCenter];
  [v2 getNotificationSettingsForTopicsWithCompletionHandler:&stru_10064FDF0];
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ECA40;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DCFF8 != -1)
  {
    dispatch_once(&qword_1006DCFF8, block);
  }

  v2 = qword_1006DCFF0;

  return v2;
}

+ (BOOL)unreadCountIncludesAllMessages
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ECB60;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD000 != -1)
  {
    dispatch_once(&qword_1006DD000, block);
  }

  return byte_1006D1C38;
}

- (MailboxOutlineCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = MailboxOutlineCell;
  v3 = [(MailboxOutlineCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MailboxOutlineCell *)v3 _resetDebouncer];
    v4->_cellEnabled = 1;
    [(MailboxOutlineCell *)v4 setBadgeCount:0];
    [(MailboxOutlineCell *)v4 setShowFocusIcon:0];
    v5 = +[UIApplication sharedApplication];
    v6 = [v5 bucketBarConfigurationController];
    [v6 addConfigurationObserver:v4];
  }

  return v4;
}

- (void)dealloc
{
  [(EFCancelable *)self->_unreadCountToken cancel];
  [(EFDebouncer *)self->_countDebouncer cancel];
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 bucketBarConfigurationController];
  [v4 removeConfigurationObserver:self];

  [(MailboxOutlineCell *)self _cleanupNotifications];
  v5.receiver = self;
  v5.super_class = MailboxOutlineCell;
  [(MailboxOutlineCell *)&v5 dealloc];
}

- (void)_cleanupNotifications
{
  if (self->_unreadCountSettingNotificationToken)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_unreadCountSettingNotificationToken];

    unreadCountSettingNotificationToken = self->_unreadCountSettingNotificationToken;
    self->_unreadCountSettingNotificationToken = 0;
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MailboxOutlineCell;
  [(MailboxOutlineCell *)&v3 prepareForReuse];
  [(MailboxOutlineCell *)self setExpandable:0];
  [(MailboxOutlineCell *)self setExpanded:0];
  [(MailboxOutlineCell *)self setFlattenHierarchy:0];
  [(MailboxOutlineCell *)self setShowsDetailDisclosureButton:0];
  [(MailboxOutlineCell *)self setCanMoveItem:0];
  [(MailboxOutlineCell *)self setShowsSelectionCheckmarkForEditing:0];
  [(MailboxOutlineCell *)self setHideBadgeCountForEditing:0];
  [(MailboxOutlineCell *)self setShowFocusIcon:0];
  [(MailboxOutlineCell *)self setAccessories:&__NSArray0__struct];
  [(MailboxOutlineCell *)self setSubtitle:0];
  [(MailboxOutlineCell *)self setIcon:0];
  [(MailboxOutlineCell *)self setCreateIconBlock:0];
  [(MailboxOutlineCell *)self setIconTintColor:0];
  [(MailboxOutlineCell *)self setSelectedIconTintColor:0];
  [(MailboxOutlineCell *)self setCellEnabled:1];
  [(MailboxOutlineCell *)self setDisabledForEditing:0];
  [(MailboxOutlineCell *)self setMailboxes:0 observeCount:0];
  [(MailboxOutlineCell *)self setDetailDisclosureActionHandler:0];
}

- (void)_resetDebouncer
{
  countDebouncer = self->_countDebouncer;
  if (countDebouncer)
  {
    [(EFDebouncer *)countDebouncer cancel];
    v5 = self->_countDebouncer;
    self->_countDebouncer = 0;
  }

  if ([(MailboxOutlineCell *)self shouldShowBadgeCountIfNecessary])
  {
    objc_initWeak(&location, self);
    v6 = [EFDebouncer alloc];
    v7 = +[EFScheduler mainThreadScheduler];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000ED054;
    v10[3] = &unk_10064FE38;
    objc_copyWeak(v11, &location);
    v11[1] = a2;
    v8 = [v6 initWithTimeInterval:v7 scheduler:1 startAfter:v10 block:0.2];
    v9 = self->_countDebouncer;
    self->_countDebouncer = v8;

    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }
}

- (void)_updateShouldExcludeBusinessMessages
{
  if (EMBlackPearlIsFeatureEnabled())
  {
    v3 = [(MailboxOutlineCell *)self smartMailbox];
    mailboxes = [(MailboxOutlineCell *)self _containsInbox];
    [(MailboxOutlineCell *)self _updateBadgeShowsAllUnreadMessages];
    v5 = +[UIApplication sharedApplication];
    v6 = [v5 bucketBarConfigurationController];

    if (mailboxes && ![(MailboxOutlineCell *)self badgeShowsAllUnreadMessages])
    {
      v7 = v3 != 0;
      if (v3)
      {
        v9 = v3;
        mailboxes = [NSArray arrayWithObjects:&v9 count:1];
      }

      else
      {
        mailboxes = self->_mailboxes;
      }

      v8 = [v6 isBucketBarHiddenForMailboxes:mailboxes] ^ 1;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    [(MailboxOutlineCell *)self setShouldExcludeBusinessMessages:v8];
    if (v7)
    {
    }
  }
}

- (void)_updateBadgeShowsAllUnreadMessages
{
  if ([(MailboxOutlineCell *)self _containsInbox])
  {
    [(MailboxOutlineCell *)self setBadgeShowsAllUnreadMessages:+[MailboxOutlineCell unreadCountIncludesAllMessages]];
    v3 = [(MailboxOutlineCell *)self unreadCountSettingNotificationToken];

    if (!v3)
    {
      v4 = +[NSNotificationCenter defaultCenter];
      v5 = +[NSOperationQueue mainQueue];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000ED424;
      v7[3] = &unk_10064FE60;
      v7[4] = self;
      v6 = [v4 addObserverForName:@"UnreadCountIncludesAllMessagesChangedNotification" object:0 queue:v5 usingBlock:v7];
      [(MailboxOutlineCell *)self setUnreadCountSettingNotificationToken:v6];
    }
  }

  else
  {

    [(MailboxOutlineCell *)self setBadgeShowsAllUnreadMessages:1];
  }
}

- (BOOL)_containsInbox
{
  v3 = [(MailboxOutlineCell *)self smartMailbox];
  if ([v3 smartMailboxType] == 8 && (objc_msgSend(v3, "isInboxMailbox") & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(NSArray *)self->_mailboxes ef_any:&stru_10064FE80];
  }

  return v4;
}

- (void)setMailboxes:(id)a3 observeCount:(BOOL)a4
{
  v4 = a4;
  legacyMailboxes = self->_legacyMailboxes;
  self->_legacyMailboxes = 0;
  v7 = a3;

  [(MailboxOutlineCell *)self _setMailboxes:v7 observeCount:v4 unreadCountIncludesRead:0];
}

- (void)_setMailboxes:(id)a3 observeCount:(BOOL)a4 unreadCountIncludesRead:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v11 = a3;
  v8 = [v11 copy];
  mailboxes = self->_mailboxes;
  self->_mailboxes = v8;

  [(MailboxOutlineCell *)self _cleanupNotifications];
  [(MailboxOutlineCell *)self _updateShouldExcludeBusinessMessages];
  [(MailboxOutlineCell *)self setShouldShowBadgeCountIfNecessary:[(NSArray *)self->_mailboxes count]!= 0];
  if (v6)
  {
    if ([(NSArray *)self->_mailboxes count])
    {
      v10 = v11;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  [(MailboxOutlineCell *)self _setUnreadCountMailboxes:v10 unreadCountIncludesRead:v5];
}

- (void)setLegacyMailboxes:(id)a3 showUnreadCount:(BOOL)a4 unreadCountIncludesRead:(BOOL)a5
{
  v28 = a5;
  v5 = a4;
  v9 = a3;
  v10 = [v9 isEqualToSet:self->_legacyMailboxes];
  if ((v10 & 1) == 0)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    v12 = MFMailboxUidWasRenamedNotification;
    [v11 removeObserver:self name:MFMailboxUidWasRenamedNotification object:0];

    v13 = [(MailboxOutlineCell *)self unreadCountToken];
    [v13 cancel];

    [(MailboxOutlineCell *)self setUnreadCountToken:0];
    objc_storeStrong(&self->_legacyMailboxes, a3);
    if ([(NSSet *)self->_legacyMailboxes count]== 1)
    {
      v14 = [(NSSet *)self->_legacyMailboxes anyObject];
      v15 = [v14 icon];
      [(MailboxOutlineCell *)self setIcon:v15];

      v16 = +[NSNotificationCenter defaultCenter];
      [v16 addObserver:self selector:"_updateMailboxName" name:v12 object:v14];
    }
  }

  v17 = +[MailboxOutlineCell log];
  v18 = v10 ^ 1;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromSelector(a2);
    v21 = [(MailboxOutlineCell *)self shouldShowBadgeCountIfNecessary];
    v22 = self->_legacyMailboxes != 0;
    *buf = 138544898;
    v30 = v19;
    v31 = 2048;
    v32 = self;
    v33 = 2114;
    v34 = v20;
    v35 = 1024;
    v36 = v21;
    v37 = 1024;
    v38 = v5;
    v39 = 1024;
    v40 = v18;
    v41 = 1024;
    v42 = v22;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@ : %p> %{public}@ - shouldShowBadgeCountIfNecessary:(%{BOOL}d, %{BOOL}d) mailboxesChanged:%{BOOL}d has _legacyMailboxes:%{BOOL}d", buf, 0x38u);
  }

  if ([(MailboxOutlineCell *)self shouldShowBadgeCountIfNecessary]^ v5 | v18)
  {
    [(MailboxOutlineCell *)self setBadgeCount:0];
    [(MailboxOutlineCell *)self setShouldShowBadgeCountIfNecessary:v5];
    if ([(MailboxOutlineCell *)self shouldShowBadgeCountIfNecessary]&& self->_legacyMailboxes)
    {
      v23 = [v9 allObjects];
      v24 = [(MailboxOutlineCell *)self _createMailboxesFromUids:v23];

      if (![v24 count])
      {
        v25 = +[MailboxOutlineCell log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          v26 = +[UIApplication sharedApplication];
          v27 = [v26 mailboxProvider];
          sub_100488468(v27, buf, v25, v26);
        }
      }

      [(MailboxOutlineCell *)self _setMailboxes:v24 observeCount:1 unreadCountIncludesRead:v28];
    }

    else
    {
      [(MailboxOutlineCell *)self _resetDebouncer];
    }
  }

  [(MailboxOutlineCell *)self _updateMailboxName];
}

- (id)_createMailboxesFromUids:(id)a3
{
  v3 = a3;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 mailboxProvider];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000EDB9C;
  v9[3] = &unk_10064FEA8;
  v10 = v5;
  v6 = v5;
  v7 = [v3 ef_compactMap:v9];

  return v7;
}

- (void)_setUnreadCountMailboxes:(id)a3 unreadCountIncludesRead:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = [(MailboxOutlineCell *)self unreadCountToken];
  [v8 cancel];

  [(MailboxOutlineCell *)self setUnreadCountToken:0];
  [(MailboxOutlineCell *)self _resetDebouncer];
  if (v7 && [v7 count])
  {
    v9 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:self->_mailboxes];
    v26 = [NSMutableArray arrayWithObject:v9];

    v10 = [(MailboxOutlineCell *)self shouldExcludeBusinessMessages];
    if (v10)
    {
      v11 = +[EMMessageListItemPredicates predicateForPrimaryMessages];
      [v26 addObject:v11];
    }

    if (!v4)
    {
      v12 = +[EMMessageListItemPredicates predicateForUnreadMessages];
      [v26 addObject:v12];
    }

    v24 = [NSCompoundPredicate ef_andCompoundPredicateWithSubpredicates:v26];
    v25 = [(MailboxOutlineCell *)self _countQueryLabelForMailboxes:v7];
    v13 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v24 sortDescriptors:&__NSArray0__struct queryOptions:0 label:v25];
    if (v10)
    {
      v14 = [v7 ef_filter:&stru_10064FEC8];
      v15 = [v14 ef_mapSelector:"objectID"];
    }

    else
    {
      v15 = [v7 ef_mapSelector:"objectID"];
    }

    if ([v15 count])
    {
      v16 = [EMMailboxScope mailboxScopeForMailboxObjectIDs:v15 forExclusion:0];
    }

    else
    {
      v16 = 0;
    }

    v17 = +[MailboxOutlineCell log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromSelector(a2);
      *buf = 138544642;
      v28 = v18;
      v29 = 2048;
      v30 = self;
      v31 = 2114;
      v32 = v19;
      v33 = 2114;
      v34 = v13;
      v35 = 2114;
      v36 = v25;
      v37 = 1024;
      v38 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@ : %p> %{public}@ - start counting query with query:%{public}@ label:%{public}@ shouldExcludeBusinessMessages:%{BOOL}d", buf, 0x3Au);
    }

    [(MailboxOutlineCell *)self setCurrentUnreadCountQueryIncludesRead:v4];
    v20 = +[UIApplication sharedApplication];
    v21 = [v20 daemonInterface];
    v22 = [v21 messageRepository];
    v23 = [v22 startCountingQuery:v13 includingServerCountsForMailboxScope:v16 withObserver:self];
    [(MailboxOutlineCell *)self setUnreadCountToken:v23];
  }
}

- (id)_countQueryLabelForMailboxes:(id)a3
{
  v3 = a3;
  v4 = [v3 firstObject];
  v5 = [v4 name];
  if (([v4 descriptionUsesRealName] & 1) == 0)
  {
    v6 = [EFPrivacy fullyOrPartiallyRedactedStringForString:v5];

    v7 = [[NSString alloc] initWithFormat:@"Generic mailbox %@", v6];
    v5 = v7;
  }

  if ([v3 count] < 2)
  {
    v8 = &stru_100662A88;
  }

  else
  {
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" mailboxes:%lu", [v3 count]);
  }

  v9 = [NSString alloc];
  v10 = [v4 accountIdentifier];
  v11 = [v9 initWithFormat:@"%@ (accountID: %@)%@", v5, v10, v8];

  return v11;
}

- (void)setBadgeCount:(int64_t)a3
{
  if (self->_badgeCount != a3)
  {
    self->_badgeCount = a3;
    v6 = +[MailboxOutlineCell log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromSelector(a2);
      *buf = 138544130;
      v13 = v7;
      v14 = 2048;
      v15 = self;
      v16 = 2114;
      v17 = v8;
      v18 = 2048;
      v19 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@ : %p> %{public}@ - count:%li", buf, 0x2Au);
    }

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"UNREAD_COUNT_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
    v11 = [NSString localizedStringWithFormat:v10, a3];
    [(MailboxOutlineCell *)self setAccessibilityValue:v11];

    [(MailboxOutlineCell *)self updateAccessories];
  }
}

- (void)messageRepository:(id)a3 query:(id)a4 countDidChange:(int64_t)a5
{
  v5 = [EFScheduler mainThreadScheduler:a3];
  [v5 performBlock:&v6];
}

- (void)setEditing:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = MailboxOutlineCell;
  [(MailboxOutlineCell *)&v7 setEditing:?];
  if (v3)
  {
    if (self->_disabledForEditing)
    {
      v5 = 0;
    }

    else
    {
      v5 = self->_cellEnabled || [(MailboxOutlineCell *)self _isCellEnabledForMailboxes];
    }

    [(MailboxOutlineCell *)self setUserInteractionEnabled:v5];
    v6 = v5 ^ 1;
  }

  else
  {
    [(MailboxOutlineCell *)self setUserInteractionEnabled:1];
    v6 = [(MailboxOutlineCell *)self isCellEnabled]^ 1;
  }

  [(MailboxOutlineCell *)self setUseDisabledAppearance:v6];
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, a3);
    [(MailboxOutlineCell *)self setAccessibilityLabel:v5];
  }
}

- (void)setFlattenHierarchy:(BOOL)a3
{
  if (self->_flattenHierarchy != a3)
  {
    self->_flattenHierarchy = a3;
    if (a3)
    {
      [(MailboxOutlineCell *)self setIndentationLevel:0];
    }
  }
}

- (BOOL)_isCellEnabledForMailboxes
{
  v3 = [(NSSet *)self->_legacyMailboxes anyObject];
  if (v3)
  {
    v4 = [(NSSet *)self->_legacyMailboxes anyObject];
    v5 = [v4 isStore];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)isCellEnabled
{
  if (self->_cellEnabled)
  {
    return [(MailboxOutlineCell *)self _isCellEnabledForMailboxes];
  }

  else
  {
    return 0;
  }
}

- (void)setExpanded:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MailboxOutlineCell;
  [(MailboxOutlineCell *)&v6 setExpanded:a3];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000EE910;
  v5[3] = &unk_10064C7E8;
  v5[4] = self;
  v4 = +[EFScheduler mainThreadScheduler];
  [v4 performBlock:v5];
}

- (void)setUseDisabledAppearance:(BOOL)a3
{
  useDisabledAppearance = self->_useDisabledAppearance;
  self->_useDisabledAppearance = a3;
  if (useDisabledAppearance != a3)
  {
    [(MailboxOutlineCell *)self setNeedsUpdateConfiguration];
  }
}

- (UIImage)icon
{
  if (self->_icon)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(MailboxOutlineCell *)self createIconBlock];
    v3 = v4;
    if (v4)
    {
      v5 = (*(v4 + 16))(v4);
      icon = self->_icon;
      self->_icon = v5;
    }
  }

  v7 = self->_icon;
  v8 = v7;

  return v7;
}

- (void)_invalidateIcon
{
  icon = self->_icon;
  self->_icon = 0;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MailboxOutlineCell;
  [(MailboxOutlineCell *)&v5 traitCollectionDidChange:v4];
  [(MailboxOutlineCell *)self _invalidateIcon];
}

- (void)setShowsDetailDisclosureButton:(BOOL)a3
{
  if (self->_showsDetailDisclosureButton != a3)
  {
    self->_showsDetailDisclosureButton = a3;
  }
}

- (id)configurationState
{
  v5.receiver = self;
  v5.super_class = MailboxOutlineCell;
  v3 = [(MailboxOutlineCell *)&v5 configurationState];
  [v3 setDisabled:{-[MailboxOutlineCell useDisabledAppearance](self, "useDisabledAppearance")}];

  return v3;
}

- (void)updateConfigurationUsingState:(id)a3
{
  v31 = a3;
  v4 = [(MailboxOutlineCell *)self traitCollection];
  v5 = [v4 mf_useSplitViewStyling];

  if ([(MailboxOutlineCell *)self disclosureType]== 1)
  {
    v6 = [(MailboxOutlineCell *)self expanded];
    v7 = MSAccessibilityIdentifierMailboxListAccountCell;
    v8 = @".isCollapsed";
    if (v6)
    {
      v8 = @".isExpanded";
    }
  }

  else
  {
    v9 = [(MailboxOutlineCell *)self expanded];
    v7 = MSAccessibilityIdentifierMailboxListCell;
    v8 = @".isCollapsed";
    if (v9)
    {
      v8 = @".isExpanded";
    }
  }

  v10 = [NSString stringWithFormat:v7, v8];
  [(MailboxOutlineCell *)self setAccessibilityIdentifier:v10];

  if ([(MailboxOutlineCell *)self isExpandable])
  {
    if (v5)
    {
      +[UIListContentConfiguration sidebarHeaderConfiguration];
    }

    else
    {
      +[UIListContentConfiguration prominentInsetGroupedHeaderConfiguration];
    }
    v12 = ;
    v14 = [(MailboxOutlineCell *)self title];
    [v12 setText:v14];

    v13 = +[UIBackgroundConfiguration listSidebarHeaderConfiguration];
    sub_1000EEA74(self, v12);
    goto LABEL_25;
  }

  if (v5)
  {
    v11 = +[UIListContentConfiguration accompaniedSidebarSubtitleCellConfiguration];
    +[UIBackgroundConfiguration listAccompaniedSidebarCellConfiguration];
    v13 = v12 = v11;
  }

  else
  {
    v12 = +[UIListContentConfiguration subtitleCellConfiguration];
    v13 = +[UIBackgroundConfiguration listGroupedCellConfiguration];
    if ([v31 isEditing])
    {
      v15 = +[UIColor tableCellGroupedBackgroundColor];
      [v13 setBackgroundColor:v15];
    }

    v16 = +[UIColor secondaryLabelColor];
    v17 = [v12 secondaryTextProperties];
    [v17 setColor:v16];
  }

  sub_1000EEA74(self, v12);
  v18 = [(MailboxOutlineCell *)self title];
  [v12 setText:v18];

  if ([(MailboxOutlineCell *)self useTintColor])
  {
    v19 = [(MailboxOutlineCell *)self tintColor];
    v20 = [v12 textProperties];
    [v20 setColor:v19];
  }

  v21 = [(MailboxOutlineCell *)self subtitle];
  [v12 setSecondaryText:v21];

  v22 = [v31 isSelected];
  v23 = [(MailboxOutlineCell *)self icon];
  [v12 setImage:v23];

  v24 = [(MailboxOutlineCell *)self selectedIconTintColor];
  LODWORD(v23) = (v24 != 0) & v22;

  if (v23 == 1)
  {
    v25 = [(MailboxOutlineCell *)self selectedIconTintColor];
    v26 = [v12 imageProperties];
    [v26 setTintColor:v25];
LABEL_23:

    goto LABEL_24;
  }

  v27 = [(MailboxOutlineCell *)self iconTintColor];
  v28 = (v27 == 0) | v22;

  if ((v28 & 1) == 0)
  {
    v25 = [(MailboxOutlineCell *)self iconTintColor];
    v26 = [v12 imageProperties];
    [v26 setTintColor:v25];
    goto LABEL_23;
  }

LABEL_24:
  v29 = [v12 imageProperties];
  [v29 reservedLayoutSize];

  v30 = [v12 imageProperties];
  [v30 setReservedLayoutSize:{_UIContentViewDefaultSymbolImageReservedLayoutSize, _UIContentViewDefaultSymbolImageReservedLayoutSize}];

LABEL_25:
  [(MailboxOutlineCell *)self setContentConfiguration:v12];
  [(MailboxOutlineCell *)self setBackgroundConfiguration:v13];
  [(MailboxOutlineCell *)self updateAccessories];
  [(MailboxOutlineCell *)self _updateIndentationLevel];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = MailboxOutlineCell;
  [(MailboxOutlineCell *)&v3 tintColorDidChange];
  if ([(MailboxOutlineCell *)self useTintColor])
  {
    [(MailboxOutlineCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)updateAccessories
{
  v3 = +[NSMutableArray array];
  if ([(MailboxOutlineCell *)self showsSelectionCheckmarkForEditing])
  {
    v4 = objc_alloc_init(UICellAccessoryMultiselect);
    v5 = [(MailboxOutlineCell *)self multiselectCheckmarkColor];
    [v4 setTintColor:v5];

    [v4 setDisplayedState:1];
    [v3 addObject:v4];
  }

  if ([(MailboxOutlineCell *)self showsDetailDisclosureButton])
  {
    objc_initWeak(&location, self);
    v6 = objc_alloc_init(UICellAccessoryDetail);
    [v6 setDisplayedState:2];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_1000EF5D0;
    v20 = &unk_10064C838;
    objc_copyWeak(&v21, &location);
    [v6 setActionHandler:&v17];
    [v3 addObject:{v6, v17, v18, v19, v20}];
    objc_destroyWeak(&v21);

    objc_destroyWeak(&location);
  }

  if ([(MailboxOutlineCell *)self showFocusIcon])
  {
    v7 = [(MailboxOutlineCell *)self focusAccessoryView];
    [v3 addObject:v7];
LABEL_7:

    goto LABEL_13;
  }

  if ([(MailboxOutlineCell *)self shouldShowBadgeCountIfNecessary]&& [(MailboxOutlineCell *)self badgeCount]>= 1 && (![(MailboxOutlineCell *)self isExpandable]|| [(MailboxOutlineCell *)self isExpandable]&& ([(MailboxOutlineCell *)self expanded]& 1) == 0))
  {
    v13 = [(MailboxOutlineCell *)self hideBadgeCountForEditing];
    v14 = [UICellAccessoryLabel alloc];
    v15 = [NSNumberFormatter ef_formatUnsignedInteger:[(MailboxOutlineCell *)self badgeCount] withGrouping:0];
    v7 = [v14 initWithText:v15];

    if (v13)
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    [v7 setDisplayedState:v16];
    [v3 addObject:v7];
    goto LABEL_7;
  }

LABEL_13:
  v8 = [(MailboxOutlineCell *)self traitCollection];
  v9 = [v8 mf_useSplitViewStyling];

  if ((v9 & 1) == 0 && ![(MailboxOutlineCell *)self disclosureType])
  {
    v10 = objc_alloc_init(UICellAccessoryDisclosureIndicator);
    [v10 setDisplayedState:2];
    [v3 addObject:v10];
    goto LABEL_20;
  }

  if ([(MailboxOutlineCell *)self disclosureType]== 1)
  {
    v10 = objc_alloc_init(UICellAccessoryOutlineDisclosure);
    [v10 setStyle:1];
    [v10 setDisplayedState:0];
    [v3 addObject:v10];
LABEL_20:

    goto LABEL_21;
  }

  if ([(MailboxOutlineCell *)self disclosureType]== 2)
  {
    v10 = objc_alloc_init(UICellAccessoryOutlineDisclosure);
    [v10 setStyle:2];
    [v10 setDisplayedState:0];
    [v3 addObject:v10];
    goto LABEL_20;
  }

LABEL_21:
  if ([(MailboxOutlineCell *)self canMoveItem]&& ([(MailboxOutlineCell *)self expanded]& 1) == 0)
  {
    v11 = objc_alloc_init(UICellAccessoryReorder);
    v12 = +[UIColor tertiaryLabelColor];
    [v11 setTintColor:v12];

    [v11 setDisplayedState:1];
    [v3 addObject:v11];
  }

  [(MailboxOutlineCell *)self setAccessories:v3];
}

- (UICellAccessoryCustomView)focusAccessoryView
{
  focusAccessoryView = self->_focusAccessoryView;
  if (!focusAccessoryView)
  {
    v4 = [UIImageView alloc];
    v5 = [UIImage systemImageNamed:MFImageGlyphFocusCircle];
    v6 = [v4 initWithImage:v5];

    v7 = +[UIColor systemGrayColor];
    [v6 setTintColor:v7];

    [v6 setContentMode:4];
    v8 = [[UICellAccessoryCustomView alloc] initWithCustomView:v6 placement:1];
    v9 = self->_focusAccessoryView;
    self->_focusAccessoryView = v8;

    [(UICellAccessoryCustomView *)self->_focusAccessoryView setDisplayedState:2];
    focusAccessoryView = self->_focusAccessoryView;
  }

  return focusAccessoryView;
}

- (UICellAccessoryCustomView)businessesAccessoryView
{
  businessesAccessoryView = self->_businessesAccessoryView;
  if (!businessesAccessoryView)
  {
    v4 = [UIImageView alloc];
    v5 = [UIImage systemImageNamed:MFImageGlyphStatusIndicatorUnread];
    v6 = [v4 initWithImage:v5];

    v7 = +[UIColor systemBlueColor];
    [v6 setTintColor:v7];

    [v6 setContentMode:4];
    v8 = [[UICellAccessoryCustomView alloc] initWithCustomView:v6 placement:1];
    v9 = self->_businessesAccessoryView;
    self->_businessesAccessoryView = v8;

    businessesAccessoryView = self->_businessesAccessoryView;
  }

  return businessesAccessoryView;
}

- (CGPoint)destinationPointForAnimation
{
  v3 = [(MailboxOutlineCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 textLabel];
  [v12 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [(MailboxOutlineCell *)self traitCollection];
  v22 = [v21 horizontalSizeClass];

  v34.origin.x = v5;
  v34.origin.y = v7;
  v34.size.width = v9;
  v34.size.height = v11;
  MidY = CGRectGetMidY(v34);
  v35.origin.x = v14;
  v35.origin.y = v16;
  v35.size.width = v18;
  v35.size.height = v20;
  MidX = CGRectGetMidX(v35);
  v25 = 3.0;
  if (v22 == 1)
  {
    v25 = 2.0;
  }

  v26 = v9 / v25;
  if (v26 >= MidX)
  {
    MidX = v26;
  }

  [(MailboxOutlineCell *)self convertPoint:v3 fromView:MidX, MidY];
  v28 = v27;
  v30 = v29;

  v31 = v28;
  v32 = v30;
  result.y = v32;
  result.x = v31;
  return result;
}

- (double)_verticalPaddingForExpandableTitle
{
  v2 = +[MFFontMetricCache sharedFontMetricCache];
  [v2 cachedFloat:&stru_10064FF08 forKey:@"MailboxOutlineCell.verticalPaddingForExpandableTitle"];
  v4 = v3;

  return v4;
}

- (void)_updateMailboxName
{
  if ([(NSSet *)self->_legacyMailboxes count]== 1)
  {
    v5 = [(NSSet *)self->_legacyMailboxes anyObject];
    v3 = +[MailChangeManager sharedChangeManager];
    v4 = [v3 displayNameUsingSpecialNamesForMailbox:v5];

    [(MailboxOutlineCell *)self setTitle:v4];
    [(MailboxOutlineCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_updateIndentationLevel
{
  if ([(NSSet *)self->_legacyMailboxes count]== 1)
  {
    v6 = [(NSSet *)self->_legacyMailboxes anyObject];
    if ([(MailboxOutlineCell *)self flattenHierarchy])
    {
      v3 = 0;
    }

    else
    {
      v4 = +[MailChangeManager sharedChangeManager];
      v5 = [v4 levelForMailbox:v6];

      v3 = v5 & ~(v5 >> 31);
    }

    [(MailboxOutlineCell *)self setIndentationLevel:v3];
  }
}

- (id)_scriptingInfo
{
  v8.receiver = self;
  v8.super_class = MailboxOutlineCell;
  v3 = [(MailboxOutlineCell *)&v8 _scriptingInfo];
  if ([(NSSet *)self->_legacyMailboxes count]== 1)
  {
    v4 = +[MailChangeManager sharedChangeManager];
    v5 = [(NSSet *)self->_legacyMailboxes anyObject];
    v6 = [v4 displayNameUsingSpecialNamesForMailbox:v5];

    [v3 setValue:v6 forKey:@"ID"];
  }

  return v3;
}

- (void)bucketBarConfigurationController:(id)a3 isHidden:(BOOL)a4 forMailboxes:(id)a5
{
  v8 = self;
  v5 = a5;
  v9 = v5;
  v6 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v6 performBlock:&v7];
}

- (void)bucketBarConfigurationControllerRequiresReload:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F00CC;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performBlock:v4];
}

@end