@interface MailboxOutlineCell
+ (BOOL)unreadCountIncludesAllMessages;
+ (id)log;
+ (void)updateUnreadCountIncludesAllMessages;
- (BOOL)_containsInbox;
- (BOOL)_isCellEnabledForMailboxes;
- (BOOL)isCellEnabled;
- (CGPoint)destinationPointForAnimation;
- (MailboxOutlineCell)initWithFrame:(CGRect)frame;
- (UICellAccessoryCustomView)businessesAccessoryView;
- (UICellAccessoryCustomView)focusAccessoryView;
- (UIImage)icon;
- (double)_verticalPaddingForExpandableTitle;
- (id)_countQueryLabelForMailboxes:(id)mailboxes;
- (id)_createMailboxesFromUids:(id)uids;
- (id)_scriptingInfo;
- (id)configurationState;
- (void)_cleanupNotifications;
- (void)_invalidateIcon;
- (void)_resetDebouncer;
- (void)_setMailboxes:(id)mailboxes observeCount:(BOOL)count unreadCountIncludesRead:(BOOL)read;
- (void)_setUnreadCountMailboxes:(id)mailboxes unreadCountIncludesRead:(BOOL)read;
- (void)_updateBadgeShowsAllUnreadMessages;
- (void)_updateIndentationLevel;
- (void)_updateMailboxName;
- (void)_updateShouldExcludeBusinessMessages;
- (void)bucketBarConfigurationController:(id)controller isHidden:(BOOL)hidden forMailboxes:(id)mailboxes;
- (void)bucketBarConfigurationControllerRequiresReload:(id)reload;
- (void)dealloc;
- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change;
- (void)prepareForReuse;
- (void)setBadgeCount:(int64_t)count;
- (void)setEditing:(BOOL)editing;
- (void)setExpanded:(BOOL)expanded;
- (void)setFlattenHierarchy:(BOOL)hierarchy;
- (void)setLegacyMailboxes:(id)mailboxes showUnreadCount:(BOOL)count unreadCountIncludesRead:(BOOL)read;
- (void)setMailboxes:(id)mailboxes observeCount:(BOOL)count;
- (void)setShowsDetailDisclosureButton:(BOOL)button;
- (void)setTitle:(id)title;
- (void)setUseDisabledAppearance:(BOOL)appearance;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAccessories;
- (void)updateConfigurationUsingState:(id)state;
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
  block[4] = self;
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
  block[4] = self;
  if (qword_1006DD000 != -1)
  {
    dispatch_once(&qword_1006DD000, block);
  }

  return byte_1006D1C38;
}

- (MailboxOutlineCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = MailboxOutlineCell;
  v3 = [(MailboxOutlineCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MailboxOutlineCell *)v3 _resetDebouncer];
    v4->_cellEnabled = 1;
    [(MailboxOutlineCell *)v4 setBadgeCount:0];
    [(MailboxOutlineCell *)v4 setShowFocusIcon:0];
    v5 = +[UIApplication sharedApplication];
    bucketBarConfigurationController = [v5 bucketBarConfigurationController];
    [bucketBarConfigurationController addConfigurationObserver:v4];
  }

  return v4;
}

