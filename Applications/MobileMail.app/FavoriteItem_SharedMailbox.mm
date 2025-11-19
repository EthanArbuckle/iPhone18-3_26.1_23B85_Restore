@interface FavoriteItem_SharedMailbox
- (BOOL)_isTokenValid;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSelectable;
- (BOOL)wantsDisclosureButton;
- (FavoriteItem_SharedMailbox)initWithDictionary:(id)a3;
- (FavoriteItem_SharedMailbox)initWithSourceType:(unint64_t)a3;
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
- (void)_observeNotifications:(BOOL)a3;
- (void)_restartCountTokenIfNecessary;
- (void)_startCountQueryIfNeeded;
- (void)configureOutlineCell:(id)a3;
- (void)dealloc;
- (void)setSelected:(BOOL)a3 fromUI:(BOOL)a4;
- (void)setUnreadCountToken:(id)a3;
- (void)wasSelected:(id)a3 indexPath:(id)a4 accessoryTapped:(BOOL)a5 animated:(BOOL)a6;
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
  v3 = [(FavoriteItem *)&v6 dictionaryRepresentation];
  v4 = [NSNumber numberWithInteger:self->_sourceType];
  [v3 setObject:v4 forKey:@"sourceType"];

  return v3;
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
  v3 = [v2 iconImageName];

  return v3;
}

- (id)iconTintColor
{
  v2 = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  v3 = [v2 iconTintColor];

  return v3;
}

- (id)selectedIconTintColor
{
  v2 = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  v3 = [v2 selectedIconTintColor];

  return v3;
}

