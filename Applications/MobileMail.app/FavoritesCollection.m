@interface FavoritesCollection
+ (id)accountsCollection;
+ (id)mailboxesCollection;
+ (id)outboxCollection;
- (BOOL)addExpandedItem:(id)a3;
- (BOOL)addItem:(id)a3 ordered:(BOOL)a4;
- (BOOL)addOrUpdateItem:(id)a3 replacedItem:(id *)a4;
- (BOOL)hidesHeader;
- (BOOL)isEditing;
- (BOOL)isShowingAllInboxes;
- (BOOL)isShowingSharedMailboxOfType:(unint64_t)a3;
- (FavoritesCollection)initWithDictionary:(id)a3;
- (NSArray)expandedItems;
- (NSArray)items;
- (NSArray)itemsIncludingSubItems;
- (NSArray)selectedItems;
- (NSArray)visibleItems;
- (NSString)displayName;
- (id)description;
- (id)dictionaryRepresentation;
- (id)itemWithSyncKey:(id)a3;
- (id)itemsContainingName:(id)a3;
- (id)itemsMatchingItemURLStrings:(id)a3;
- (id)itemsMatchingName:(id)a3;
- (id)itemsOfType:(int64_t)a3;
- (id)removeExpandedItem:(id)a3;
- (id)removeItem:(id)a3;
- (id)removeItemWithSyncKey:(id)a3;
- (id)visibleItemsOfType:(int64_t)a3;
- (void)addExpandedItemsFromDictionaryRepresentations:(id)a3;
- (void)addOrUpdateExpandedItem:(id)a3 replacedItem:(id *)a4;
- (void)invalidateVisibleItems;
- (void)persistAllInboxesStateToMaild;
- (void)prepareForWriting;
- (void)setEditing:(BOOL)a3;
- (void)setItems:(id)a3;
@end

@implementation FavoritesCollection

- (void)invalidateVisibleItems
{
  if (self)
  {
    self = self->_state;
  }

  [(FavoritesCollection *)self performWhileLocked:&stru_10064EBC0];
}

- (BOOL)isShowingAllInboxes
{
  v2 = [(FavoritesCollection *)self visibleItems];
  v3 = [FavoriteItem itemForUnifiedMailboxWithType:7 selected:0];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (NSArray)items
{
  sub_100008D2C();
  sub_100007F14();
  sub_100007F98();
  sub_100008D38();
  v14 = sub_100008048;
  v15 = &unk_10064EB38;
  v16 = v3;
  [v4 performWhileLocked:v13];
  sub_1000080DC();
  v6 = v5;
  sub_100008D44(v6, v7, v8, v9, v10, v11);

  return v2;
}

- (void)prepareForWriting
{
  if ([(FavoritesCollection *)self isAccountsCollection])
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = sub_1000ACF28;
    v10 = sub_1000ACF38;
    v11 = 0;
    if (self)
    {
      state = self->_state;
    }

    else
    {
      state = 0;
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000CE30;
    v5[3] = &unk_10064EB38;
    v5[4] = &v6;
    [(EFLocked *)state performWhileLocked:v5];
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setObject:v7[5] forKey:@"MailAccountsOrder"];
    [v4 synchronize];

    _Block_object_dispose(&v6, 8);
  }

  if ([(FavoritesCollection *)self isMailboxesCollection])
  {
    [(FavoritesCollection *)self persistAllInboxesStateToMaild];
  }
}

- (void)persistAllInboxesStateToMaild
{
  v3 = [NSNumber numberWithBool:[(FavoritesCollection *)self isShowingAllInboxes]];
  v2 = +[NSUserDefaults em_userDefaults];
  [v2 setValue:v3 forKey:EMUserDefaultAllInboxesEnabled];
}