- (void)dealloc
{
  [(EFCancelable *)self->_unreadCountToken cancel];
  [(EFDebouncer *)self->_countDebouncer cancel];
  v3 = +[UIApplication sharedApplication];
  bucketBarConfigurationController = [v3 bucketBarConfigurationController];
  [bucketBarConfigurationController removeConfigurationObserver:self];

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
    smartMailbox = [(MailboxOutlineCell *)self smartMailbox];
    mailboxes = [(MailboxOutlineCell *)self _containsInbox];
    [(MailboxOutlineCell *)self _updateBadgeShowsAllUnreadMessages];
    v5 = +[UIApplication sharedApplication];
    bucketBarConfigurationController = [v5 bucketBarConfigurationController];

    if (mailboxes && ![(MailboxOutlineCell *)self badgeShowsAllUnreadMessages])
    {
      v7 = smartMailbox != 0;
      if (smartMailbox)
      {
        v9 = smartMailbox;
        mailboxes = [NSArray arrayWithObjects:&v9 count:1];
      }

      else
      {
        mailboxes = self->_mailboxes;
      }

      v8 = [bucketBarConfigurationController isBucketBarHiddenForMailboxes:mailboxes] ^ 1;
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
    unreadCountSettingNotificationToken = [(MailboxOutlineCell *)self unreadCountSettingNotificationToken];

    if (!unreadCountSettingNotificationToken)
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
  smartMailbox = [(MailboxOutlineCell *)self smartMailbox];
  if ([smartMailbox smartMailboxType] == 8 && (objc_msgSend(smartMailbox, "isInboxMailbox") & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(NSArray *)self->_mailboxes ef_any:&stru_10064FE80];
  }

  return v4;
}

- (void)setMailboxes:(id)mailboxes observeCount:(BOOL)count
{
  countCopy = count;
  legacyMailboxes = self->_legacyMailboxes;
  self->_legacyMailboxes = 0;
  mailboxesCopy = mailboxes;

  [(MailboxOutlineCell *)self _setMailboxes:mailboxesCopy observeCount:countCopy unreadCountIncludesRead:0];
}

- (void)_setMailboxes:(id)mailboxes observeCount:(BOOL)count unreadCountIncludesRead:(BOOL)read
{
  readCopy = read;
  countCopy = count;
  mailboxesCopy = mailboxes;
  v8 = [mailboxesCopy copy];
  mailboxes = self->_mailboxes;
  self->_mailboxes = v8;

  [(MailboxOutlineCell *)self _cleanupNotifications];
  [(MailboxOutlineCell *)self _updateShouldExcludeBusinessMessages];
  [(MailboxOutlineCell *)self setShouldShowBadgeCountIfNecessary:[(NSArray *)self->_mailboxes count]!= 0];
  if (countCopy)
  {
    if ([(NSArray *)self->_mailboxes count])
    {
      v10 = mailboxesCopy;
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

  [(MailboxOutlineCell *)self _setUnreadCountMailboxes:v10 unreadCountIncludesRead:readCopy];
}

- (void)setLegacyMailboxes:(id)mailboxes showUnreadCount:(BOOL)count unreadCountIncludesRead:(BOOL)read
{
  readCopy = read;
  countCopy = count;
  mailboxesCopy = mailboxes;
  v10 = [mailboxesCopy isEqualToSet:self->_legacyMailboxes];
  if ((v10 & 1) == 0)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    v12 = MFMailboxUidWasRenamedNotification;
    [v11 removeObserver:self name:MFMailboxUidWasRenamedNotification object:0];

    unreadCountToken = [(MailboxOutlineCell *)self unreadCountToken];
    [unreadCountToken cancel];

    [(MailboxOutlineCell *)self setUnreadCountToken:0];
    objc_storeStrong(&self->_legacyMailboxes, mailboxes);
    if ([(NSSet *)self->_legacyMailboxes count]== 1)
    {
      anyObject = [(NSSet *)self->_legacyMailboxes anyObject];
      icon = [anyObject icon];
      [(MailboxOutlineCell *)self setIcon:icon];

      v16 = +[NSNotificationCenter defaultCenter];
      [v16 addObserver:self selector:"_updateMailboxName" name:v12 object:anyObject];
    }
  }

  v17 = +[MailboxOutlineCell log];
  v18 = v10 ^ 1;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromSelector(a2);
    shouldShowBadgeCountIfNecessary = [(MailboxOutlineCell *)self shouldShowBadgeCountIfNecessary];
    v22 = self->_legacyMailboxes != 0;
    *buf = 138544898;
    v30 = v19;
    v31 = 2048;
    selfCopy = self;
    v33 = 2114;
    v34 = v20;
    v35 = 1024;
    v36 = shouldShowBadgeCountIfNecessary;
    v37 = 1024;
    v38 = countCopy;
    v39 = 1024;
    v40 = v18;
    v41 = 1024;
    v42 = v22;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@ : %p> %{public}@ - shouldShowBadgeCountIfNecessary:(%{BOOL}d, %{BOOL}d) mailboxesChanged:%{BOOL}d has _legacyMailboxes:%{BOOL}d", buf, 0x38u);
  }

  if ([(MailboxOutlineCell *)self shouldShowBadgeCountIfNecessary]^ countCopy | v18)
  {
    [(MailboxOutlineCell *)self setBadgeCount:0];
    [(MailboxOutlineCell *)self setShouldShowBadgeCountIfNecessary:countCopy];
    if ([(MailboxOutlineCell *)self shouldShowBadgeCountIfNecessary]&& self->_legacyMailboxes)
    {
      allObjects = [mailboxesCopy allObjects];
      v24 = [(MailboxOutlineCell *)self _createMailboxesFromUids:allObjects];

      if (![v24 count])
      {
        v25 = +[MailboxOutlineCell log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          v26 = +[UIApplication sharedApplication];
          mailboxProvider = [v26 mailboxProvider];
          sub_100488468(mailboxProvider, buf, v25, v26);
        }
      }

      [(MailboxOutlineCell *)self _setMailboxes:v24 observeCount:1 unreadCountIncludesRead:readCopy];
    }

    else
    {
      [(MailboxOutlineCell *)self _resetDebouncer];
    }
  }

  [(MailboxOutlineCell *)self _updateMailboxName];
}

- (id)_createMailboxesFromUids:(id)uids
{
  uidsCopy = uids;
  v4 = +[UIApplication sharedApplication];
  mailboxProvider = [v4 mailboxProvider];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000EDB9C;
  v9[3] = &unk_10064FEA8;
  v10 = mailboxProvider;
  v6 = mailboxProvider;
  v7 = [uidsCopy ef_compactMap:v9];

  return v7;
}

- (void)_setUnreadCountMailboxes:(id)mailboxes unreadCountIncludesRead:(BOOL)read
{
  readCopy = read;
  mailboxesCopy = mailboxes;
  unreadCountToken = [(MailboxOutlineCell *)self unreadCountToken];
  [unreadCountToken cancel];

  [(MailboxOutlineCell *)self setUnreadCountToken:0];
  [(MailboxOutlineCell *)self _resetDebouncer];
  if (mailboxesCopy && [mailboxesCopy count])
  {
    v9 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:self->_mailboxes];
    v26 = [NSMutableArray arrayWithObject:v9];

    shouldExcludeBusinessMessages = [(MailboxOutlineCell *)self shouldExcludeBusinessMessages];
    if (shouldExcludeBusinessMessages)
    {
      v11 = +[EMMessageListItemPredicates predicateForPrimaryMessages];
      [v26 addObject:v11];
    }

    if (!readCopy)
    {
      v12 = +[EMMessageListItemPredicates predicateForUnreadMessages];
      [v26 addObject:v12];
    }

    v24 = [NSCompoundPredicate ef_andCompoundPredicateWithSubpredicates:v26];
    v25 = [(MailboxOutlineCell *)self _countQueryLabelForMailboxes:mailboxesCopy];
    v13 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v24 sortDescriptors:&__NSArray0__struct queryOptions:0 label:v25];
    if (shouldExcludeBusinessMessages)
    {
      v14 = [mailboxesCopy ef_filter:&stru_10064FEC8];
      v15 = [v14 ef_mapSelector:"objectID"];
    }

    else
    {
      v15 = [mailboxesCopy ef_mapSelector:"objectID"];
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
      selfCopy = self;
      v31 = 2114;
      v32 = v19;
      v33 = 2114;
      v34 = v13;
      v35 = 2114;
      v36 = v25;
      v37 = 1024;
      v38 = shouldExcludeBusinessMessages;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@ : %p> %{public}@ - start counting query with query:%{public}@ label:%{public}@ shouldExcludeBusinessMessages:%{BOOL}d", buf, 0x3Au);
    }

    [(MailboxOutlineCell *)self setCurrentUnreadCountQueryIncludesRead:readCopy];
    v20 = +[UIApplication sharedApplication];
    daemonInterface = [v20 daemonInterface];
    messageRepository = [daemonInterface messageRepository];
    v23 = [messageRepository startCountingQuery:v13 includingServerCountsForMailboxScope:v16 withObserver:self];
    [(MailboxOutlineCell *)self setUnreadCountToken:v23];
  }
}

