@interface FavoriteItem_SharedMailbox
- (BOOL)_isTokenValid;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSelectable;
- (BOOL)wantsDisclosureButton;
- (FavoriteItem_SharedMailbox)initWithDictionary:(id)dictionary;
- (FavoriteItem_SharedMailbox)initWithSourceType:(unint64_t)type;
- (id)analyticsKey;
- (id)applicationShortcutIcon;
- (id)badgeCountString;
- (id)countQueryPredicate;
- (id)criterion;
- (id)defaultIconBlock;
- (id)defaultIconName;
- (id)dictionaryRepresentation;
- (id)displayName;
- (id)iconTintColor;
- (id)mailboxScope;
- (id)selectedIconTintColor;
- (id)serverCountMailboxScope;
- (id)smartMailbox;
- (void)_observeNotifications:(BOOL)notifications;
- (void)_restartCountTokenIfNecessary;
- (void)_startCountQueryIfNeeded;
- (void)configureOutlineCell:(id)cell;
- (void)dealloc;
- (void)setSelected:(BOOL)selected fromUI:(BOOL)i;
- (void)setUnreadCountToken:(id)token;
- (void)wasSelected:(id)selected indexPath:(id)path accessoryTapped:(BOOL)tapped animated:(BOOL)animated;
@end

@implementation FavoriteItem_SharedMailbox

- (void)dealloc
{
  [(FavoriteItem_SharedMailbox *)self setUnreadCountToken:0];
  v3.receiver = self;
  v3.super_class = FavoriteItem_SharedMailbox;
  [(FavoriteItem_SharedMailbox *)&v3 dealloc];
}

- (id)dictionaryRepresentation
{
  v6.receiver = self;
  v6.super_class = FavoriteItem_SharedMailbox;
  dictionaryRepresentation = [(FavoriteItem *)&v6 dictionaryRepresentation];
  v4 = [NSNumber numberWithInteger:self->_sourceType];
  [dictionaryRepresentation setObject:v4 forKey:@"sourceType"];

  return dictionaryRepresentation;
}

- (id)defaultIconBlock
{
  sourceType = self->_sourceType;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A7280;
  v5[3] = &unk_10064E990;
  v5[4] = sourceType;
  v3 = objc_retainBlock(v5);

  return v3;
}

- (id)defaultIconName
{
  v2 = [SharedMailboxController sharedInstanceForSourceType:self->_sourceType];
  iconImageName = [v2 iconImageName];

  return iconImageName;
}

- (id)iconTintColor
{
  sharedMailboxController = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  iconTintColor = [sharedMailboxController iconTintColor];

  return iconTintColor;
}

- (id)selectedIconTintColor
{
  sharedMailboxController = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  selectedIconTintColor = [sharedMailboxController selectedIconTintColor];

  return selectedIconTintColor;
}