- (NSArray)visibleItems
{
  sub_100008D2C();
  sub_100007F14();
  sub_100007F98();
  sub_100008D38();
  v14 = sub_100008908;
  v15 = &unk_10064EB38;
  v16 = v3;
  [v4 performWhileLocked:v13];
  sub_1000080DC();
  v6 = v5;
  sub_100008D44(v6, v7, v8, v9, v10, v11);

  return v2;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithInteger:self->_type];
  [v3 setObject:v4 forKey:@"type"];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1000ACF28;
  v32 = sub_1000ACF38;
  v33 = 0;
  state = self->_state;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000A63C;
  v27[3] = &unk_10064EB38;
  v27[4] = &v28;
  [(EFLocked *)state performWhileLocked:v27];
  if ([(NSMutableDictionary *)self->_invalidItemDicts count])
  {
    v6 = self->_invalidItemDicts;
    v7 = [(NSMutableDictionary *)v6 allKeys];
    v8 = [v7 sortedArrayUsingSelector:"compare:"];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v34 count:16];
    if (v10)
    {
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = self->_invalidItemDicts;
          v15 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v13, v23];

          v16 = [v13 unsignedIntegerValue];
          v17 = [v29[5] count];
          v18 = v29[5];
          if (v16 >= v17)
          {
            v19 = [v18 objectForKeyedSubscript:@"items"];
            [v19 addObject:v15];
          }

          else
          {
            v19 = [v18 objectForKeyedSubscript:@"items"];
            [v19 insertObject:v15 atIndex:v16];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v23 objects:v34 count:16];
      }

      while (v10);
    }
  }

  v20 = [v29[5] objectForKeyedSubscript:{@"items", v23}];
  [v3 setObject:v20 forKey:@"items"];

  v21 = [v29[5] objectForKeyedSubscript:@"expandedItems"];
  [v3 setObject:v21 forKey:@"expandedItems"];

  _Block_object_dispose(&v28, 8);

  return v3;
}

- (FavoritesCollection)initWithDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = FavoritesCollection;
  v5 = [(FavoritesCollection *)&v24 init];
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = [v4 objectForKey:@"type"];
  v23 = v4;
  v5->_type = [v6 integerValue];

  v7 = [v4 objectForKey:@"displayName"];
  v8 = v7;
  type = v5->_type;
  if (type)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7 == 0;
  }

  v22 = v7;
  if (!v10)
  {
    if ([v7 isEqualToString:{@"__OUTBOX__", v7}])
    {
      type = 2;
LABEL_11:
      v5->_type = type;
      goto LABEL_12;
    }

    if ([v8 isEqualToString:@"INBOXES"] || objc_msgSend(v8, "isEqualToString:", @"MAILBOXES"))
    {
      type = 1;
      goto LABEL_11;
    }

    if ([v8 isEqualToString:@"ACCOUNTS"] || (objc_msgSend(v8, "isEqualToString:", @"SINGLE_ACCOUNT_MAILBOXES") & 1) != 0)
    {
      type = 3;
      goto LABEL_11;
    }

    type = v5->_type;
  }

LABEL_12:
  sub_1000ACA80(v5, type);
  v11 = [v4 objectForKey:@"items"];
  v12 = objc_alloc_init(NSMutableArray);
  v13 = objc_opt_new();
  invalidItemDicts = v5->_invalidItemDicts;
  v5->_invalidItemDicts = v13;

  for (i = 0; i < [v11 count]; ++i)
  {
    v16 = [v11 objectAtIndexedSubscript:i];
    v17 = [FavoriteItem itemFromDictionary:v16];
    v18 = v17;
    if (v17)
    {
      [v17 sourceType];
      if (_MSSourceTypeIsValid())
      {
        [v12 addObject:v18];
      }

      else
      {
        v19 = v5->_invalidItemDicts;
        v20 = [NSNumber numberWithUnsignedInteger:i];
        [(NSMutableDictionary *)v19 setObject:v16 forKeyedSubscript:v20];
      }
    }
  }

  [(FavoritesCollection *)v5 setItems:v12];

  v4 = v23;
LABEL_20:

  return v5;
}

+ (id)mailboxesCollection
{
  v2 = sub_1000AC9F4([FavoritesCollection alloc], 1);

  return v2;
}

+ (id)accountsCollection
{
  v2 = sub_1000AC9F4([FavoritesCollection alloc], 3);

  return v2;
}

+ (id)outboxCollection
{
  v2 = sub_1000AC9F4([FavoritesCollection alloc], 2);
  v3 = +[FavoriteItem itemForOutbox];
  [v2 addItem:v3];

  return v2;
}

