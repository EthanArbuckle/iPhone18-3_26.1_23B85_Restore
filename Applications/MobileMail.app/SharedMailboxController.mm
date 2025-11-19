@interface SharedMailboxController
+ (id)allSharedInstances;
+ (id)sharedInstanceForSourceType:(unint64_t)a3;
+ (id)sharedInstanceMapping;
+ (id)sharedSmartMailboxForSourceType:(unint64_t)a3;
- (CGPoint)iconOffset;
- (SharedMailboxController)initWithType:(unint64_t)a3;
- (id)icon;
- (id)iconImage;
- (id)lastInitialBadgeCountDefaultKey;
- (id)startCountQuery;
- (int64_t)badgeCount;
- (void)_startCountQueryIfNeededWithToken:(id)a3;
- (void)_startCountQueryWithToken:(id)a3;
- (void)_updateMailboxes;
- (void)dealloc;
- (void)invalidateIcon;
- (void)messageRepository:(id)a3 query:(id)a4 countDidChange:(int64_t)a5;
- (void)presentFromSelectionTarget:(id)a3 item:(id)a4 accessoryTapped:(BOOL)a5 animated:(BOOL)a6;
- (void)resume;
- (void)setBadgeCount:(int64_t)a3 notifyChange:(BOOL)a4;
@end

@implementation SharedMailboxController

+ (id)sharedInstanceMapping
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000BD6C;
  v4[3] = &unk_100656840;
  v4[4] = a2;
  v4[5] = a1;
  if (qword_1006DD818 != -1)
  {
    dispatch_once(&qword_1006DD818, v4);
  }

  v2 = qword_1006DD810;

  return v2;
}

- (id)lastInitialBadgeCountDefaultKey
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [NSString stringWithFormat:@"%@BadgeCount", v3];

  return v4;
}

+ (id)allSharedInstances
{
  v2 = [a1 sharedInstanceMapping];
  v3 = [v2 allValues];

  return v3;
}

- (void)resume
{
  [(EFSuspendableScheduler *)self->_scheduler resume];
  if ([(SharedMailboxController *)self alwaysActiveCountQuery])
  {
    scheduler = self->_scheduler;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10002038C;
    v5[3] = &unk_10064E780;
    v5[4] = self;
    v4 = [(EFSuspendableScheduler *)scheduler performCancelableBlock:v5];
  }
}

- (void)_updateMailboxes
{
  [(EFSuspendableScheduler *)self->_scheduler assertIsExecuting:1];
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 accountsProvider];
  v5 = [v4 displayedAccounts];

  v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) primaryMailboxUid];
        [v6 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v6 copy];
  mailboxes = self->_mailboxes;
  self->_mailboxes = v12;
}

+ (id)sharedSmartMailboxForSourceType:(unint64_t)a3
{
  if (qword_1006DD828 != -1)
  {
    sub_10048D4C0();
  }

  v4 = qword_1006DD820;
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

+ (id)sharedInstanceForSourceType:(unint64_t)a3
{
  if (a3 && _MSSourceTypeIsValid())
  {
    v6 = [a1 sharedInstanceMapping];
    v7 = [NSNumber numberWithUnsignedInteger:a3];
    v8 = [v6 objectForKeyedSubscript:v7];

    IsValid = _MSSourceTypeIsValid();
    if (v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = IsValid;
    }

    if (v10 == 1)
    {
      v11 = +[NSAssertionHandler currentHandler];
      [v11 handleFailureInMethod:a2 object:a1 file:@"SharedMailboxController.m" lineNumber:147 description:@"Unsupported source type"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SharedMailboxController)initWithType:(unint64_t)a3
{
  v23.receiver = self;
  v23.super_class = SharedMailboxController;
  v4 = [(SharedMailboxController *)&v23 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_sourceType = a3;
    v6 = [objc_opt_class() sharedSmartMailboxForSourceType:a3];
    mailbox = v5->_mailbox;
    v5->_mailbox = v6;

    v8 = [NSString stringWithFormat:@"com.apple.mobilemail.%@", objc_opt_class()];
    v9 = [EFScheduler serialDispatchQueueSchedulerWithName:v8];
    scheduler = v5->_scheduler;
    v5->_scheduler = v9;

    [(EFSuspendableScheduler *)v5->_scheduler suspend];
    v11 = +[NSUserDefaults standardUserDefaults];
    v12 = [(SharedMailboxController *)v5 lastInitialBadgeCountDefaultKey];
    v5->_badgeCount = [v11 integerForKey:v12];

    v13 = [(SharedMailboxController *)v5 unreadCriterion];
    criterion = v5->_criterion;
    v5->_criterion = v13;

    v15 = [EFDebouncer alloc];
    v16 = +[EFScheduler mainThreadScheduler];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10024A8CC;
    v21[3] = &unk_10064D900;
    v17 = v5;
    v22 = v17;
    v18 = [v15 initWithTimeInterval:v16 scheduler:1 startAfter:v21 block:0.2];
    badgeCountDebouncer = v17->_badgeCountDebouncer;
    v17->_badgeCountDebouncer = v18;
  }

  return v5;
}

- (void)dealloc
{
  [(EFCancelable *)self->_unreadCountToken cancel];
  [(EFDebouncer *)self->_badgeCountDebouncer cancel];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SharedMailboxController;
  [(SharedMailboxController *)&v4 dealloc];
}

- (int64_t)badgeCount
{
  os_unfair_lock_lock(&self->_lock);
  badgeCount = self->_badgeCount;
  os_unfair_lock_unlock(&self->_lock);
  return badgeCount;
}

- (void)setBadgeCount:(int64_t)a3 notifyChange:(BOOL)a4
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_badgeCount == a3)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_badgeCount = a3;
    v7 = +[NSUserDefaults standardUserDefaults];
    badgeCount = self->_badgeCount;
    v9 = [(SharedMailboxController *)self lastInitialBadgeCountDefaultKey];
    [v7 setInteger:badgeCount forKey:v9];

    os_unfair_lock_unlock(&self->_lock);
    if (a4)
    {
      v13 = SharedNetworkControllerBadgeCountKey;
      v10 = [NSNumber numberWithInteger:a3];
      v14 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

      v12 = +[NSNotificationCenter defaultCenter];
      [v12 postNotificationName:SharedMailboxControllerBadgeCountDidChangeNotification object:self userInfo:v11];
    }
  }
}

- (CGPoint)iconOffset
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)iconImage
{
  v2 = [(SharedMailboxController *)self iconImageName];
  v3 = [UIImage mf_systemImageNamed:v2 forView:7];

  return v3;
}

