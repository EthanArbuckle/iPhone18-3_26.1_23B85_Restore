@interface _ShortcutCountObserverWrapper
- (_ShortcutCountObserverWrapper)initWithFavoriteItem:(id)item messagePersistence:(id)persistence hookRegistry:(id)registry countDidChange:(id)change;
- (void)cancel;
- (void)countDidChange:(int64_t)change acknowledgementToken:(id)token;
@end

@implementation _ShortcutCountObserverWrapper

- (_ShortcutCountObserverWrapper)initWithFavoriteItem:(id)item messagePersistence:(id)persistence hookRegistry:(id)registry countDidChange:(id)change
{
  itemCopy = item;
  persistenceCopy = persistence;
  registryCopy = registry;
  changeCopy = change;
  v36.receiver = self;
  v36.super_class = _ShortcutCountObserverWrapper;
  v13 = [(_ShortcutCountObserverWrapper *)&v36 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_favoriteItem, item);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001A4C1C;
    v33[3] = &unk_100653278;
    v15 = itemCopy;
    v34 = v15;
    v35 = changeCopy;
    v16 = objc_retainBlock(v33);
    v17 = [EFDebouncer alloc];
    v18 = +[EFScheduler mainThreadScheduler];
    v19 = [v17 initWithTimeInterval:v18 scheduler:1 startAfter:v16 block:0.1];
    badgeCountDebouncer = v14->_badgeCountDebouncer;
    v14->_badgeCountDebouncer = v19;

    countQueryPredicate = [v15 countQueryPredicate];
    if (countQueryPredicate)
    {
      v22 = [NSString alloc];
      displayName = [v15 displayName];
      v24 = [v22 initWithFormat:@"Application Shortcut Count Query %@", displayName];

      v25 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:countQueryPredicate sortDescriptors:&__NSArray0__struct queryOptions:0 label:v24];
      serverCountMailboxScope = [v15 serverCountMailboxScope];
      v27 = +[MFApplicationShortcutProvider log];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        predicate = [v25 predicate];
        *buf = 138412546;
        v38 = predicate;
        v39 = 2112;
        v40 = serverCountMailboxScope;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Starting count query for predicate: %@ mailboxScope: %@", buf, 0x16u);
      }

      v29 = [[EDMessageCountQueryHandler alloc] initWithQuery:v25 serverCountMailboxScope:serverCountMailboxScope messagePersistence:persistenceCopy hookRegistry:registryCopy observer:v14];
      [(_ShortcutCountObserverWrapper *)v14 setQueryHandler:v29];
    }

    else
    {
      v24 = +[MFApplicationShortcutProvider log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10048AB54(v15, v24);
      }
    }
  }

  return v14;
}

- (void)countDidChange:(int64_t)change acknowledgementToken:(id)token
{
  tokenCopy = token;
  [tokenCopy invoke];
  badgeCountDebouncer = [(_ShortcutCountObserverWrapper *)self badgeCountDebouncer];
  v7 = [NSNumber numberWithInteger:change];
  [badgeCountDebouncer debounceResult:v7];
}

- (void)cancel
{
  queryHandler = [(_ShortcutCountObserverWrapper *)self queryHandler];
  [queryHandler cancel];
}

@end