- (void)addExpandedItemsFromDictionaryRepresentations:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [FavoriteItem itemFromDictionary:*(*(&v10 + 1) + 8 * v7), v10];
        v9 = v8;
        if (v8)
        {
          [v8 sourceType];
          if (_MSSourceTypeIsValid())
          {
            [(FavoritesCollection *)self addExpandedItem:v9];
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)itemsOfType:(int64_t)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AD7CC;
  v5[3] = &unk_10064EC58;
  v5[4] = a3;
  v3 = sub_1000AD800(&self->super.isa, v5);

  return v3;
}

- (id)visibleItemsOfType:(int64_t)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AD9DC;
  v5[3] = &unk_10064EC58;
  v5[4] = a3;
  v3 = sub_1000AD800(&self->super.isa, v5);

  return v3;
}

- (id)itemsMatchingName:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ADB08;
  v7[3] = &unk_10064EC80;
  v8 = a3;
  v4 = v8;
  v5 = sub_1000ADBF4(&self->super.isa, v7);

  return v5;
}

- (id)itemsContainingName:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ADE28;
  v7[3] = &unk_10064EC80;
  v8 = a3;
  v4 = v8;
  v5 = sub_1000ADBF4(&self->super.isa, v7);

  return v5;
}

- (id)itemsMatchingItemURLStrings:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ADFD4;
  v7[3] = &unk_10064EC80;
  v8 = a3;
  v4 = v8;
  v5 = sub_1000ADBF4(&self->super.isa, v7);

  return v5;
}

- (NSString)displayName
{
  v3 = sub_1000AE4C4(self, self->_type);
  v4 = sub_1000CD6FC();
  v5 = [v4 accountsProvider];
  v6 = [v5 displayedAccounts];

  if (-[FavoritesCollection isMailboxesCollection](self, "isMailboxesCollection") && [v6 count] == 1)
  {
    v7 = [v6 anyObject];
    v8 = [v7 displayName];

    v3 = v8;
  }

  else if ([(FavoritesCollection *)self isAccountsCollection])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    state = self->_state;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000AE820;
    v13[3] = &unk_10064EB38;
    v13[4] = &v14;
    [(EFLocked *)state performWhileLocked:v13];
    if (v15[3] <= 1)
    {
      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"SINGLE_ACCOUNT_MAILBOXES" value:&stru_100662A88 table:@"Main"];

      v3 = v11;
    }

    _Block_object_dispose(&v14, 8);
  }

  return v3;
}