- (id)applicationShortcutIcon
{
  sharedMailboxController = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  applicationShortcutIconImage = [sharedMailboxController applicationShortcutIconImage];
  if (applicationShortcutIconImage)
  {
    v4 = [UIApplicationShortcutIcon iconWithCustomImage:applicationShortcutIconImage];
  }

  else
  {
    applicationShortcutIconName = [sharedMailboxController applicationShortcutIconName];
    if (applicationShortcutIconName)
    {
      v4 = [UIApplicationShortcutIcon iconWithSystemImageName:applicationShortcutIconName];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)displayName
{
  sharedMailboxController = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  mailboxTitle = [sharedMailboxController mailboxTitle];

  return mailboxTitle;
}

- (id)criterion
{
  sharedMailboxController = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  criterion = [sharedMailboxController criterion];

  return criterion;
}

- (BOOL)_isTokenValid
{
  unreadCountToken = [(FavoriteItem_SharedMailbox *)self unreadCountToken];
  v3 = unreadCountToken;
  if (unreadCountToken)
  {
    v4 = [unreadCountToken isCanceled] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_startCountQueryIfNeeded
{
  isSelected = [(FavoriteItem *)self isSelected];
  _isTokenValid = [(FavoriteItem_SharedMailbox *)self _isTokenValid];
  if (!isSelected || (_isTokenValid & 1) != 0)
  {
    if ((isSelected & 1) == 0)
    {
      if (_isTokenValid)
      {
        [(FavoriteItem_SharedMailbox *)self _observeNotifications:0];
      }

      [(FavoriteItem_SharedMailbox *)self setUnreadCountToken:0];
    }
  }

  else
  {
    sharedMailboxController = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
    startCountQuery = [sharedMailboxController startCountQuery];
    [(FavoriteItem_SharedMailbox *)self setUnreadCountToken:startCountQuery];

    [(FavoriteItem_SharedMailbox *)self _observeNotifications:1];
  }
}

- (void)_observeNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  if ([(FavoriteItem_SharedMailbox *)self isObserving]!= notifications)
  {
    v6 = +[FavoriteItem log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      displayName = [(FavoriteItem_SharedMailbox *)self displayName];
      v9 = NSStringFromSelector(a2);
      v12 = 138544130;
      v13 = v7;
      v14 = 2114;
      v15 = displayName;
      v16 = 2114;
      v17 = v9;
      v18 = 1024;
      v19 = notificationsCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@:%{public}@ - %{public}@ observe:%{BOOL}d", &v12, 0x26u);
    }

    [(FavoriteItem_SharedMailbox *)self setIsObserving:notificationsCopy];
    v10 = +[NSNotificationCenter defaultCenter];
    v11 = v10;
    if (notificationsCopy)
    {
      [v10 addObserver:self selector:"_accountsDidChange:" name:ECMailAccountsDidChangeNotification object:0];
      [v11 addObserver:self selector:"_significantTimeChange" name:UIApplicationSignificantTimeChangeNotification object:0];
    }

    else
    {
      [v10 removeObserver:self name:ECMailAccountsDidChangeNotification object:0];
      [v11 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];
    }
  }
}

- (void)_restartCountTokenIfNecessary
{
  [(FavoriteItem_SharedMailbox *)self setUnreadCountToken:0];

  [(FavoriteItem_SharedMailbox *)self _startCountQueryIfNeeded];
}

- (void)configureOutlineCell:(id)cell
{
  cellCopy = cell;
  v8.receiver = self;
  v8.super_class = FavoriteItem_SharedMailbox;
  [(FavoriteItem *)&v8 configureOutlineCell:cellCopy];
  sharedMailboxController = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  mailboxTitle = [sharedMailboxController mailboxTitle];
  [cellCopy setTitle:mailboxTitle];

  unreadCountToken = [(FavoriteItem_SharedMailbox *)self unreadCountToken];
  [cellCopy setShouldShowBadgeCountIfNecessary:unreadCountToken != 0];

  [cellCopy setBadgeCount:{objc_msgSend(sharedMailboxController, "badgeCount")}];
}

- (void)wasSelected:(id)selected indexPath:(id)path accessoryTapped:(BOOL)tapped animated:(BOOL)animated
{
  animatedCopy = animated;
  tappedCopy = tapped;
  selectedCopy = selected;
  sharedMailboxController = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  [sharedMailboxController presentFromSelectionTarget:selectedCopy item:self accessoryTapped:tappedCopy animated:animatedCopy];
}

- (BOOL)wantsDisclosureButton
{
  sharedMailboxController = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  wantsDisclosureButton = [sharedMailboxController wantsDisclosureButton];

  return wantsDisclosureButton;
}

- (id)smartMailbox
{
  sharedMailboxController = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  mailbox = [sharedMailboxController mailbox];

  return mailbox;
}

- (void)setSelected:(BOOL)selected fromUI:(BOOL)i
{
  iCopy = i;
  [(FavoriteItem *)self setSelected:selected];
  if (iCopy)
  {
    v6 = [FavoritesManager defaultsKeyForAutomaticMailboxVisibilityForSourceType:[(FavoriteItem_SharedMailbox *)self sourceType]];
    if (v6)
    {
      v8 = v6;
      v7 = +[NSUserDefaults standardUserDefaults];
      [v7 setBool:1 forKey:v8];

      v6 = v8;
    }
  }
}

- (FavoriteItem_SharedMailbox)initWithSourceType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = FavoriteItem_SharedMailbox;
  result = [(FavoriteItem *)&v5 initWithType:5];
  if (result)
  {
    result->_sourceType = type;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_sourceType == v5->_sourceType;
  }

  return v6;
}

- (BOOL)isSelectable
{
  if ([(FavoriteItem_SharedMailbox *)self sourceType]!= 1)
  {
    return 1;
  }

  v2 = +[VIPManager defaultInstance];
  hasVIPs = [v2 hasVIPs];

  return hasVIPs;
}

- (FavoriteItem_SharedMailbox)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = FavoriteItem_SharedMailbox;
  v5 = [(FavoriteItem *)&v9 initWithDictionary:dictionaryCopy];
  if (v5 && ([dictionaryCopy objectForKey:@"sourceType"], v6 = objc_claimAutoreleasedReturnValue(), v5->_sourceType = objc_msgSend(v6, "integerValue"), v6, v5->_sourceType > 0x1A))
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)setUnreadCountToken:(id)token
{
  tokenCopy = token;
  unreadCountToken = self->_unreadCountToken;
  if (unreadCountToken != tokenCopy)
  {
    [(EFCancelable *)unreadCountToken cancel];
    if (self->_unreadCountToken)
    {
      v7 = +[FavoriteItem log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        displayName = [(FavoriteItem_SharedMailbox *)self displayName];
        v10 = self->_unreadCountToken;
        v12 = 138543874;
        v13 = v8;
        v14 = 2114;
        v15 = displayName;
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@:%{public}@ - Cancel token:%{public}@", &v12, 0x20u);
      }

      v11 = +[NSNotificationCenter defaultCenter];
      [v11 removeObserver:self];

      [(FavoriteItem_SharedMailbox *)self setIsObserving:0];
    }

    objc_storeStrong(&self->_unreadCountToken, token);
  }
}

- (id)badgeCountString
{
  sourceType = [(FavoriteItem_SharedMailbox *)self sourceType];
  if (sourceType <= 0x1A)
  {
    if (((1 << sourceType) & 0x2FF800C) != 0)
    {
      v5 = [NSBundle bundleWithIdentifier:@"com.apple.Message"];
      v6 = [v5 localizedStringForKey:@"MESSAGE_COUNT_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
      badgeCount = [(FavoriteItem *)self badgeCount];
      v8 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [badgeCount integerValue]);
    }

    else
    {
      if (((1 << sourceType) & 0x40001F3) == 0)
      {
        goto LABEL_7;
      }

      v5 = [NSBundle bundleWithIdentifier:@"com.apple.Message"];
      v6 = [v5 localizedStringForKey:@"UNREAD_COUNT_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
      badgeCount = [(FavoriteItem *)self badgeCount];
      v8 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [badgeCount integerValue]);
    }

    v2 = v8;
  }

LABEL_7:

  return v2;
}

- (id)countQueryPredicate
{
  sourceType = [(FavoriteItem_SharedMailbox *)self sourceType];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = 0;
  v6 = 1;
  switch(sourceType)
  {
    case 1uLL:
      v7 = 1;
      v8 = [EMMessageListItemPredicates predicateForIsVIP:1];
      goto LABEL_19;
    case 2uLL:
      v8 = +[EMMessageListItemPredicates predicateForFlaggedMessages];
      goto LABEL_18;
    case 3uLL:
      v8 = +[EMMessageListItemPredicates predicateForUnreadMessages];
      goto LABEL_18;
    case 4uLL:
      v8 = +[EMMessageListItemPredicates predicateForIncludesMeMessages];
      goto LABEL_15;
    case 5uLL:
      v8 = +[EMMessageListItemPredicates predicateForMessagesWithAttachments];
      goto LABEL_15;
    case 6uLL:
      v8 = +[EMMessageListItemPredicates predicateForNotifyMessages];
      goto LABEL_15;
    case 7uLL:
      v8 = +[EMMessageListItemPredicates predicateForTodayMessages];
      goto LABEL_15;
    case 8uLL:
      v8 = +[EMMessageListItemPredicates predicateForMuteMessages];
LABEL_15:
      v7 = 1;
      goto LABEL_19;
    case 0x10uLL:
      goto LABEL_17;
    case 0x11uLL:
      v6 = 0;
      goto LABEL_17;
    case 0x12uLL:
      v6 = 5;
      goto LABEL_17;
    case 0x13uLL:
      v6 = 4;
      goto LABEL_17;
    case 0x14uLL:
      v6 = 2;
      goto LABEL_17;
    case 0x15uLL:
      v6 = 3;
      goto LABEL_17;
    case 0x16uLL:
      v6 = 6;
LABEL_17:
      v8 = [EMMessageListItemPredicates predicateForFlagColor:v6];
LABEL_18:
      v7 = 0;
LABEL_19:
      v9 = v8;
      [v4 addObject:v8];
      if (v7)
      {
        v10 = +[EMMessageListItemPredicates predicateForUnreadMessages];
        [v4 addObject:v10];
      }

      mailboxScope = [(FavoriteItem_SharedMailbox *)self mailboxScope];
      v12 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:mailboxScope];
      [v4 addObject:v12];

      v5 = [NSCompoundPredicate andPredicateWithSubpredicates:v4];

      break;
    default:
      break;
  }

  return v5;
}