- (id)applicationShortcutIcon
{
  v2 = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  v3 = [v2 applicationShortcutIconImage];
  if (v3)
  {
    v4 = [UIApplicationShortcutIcon iconWithCustomImage:v3];
  }

  else
  {
    v5 = [v2 applicationShortcutIconName];
    if (v5)
    {
      v4 = [UIApplicationShortcutIcon iconWithSystemImageName:v5];
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
  v2 = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  v3 = [v2 mailboxTitle];

  return v3;
}

- (id)criterion
{
  v2 = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  v3 = [v2 criterion];

  return v3;
}

- (BOOL)_isTokenValid
{
  v2 = [(FavoriteItem_SharedMailbox *)self unreadCountToken];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isCanceled] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_startCountQueryIfNeeded
{
  v3 = [(FavoriteItem *)self isSelected];
  v4 = [(FavoriteItem_SharedMailbox *)self _isTokenValid];
  if (!v3 || (v4 & 1) != 0)
  {
    if ((v3 & 1) == 0)
    {
      if (v4)
      {
        [(FavoriteItem_SharedMailbox *)self _observeNotifications:0];
      }

      [(FavoriteItem_SharedMailbox *)self setUnreadCountToken:0];
    }
  }

  else
  {
    v6 = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
    v5 = [v6 startCountQuery];
    [(FavoriteItem_SharedMailbox *)self setUnreadCountToken:v5];

    [(FavoriteItem_SharedMailbox *)self _observeNotifications:1];
  }
}

- (void)_observeNotifications:(BOOL)a3
{
  v3 = a3;
  if ([(FavoriteItem_SharedMailbox *)self isObserving]!= a3)
  {
    v6 = +[FavoriteItem log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = [(FavoriteItem_SharedMailbox *)self displayName];
      v9 = NSStringFromSelector(a2);
      v12 = 138544130;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      v18 = 1024;
      v19 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@:%{public}@ - %{public}@ observe:%{BOOL}d", &v12, 0x26u);
    }

    [(FavoriteItem_SharedMailbox *)self setIsObserving:v3];
    v10 = +[NSNotificationCenter defaultCenter];
    v11 = v10;
    if (v3)
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

- (void)configureOutlineCell:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FavoriteItem_SharedMailbox;
  [(FavoriteItem *)&v8 configureOutlineCell:v4];
  v5 = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  v6 = [v5 mailboxTitle];
  [v4 setTitle:v6];

  v7 = [(FavoriteItem_SharedMailbox *)self unreadCountToken];
  [v4 setShouldShowBadgeCountIfNecessary:v7 != 0];

  [v4 setBadgeCount:{objc_msgSend(v5, "badgeCount")}];
}

- (void)wasSelected:(id)a3 indexPath:(id)a4 accessoryTapped:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v9 = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  [v9 presentFromSelectionTarget:v10 item:self accessoryTapped:v7 animated:v6];
}

- (BOOL)wantsDisclosureButton
{
  v2 = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  v3 = [v2 wantsDisclosureButton];

  return v3;
}

- (id)smartMailbox
{
  v2 = [(FavoriteItem_SharedMailbox *)self sharedMailboxController];
  v3 = [v2 mailbox];

  return v3;
}

- (void)setSelected:(BOOL)a3 fromUI:(BOOL)a4
{
  v4 = a4;
  [(FavoriteItem *)self setSelected:a3];
  if (v4)
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

- (FavoriteItem_SharedMailbox)initWithSourceType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = FavoriteItem_SharedMailbox;
  result = [(FavoriteItem *)&v5 initWithType:5];
  if (result)
  {
    result->_sourceType = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_sourceType == v5->_sourceType;
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
  v3 = [v2 hasVIPs];

  return v3;
}

- (FavoriteItem_SharedMailbox)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FavoriteItem_SharedMailbox;
  v5 = [(FavoriteItem *)&v9 initWithDictionary:v4];
  if (v5 && ([v4 objectForKey:@"sourceType"], v6 = objc_claimAutoreleasedReturnValue(), v5->_sourceType = objc_msgSend(v6, "integerValue"), v6, v5->_sourceType > 0x1A))
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)setUnreadCountToken:(id)a3
{
  v5 = a3;
  unreadCountToken = self->_unreadCountToken;
  if (unreadCountToken != v5)
  {
    [(EFCancelable *)unreadCountToken cancel];
    if (self->_unreadCountToken)
    {
      v7 = +[FavoriteItem log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = [(FavoriteItem_SharedMailbox *)self displayName];
        v10 = self->_unreadCountToken;
        v12 = 138543874;
        v13 = v8;
        v14 = 2114;
        v15 = v9;
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@:%{public}@ - Cancel token:%{public}@", &v12, 0x20u);
      }

      v11 = +[NSNotificationCenter defaultCenter];
      [v11 removeObserver:self];

      [(FavoriteItem_SharedMailbox *)self setIsObserving:0];
    }

    objc_storeStrong(&self->_unreadCountToken, a3);
  }
}

- (id)badgeCountString
{
  v4 = [(FavoriteItem_SharedMailbox *)self sourceType];
  if (v4 <= 0x1A)
  {
    if (((1 << v4) & 0x2FF800C) != 0)
    {
      v5 = [NSBundle bundleWithIdentifier:@"com.apple.Message"];
      v6 = [v5 localizedStringForKey:@"MESSAGE_COUNT_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
      v7 = [(FavoriteItem *)self badgeCount];
      v8 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [v7 integerValue]);
    }

    else
    {
      if (((1 << v4) & 0x40001F3) == 0)
      {
        goto LABEL_7;
      }

      v5 = [NSBundle bundleWithIdentifier:@"com.apple.Message"];
      v6 = [v5 localizedStringForKey:@"UNREAD_COUNT_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
      v7 = [(FavoriteItem *)self badgeCount];
      v8 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [v7 integerValue]);
    }

    v2 = v8;
  }

LABEL_7:

  return v2;
}

- (id)countQueryPredicate
{
  v3 = [(FavoriteItem_SharedMailbox *)self sourceType];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = 0;
  v6 = 1;
  switch(v3)
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

      v11 = [(FavoriteItem_SharedMailbox *)self mailboxScope];
      v12 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v11];
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
  v2 = [(FavoriteItem_SharedMailbox *)self sourceType];
  v3 = [EMMailboxScope mailboxScopeForMailboxTypes:&off_100674EF8 forExclusion:1];
  v4 = [EMMailboxScope mailboxScopeForMailboxType:7 forExclusion:0];
  v5 = v4;
  v6 = 0;
  if (v2 <= 0x16)
  {
    if (((1 << v2) & 0x7F0144) != 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v4;
      if (((1 << v2) & 0xBA) == 0)
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
    v3 = [(FavoriteItem_SharedMailbox *)self mailboxScope];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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