- (BOOL)isShowingSharedMailboxOfType:(unint64_t)a3
{
  v4 = [(FavoritesCollection *)self visibleItems];
  v5 = [FavoriteItem itemForSharedMailboxWithType:a3 selected:0];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (BOOL)hidesHeader
{
  if ([(FavoritesCollection *)self isMailboxesCollection]|| [(FavoritesCollection *)self isOutboxCollection])
  {
    return 1;
  }

  return [(FavoritesCollection *)self isAccountsCollection];
}

- (id)description
{
  v3 = sub_1000AE4C4(self, self->_type);
  v4 = objc_opt_class();
  v5 = [(FavoritesCollection *)self items];
  v6 = [NSString stringWithFormat:@"<%@: %p type = %@; items = %@>", v4, self, v3, v5];;

  return v6;
}

- (BOOL)isEditing
{
  sub_100008D2C();
  v17 = 0x2020000000;
  v18 = 0;
  sub_100007F98();
  sub_100008D38();
  v13 = sub_1000ACF40;
  v14 = &unk_10064EB38;
  v15 = v2;
  v4 = [v3 performWhileLocked:v12];
  v5 = *(v16 + 24);
  sub_1000AEA60(v4, v6, v7, v8, v9, v10);
  return v5;
}

- (void)setEditing:(BOOL)a3
{
  sub_100007868();
  sub_1000079EC();
  v6 = sub_1000ACFA8;
  v7 = &unk_10064EB58;
  v8 = v3;
  [v4 performWhileLocked:v5];
}

- (void)setItems:(id)a3
{
  v4 = a3;
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v6 = state;
  sub_100007868();
  sub_1000079EC();
  v9 = sub_1000AD020;
  v10 = &unk_10064EB80;
  v7 = v4;
  v11 = v7;
  [(EFLocked *)v6 performWhileLocked:v8];

  [v7 makeObjectsPerformSelector:"wasAddedToCollection:" withObject:self];
  [(FavoritesCollection *)self invalidateVisibleItems];
}

- (BOOL)addItem:(id)a3 ordered:(BOOL)a4
{
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v8 = state;
  sub_100007868();
  sub_1000079EC();
  v21 = sub_1000AD034;
  v22 = &unk_10064EBE8;
  v24 = &v26;
  v9 = v6;
  v23 = v9;
  v25 = a4;
  [(EFLocked *)v8 performWhileLocked:v20];

  if (*(v27 + 24) == 1)
  {
    sub_1000AD0A4(self, v9);
    v10 = *(v27 + 24);
  }

  else
  {
    v10 = 0;
  }

  sub_100008F08(v11, v12, v13, v14, v15, v16, v17, v18);
  return v10 & 1;
}

- (BOOL)addExpandedItem:(id)a3
{
  v6 = a3;
  sub_1000AEA78();
  v21 = 0x2020000000;
  v22 = 0;
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v8 = state;
  sub_10000793C();
  sub_1000087F4();
  v17[2] = sub_1000AD114;
  v17[3] = &unk_10064EC10;
  v18 = v3;
  v19 = v4;
  v9 = v3;
  [(EFLocked *)v8 performWhileLocked:v17];

  LOBYTE(v8) = *(v20 + 24);
  sub_1000AEA60(v10, v11, v12, v13, v14, v15);
  return v8;
}

- (BOOL)addOrUpdateItem:(id)a3 replacedItem:(id *)a4
{
  v6 = a3;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  sub_100009984();
  sub_1000087D0();
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v8 = state;
  sub_10000793C();
  sub_1000087F4();
  v29 = sub_1000AD180;
  v30 = &unk_10064EC38;
  v32 = &v35;
  v9 = v6;
  v31 = v9;
  v33 = &v39;
  v34 = &v43;
  [(EFLocked *)v8 performWhileLocked:v28];

  if (a4)
  {
    *a4 = v36[5];
  }

  if (*(v44 + 24) == 1)
  {
    [(FavoritesCollection *)self invalidateVisibleItems];
  }

  else if (*(v40 + 24) == 1)
  {
    sub_1000AD0A4(self, v9);
  }

  if (v40[3])
  {
    v10 = 1;
  }

  else
  {
    v10 = *(v44 + 24);
  }

  sub_100008F08(v11, v12, v13, v14, v15, v16, v17, v18);
  sub_100008800(v19, v20, v21, v22, v23, v24, v25, v26, v28[0], v28[1], v29, v30, v31, v32);
  _Block_object_dispose(&v43, 8);

  return v10 & 1;
}

- (void)addOrUpdateExpandedItem:(id)a3 replacedItem:(id *)a4
{
  v6 = a3;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  sub_100009984();
  sub_1000087D0();
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v8 = state;
  sub_10000793C();
  sub_1000087F4();
  v27 = sub_1000AD20C;
  v28 = &unk_10064EC38;
  v30 = &v33;
  v9 = v6;
  v29 = v9;
  v31 = v37;
  v32 = v39;
  [(EFLocked *)v8 performWhileLocked:v26];

  if (a4)
  {
    *a4 = v34[5];
  }

  sub_100008F08(v10, v11, v12, v13, v14, v15, v16, v17);
  sub_100008800(v18, v19, v20, v21, v22, v23, v24, v25, v26[0], v26[1], v27, v28, v29, v30);
  _Block_object_dispose(v39, 8);
}

- (id)removeItem:(id)a3
{
  v4 = a3;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  sub_1000AEA38();
  sub_1000AEA4C();
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v6 = state;
  sub_10000793C();
  sub_1000087F4();
  v25 = sub_1000AD3FC;
  v26 = &unk_10064EC10;
  v28 = v29;
  v7 = v4;
  v27 = v7;
  [(EFLocked *)v6 performWhileLocked:v24];

  sub_1000080DC();
  if (v8)
  {
    sub_1000AD474(self, v7);
    sub_1000080DC();
  }

  v9 = v8;
  sub_1000AEA88(v9, v10, v11, v12, v13, v14, v15, v16, v24[0], v24[1], v25, v26, v27);
  sub_1000AEA60(v17, v18, v19, v20, v21, v22);

  return self;
}

- (id)removeExpandedItem:(id)a3
{
  v6 = a3;
  sub_1000AEA78();
  v31 = 0x3032000000;
  sub_1000AEA38();
  sub_1000AEA4C();
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v8 = state;
  sub_10000793C();
  sub_1000087F4();
  v27 = sub_1000AD4E4;
  v28 = &unk_10064EC10;
  v29 = v3;
  v30 = v4;
  v9 = v3;
  [(EFLocked *)v8 performWhileLocked:v26];

  sub_1000080DC();
  v11 = v10;
  sub_1000AEA88(v11, v12, v13, v14, v15, v16, v17, v18, v26[0], v26[1], v27, v28, v29);
  sub_1000AEA60(v19, v20, v21, v22, v23, v24);

  return v8;
}

- (id)removeItemWithSyncKey:(id)a3
{
  v4 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  sub_1000AEA38();
  sub_1000AEA4C();
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v6 = state;
  sub_10000793C();
  sub_1000087F4();
  v26 = sub_1000AD55C;
  v27 = &unk_10064EC10;
  v29 = &v30;
  v7 = v4;
  v28 = v7;
  [(EFLocked *)v6 performWhileLocked:v25];

  v8 = v31[5];
  if (v8)
  {
    sub_1000AD474(self, v8);
    sub_1000080DC();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  sub_1000AEA88(v10, v11, v12, v13, v14, v15, v16, v17, v25[0], v25[1], v26, v27, v28);
  sub_1000AEA60(v18, v19, v20, v21, v22, v23);

  return self;
}

- (id)itemWithSyncKey:(id)a3
{
  v6 = a3;
  sub_1000AEA78();
  v31 = 0x3032000000;
  sub_1000AEA38();
  sub_1000AEA4C();
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v8 = state;
  sub_10000793C();
  sub_1000087F4();
  v27 = sub_1000AD5D4;
  v28 = &unk_10064EC10;
  v29 = v3;
  v30 = v4;
  v9 = v3;
  [(EFLocked *)v8 performWhileLocked:v26];

  sub_1000080DC();
  v11 = v10;
  sub_1000AEA88(v11, v12, v13, v14, v15, v16, v17, v18, v26[0], v26[1], v27, v28, v29);
  sub_1000AEA60(v19, v20, v21, v22, v23, v24);

  return v8;
}

- (NSArray)expandedItems
{
  sub_100008D2C();
  sub_100007F14();
  sub_100007F98();
  sub_100008D38();
  v14 = sub_1000AD64C;
  v15 = &unk_10064EB38;
  v16 = v3;
  [v4 performWhileLocked:v13];
  sub_1000080DC();
  v6 = v5;
  sub_100008D44(v6, v7, v8, v9, v10, v11);

  return v2;
}

- (NSArray)selectedItems
{
  sub_100008D2C();
  sub_100007F14();
  sub_100007F98();
  sub_100008D38();
  v14 = sub_1000AD6D8;
  v15 = &unk_10064EB38;
  v16 = v3;
  [v4 performWhileLocked:v13];
  sub_1000080DC();
  v6 = v5;
  sub_100008D44(v6, v7, v8, v9, v10, v11);

  return v2;
}

- (NSArray)itemsIncludingSubItems
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  sub_1000AEA38();
  v16[4] = sub_1000ACF38;
  v17 = objc_alloc_init(NSMutableArray);
  sub_100007868();
  sub_1000079EC();
  v13 = sub_1000AE2DC;
  v14 = &unk_10064EB38;
  v15 = v16;
  [v3 performWhileLocked:v12];
  sub_1000080DC();
  v5 = v4;
  sub_100008D44(v5, v6, v7, v8, v9, v10);

  return self;
}

@end