- (id)mailboxScope
{
  sourceType = [(FavoriteItem_SharedMailbox *)self sourceType];
  v3 = [EMMailboxScope mailboxScopeForMailboxTypes:&off_100674EF8 forExclusion:1];
  v4 = [EMMailboxScope mailboxScopeForMailboxType:7 forExclusion:0];
  v5 = v4;
  v6 = 0;
  if (sourceType <= 0x16)
  {
    if (((1 << sourceType) & 0x7F0144) != 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v4;
      if (((1 << sourceType) & 0xBA) == 0)
      {
        goto LABEL_6;
      }
    }

    v6 = v7;
  }

LABEL_6:

  return v6;
}

- (id)serverCountMailboxScope
{
  if ([(FavoriteItem_SharedMailbox *)self sourceType]== 3)
  {
    mailboxScope = [(FavoriteItem_SharedMailbox *)self mailboxScope];
  }

  else
  {
    mailboxScope = 0;
  }

  return mailboxScope;
}

- (id)analyticsKey
{
  v2 = [(FavoriteItem_SharedMailbox *)self sourceType]- 1;
  if (v2 <= 0x15 && ((0x3F80FFu >> v2) & 1) != 0)
  {
    v3 = [NSString stringWithFormat:@"Smart_%@", off_10064EA80[v2]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end