- (id)icon
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_icon)
  {
    v3 = [(SharedMailboxController *)self iconImage];
    icon = self->_icon;
    self->_icon = v3;
  }

  os_unfair_lock_unlock(&self->_lock);
  v5 = self->_icon;

  return v5;
}

- (void)invalidateIcon
{
  icon = self->_icon;
  self->_icon = 0;
}

- (void)presentFromSelectionTarget:(id)a3 item:(id)a4 accessoryTapped:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v9 = a4;
  [v10 selectCombinedInboxWithSourceType:-[SharedMailboxController sourceType](self item:"sourceType") animated:{v9, v6}];
}

- (id)startCountQuery
{
  v3 = [EFManualCancelationToken alloc];
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithLabel:v4];

  if (![(SharedMailboxController *)self alwaysActiveCountQuery])
  {
    scheduler = self->_scheduler;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10024B03C;
    v9[3] = &unk_10064E780;
    v9[4] = self;
    v7 = [(EFSuspendableScheduler *)scheduler performCancelableBlock:v9];
    [v5 addCancelable:v7];
  }

  return v5;
}

- (void)_startCountQueryIfNeededWithToken:(id)a3
{
  v4 = a3;
  v5 = [(SharedMailboxController *)self unreadCountToken];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 isCanceled];
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1000203A0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = v7;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting count query %{BOOL}d token: %{public}@", v9, 0x12u);
  }

  if (v7)
  {
    [(SharedMailboxController *)self _updateMailboxes];
    [(SharedMailboxController *)self _startCountQueryWithToken:v4];
  }
}

- (void)_startCountQueryWithToken:(id)a3
{
  v4 = a3;
  [(EFSuspendableScheduler *)self->_scheduler assertIsExecuting:1];
  v5 = [(SharedMailboxController *)self unreadCountToken];
  [v5 cancel];

  [(SharedMailboxController *)self setUnreadCountToken:0];
  v6 = [(SharedMailboxController *)self unscopedCountPredicate];
  v7 = [v6 copy];

  v8 = [(SharedMailboxController *)self mailbox];
  v9 = [v8 mailboxScope];
  v10 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v9];

  if (v10)
  {
    v29[0] = v7;
    v29[1] = v10;
    v11 = [NSArray arrayWithObjects:v29 count:2];
    v12 = [NSCompoundPredicate andPredicateWithSubpredicates:v11];

    v7 = v12;
  }

  if (v7 && [(NSArray *)self->_mailboxes count])
  {
    v13 = +[UIApplication sharedApplication];
    v14 = [v13 focusController];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10024B4C0;
    v18[3] = &unk_100656888;
    v18[4] = self;
    v19 = v7;
    v20 = v4;
    [v14 getCurrentFocus:v18];
  }

  else
  {
    v15 = sub_1000203A0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = [(NSArray *)self->_mailboxes count];
      *buf = 138544130;
      v22 = v16;
      v23 = 2048;
      v24 = v10;
      v25 = 2048;
      v26 = v7;
      v27 = 2048;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ not starting query: scopePredicate: %p, countPredicate: %p, _mailboxes.count %ld", buf, 0x2Au);
    }
  }
}

- (void)messageRepository:(id)a3 query:(id)a4 countDidChange:(int64_t)a5
{
  v7 = [(SharedMailboxController *)self badgeCountDebouncer:a3];
  v6 = [NSNumber numberWithInteger:a5];
  [v7 debounceResult:v6];
}

@end