- (id)_countQueryLabelForMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  firstObject = [mailboxesCopy firstObject];
  name = [firstObject name];
  if (([firstObject descriptionUsesRealName] & 1) == 0)
  {
    v6 = [EFPrivacy fullyOrPartiallyRedactedStringForString:name];

    v7 = [[NSString alloc] initWithFormat:@"Generic mailbox %@", v6];
    name = v7;
  }

  if ([mailboxesCopy count] < 2)
  {
    v8 = &stru_100662A88;
  }

  else
  {
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" mailboxes:%lu", [mailboxesCopy count]);
  }

  v9 = [NSString alloc];
  accountIdentifier = [firstObject accountIdentifier];
  v11 = [v9 initWithFormat:@"%@ (accountID: %@)%@", name, accountIdentifier, v8];

  return v11;
}

- (void)setBadgeCount:(int64_t)count
{
  if (self->_badgeCount != count)
  {
    self->_badgeCount = count;
    v6 = +[MailboxOutlineCell log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromSelector(a2);
      *buf = 138544130;
      v13 = v7;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = v8;
      v18 = 2048;
      countCopy = count;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@ : %p> %{public}@ - count:%li", buf, 0x2Au);
    }

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"UNREAD_COUNT_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
    v11 = [NSString localizedStringWithFormat:v10, count];
    [(MailboxOutlineCell *)self setAccessibilityValue:v11];

    [(MailboxOutlineCell *)self updateAccessories];
  }
}

- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change
{
  v5 = [EFScheduler mainThreadScheduler:repository];
  [v5 performBlock:&v6];
}

- (void)setEditing:(BOOL)editing
{
  editingCopy = editing;
  v7.receiver = self;
  v7.super_class = MailboxOutlineCell;
  [(MailboxOutlineCell *)&v7 setEditing:?];
  if (editingCopy)
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, title);
    [(MailboxOutlineCell *)self setAccessibilityLabel:titleCopy];
  }
}

- (void)setFlattenHierarchy:(BOOL)hierarchy
{
  if (self->_flattenHierarchy != hierarchy)
  {
    self->_flattenHierarchy = hierarchy;
    if (hierarchy)
    {
      [(MailboxOutlineCell *)self setIndentationLevel:0];
    }
  }
}

- (BOOL)_isCellEnabledForMailboxes
{
  anyObject = [(NSSet *)self->_legacyMailboxes anyObject];
  if (anyObject)
  {
    anyObject2 = [(NSSet *)self->_legacyMailboxes anyObject];
    isStore = [anyObject2 isStore];
  }

  else
  {
    isStore = 1;
  }

  return isStore;
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

- (void)setExpanded:(BOOL)expanded
{
  v6.receiver = self;
  v6.super_class = MailboxOutlineCell;
  [(MailboxOutlineCell *)&v6 setExpanded:expanded];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000EE910;
  v5[3] = &unk_10064C7E8;
  v5[4] = self;
  v4 = +[EFScheduler mainThreadScheduler];
  [v4 performBlock:v5];
}

- (void)setUseDisabledAppearance:(BOOL)appearance
{
  useDisabledAppearance = self->_useDisabledAppearance;
  self->_useDisabledAppearance = appearance;
  if (useDisabledAppearance != appearance)
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
    createIconBlock = [(MailboxOutlineCell *)self createIconBlock];
    v3 = createIconBlock;
    if (createIconBlock)
    {
      v5 = (*(createIconBlock + 16))(createIconBlock);
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = MailboxOutlineCell;
  [(MailboxOutlineCell *)&v5 traitCollectionDidChange:changeCopy];
  [(MailboxOutlineCell *)self _invalidateIcon];
}

- (void)setShowsDetailDisclosureButton:(BOOL)button
{
  if (self->_showsDetailDisclosureButton != button)
  {
    self->_showsDetailDisclosureButton = button;
  }
}

- (id)configurationState
{
  v5.receiver = self;
  v5.super_class = MailboxOutlineCell;
  configurationState = [(MailboxOutlineCell *)&v5 configurationState];
  [configurationState setDisabled:{-[MailboxOutlineCell useDisabledAppearance](self, "useDisabledAppearance")}];

  return configurationState;
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  traitCollection = [(MailboxOutlineCell *)self traitCollection];
  mf_useSplitViewStyling = [traitCollection mf_useSplitViewStyling];

  if ([(MailboxOutlineCell *)self disclosureType]== 1)
  {
    expanded = [(MailboxOutlineCell *)self expanded];
    v7 = MSAccessibilityIdentifierMailboxListAccountCell;
    v8 = @".isCollapsed";
    if (expanded)
    {
      v8 = @".isExpanded";
    }
  }

  else
  {
    expanded2 = [(MailboxOutlineCell *)self expanded];
    v7 = MSAccessibilityIdentifierMailboxListCell;
    v8 = @".isCollapsed";
    if (expanded2)
    {
      v8 = @".isExpanded";
    }
  }

  v10 = [NSString stringWithFormat:v7, v8];
  [(MailboxOutlineCell *)self setAccessibilityIdentifier:v10];

  if ([(MailboxOutlineCell *)self isExpandable])
  {
    if (mf_useSplitViewStyling)
    {
      +[UIListContentConfiguration sidebarHeaderConfiguration];
    }

    else
    {
      +[UIListContentConfiguration prominentInsetGroupedHeaderConfiguration];
    }
    v12 = ;
    title = [(MailboxOutlineCell *)self title];
    [v12 setText:title];

    v13 = +[UIBackgroundConfiguration listSidebarHeaderConfiguration];
    sub_1000EEA74(self, v12);
    goto LABEL_25;
  }

  if (mf_useSplitViewStyling)
  {
    v11 = +[UIListContentConfiguration accompaniedSidebarSubtitleCellConfiguration];
    +[UIBackgroundConfiguration listAccompaniedSidebarCellConfiguration];
    v13 = v12 = v11;
  }

  else
  {
    v12 = +[UIListContentConfiguration subtitleCellConfiguration];
    v13 = +[UIBackgroundConfiguration listGroupedCellConfiguration];
    if ([stateCopy isEditing])
    {
      v15 = +[UIColor tableCellGroupedBackgroundColor];
      [v13 setBackgroundColor:v15];
    }

    v16 = +[UIColor secondaryLabelColor];
    secondaryTextProperties = [v12 secondaryTextProperties];
    [secondaryTextProperties setColor:v16];
  }

  sub_1000EEA74(self, v12);
  title2 = [(MailboxOutlineCell *)self title];
  [v12 setText:title2];

  if ([(MailboxOutlineCell *)self useTintColor])
  {
    tintColor = [(MailboxOutlineCell *)self tintColor];
    textProperties = [v12 textProperties];
    [textProperties setColor:tintColor];
  }

  subtitle = [(MailboxOutlineCell *)self subtitle];
  [v12 setSecondaryText:subtitle];

  isSelected = [stateCopy isSelected];
  icon = [(MailboxOutlineCell *)self icon];
  [v12 setImage:icon];

  selectedIconTintColor = [(MailboxOutlineCell *)self selectedIconTintColor];
  LODWORD(icon) = (selectedIconTintColor != 0) & isSelected;

  if (icon == 1)
  {
    selectedIconTintColor2 = [(MailboxOutlineCell *)self selectedIconTintColor];
    imageProperties = [v12 imageProperties];
    [imageProperties setTintColor:selectedIconTintColor2];
LABEL_23:

    goto LABEL_24;
  }

  iconTintColor = [(MailboxOutlineCell *)self iconTintColor];
  v28 = (iconTintColor == 0) | isSelected;

  if ((v28 & 1) == 0)
  {
    selectedIconTintColor2 = [(MailboxOutlineCell *)self iconTintColor];
    imageProperties = [v12 imageProperties];
    [imageProperties setTintColor:selectedIconTintColor2];
    goto LABEL_23;
  }

LABEL_24:
  imageProperties2 = [v12 imageProperties];
  [imageProperties2 reservedLayoutSize];

  imageProperties3 = [v12 imageProperties];
  [imageProperties3 setReservedLayoutSize:{_UIContentViewDefaultSymbolImageReservedLayoutSize, _UIContentViewDefaultSymbolImageReservedLayoutSize}];

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
    multiselectCheckmarkColor = [(MailboxOutlineCell *)self multiselectCheckmarkColor];
    [v4 setTintColor:multiselectCheckmarkColor];

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
    focusAccessoryView = [(MailboxOutlineCell *)self focusAccessoryView];
    [v3 addObject:focusAccessoryView];
LABEL_7:

    goto LABEL_13;
  }

  if ([(MailboxOutlineCell *)self shouldShowBadgeCountIfNecessary]&& [(MailboxOutlineCell *)self badgeCount]>= 1 && (![(MailboxOutlineCell *)self isExpandable]|| [(MailboxOutlineCell *)self isExpandable]&& ([(MailboxOutlineCell *)self expanded]& 1) == 0))
  {
    hideBadgeCountForEditing = [(MailboxOutlineCell *)self hideBadgeCountForEditing];
    v14 = [UICellAccessoryLabel alloc];
    v15 = [NSNumberFormatter ef_formatUnsignedInteger:[(MailboxOutlineCell *)self badgeCount] withGrouping:0];
    focusAccessoryView = [v14 initWithText:v15];

    if (hideBadgeCountForEditing)
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    [focusAccessoryView setDisplayedState:v16];
    [v3 addObject:focusAccessoryView];
    goto LABEL_7;
  }

LABEL_13:
  traitCollection = [(MailboxOutlineCell *)self traitCollection];
  mf_useSplitViewStyling = [traitCollection mf_useSplitViewStyling];

  if ((mf_useSplitViewStyling & 1) == 0 && ![(MailboxOutlineCell *)self disclosureType])
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
  contentView = [(MailboxOutlineCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  textLabel = [contentView textLabel];
  [textLabel frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  traitCollection = [(MailboxOutlineCell *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

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
  if (horizontalSizeClass == 1)
  {
    v25 = 2.0;
  }

  v26 = v9 / v25;
  if (v26 >= MidX)
  {
    MidX = v26;
  }

  [(MailboxOutlineCell *)self convertPoint:contentView fromView:MidX, MidY];
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
    anyObject = [(NSSet *)self->_legacyMailboxes anyObject];
    v3 = +[MailChangeManager sharedChangeManager];
    v4 = [v3 displayNameUsingSpecialNamesForMailbox:anyObject];

    [(MailboxOutlineCell *)self setTitle:v4];
    [(MailboxOutlineCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_updateIndentationLevel
{
  if ([(NSSet *)self->_legacyMailboxes count]== 1)
  {
    anyObject = [(NSSet *)self->_legacyMailboxes anyObject];
    if ([(MailboxOutlineCell *)self flattenHierarchy])
    {
      v3 = 0;
    }

    else
    {
      v4 = +[MailChangeManager sharedChangeManager];
      v5 = [v4 levelForMailbox:anyObject];

      v3 = v5 & ~(v5 >> 31);
    }

    [(MailboxOutlineCell *)self setIndentationLevel:v3];
  }
}

- (id)_scriptingInfo
{
  v8.receiver = self;
  v8.super_class = MailboxOutlineCell;
  _scriptingInfo = [(MailboxOutlineCell *)&v8 _scriptingInfo];
  if ([(NSSet *)self->_legacyMailboxes count]== 1)
  {
    v4 = +[MailChangeManager sharedChangeManager];
    anyObject = [(NSSet *)self->_legacyMailboxes anyObject];
    v6 = [v4 displayNameUsingSpecialNamesForMailbox:anyObject];

    [_scriptingInfo setValue:v6 forKey:@"ID"];
  }

  return _scriptingInfo;
}

- (void)bucketBarConfigurationController:(id)controller isHidden:(BOOL)hidden forMailboxes:(id)mailboxes
{
  selfCopy = self;
  mailboxesCopy = mailboxes;
  v9 = mailboxesCopy;
  v6 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v6 performBlock:&v7];
}

- (void)bucketBarConfigurationControllerRequiresReload:(id)reload
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