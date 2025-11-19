@interface FavoriteItem
+ (OS_os_log)log;
+ (id)itemForAccount:(id)a3;
+ (id)itemForInboxWithAccount:(id)a3 selected:(BOOL)a4;
+ (id)itemForMailbox:(id)a3 selected:(BOOL)a4;
+ (id)itemForMailbox:(id)a3 selected:(BOOL)a4 shouldSync:(BOOL)a5;
+ (id)itemForOutbox;
+ (id)itemForSharedMailboxWithType:(unint64_t)a3 selected:(BOOL)a4;
+ (id)itemForUnifiedMailboxWithType:(int64_t)a3 selected:(BOOL)a4;
+ (id)itemForVIP:(id)a3 selected:(BOOL)a4;
+ (id)itemFromDictionary:(id)a3;
- (BOOL)isExpandable;
- (BOOL)isExpanded;
- (CGPoint)iconOffset;
- (FavoriteItem)initWithDictionary:(id)a3;
- (FavoriteItem)initWithType:(int64_t)a3;
- (NSString)ef_publicDescription;
- (NSString)itemID;
- (NSString)itemURLString;
- (NSString)itemUUID;
- (id)_descriptionFullyRedacted:(BOOL)a3;
- (id)badgeCountString;
- (id)countQueryPredicate;
- (id)defaultIconBlock;
- (id)defaultIconName;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationRemovingSyncKeys;
- (id)representingMailboxes;
- (id)serverCountMailboxScope;
- (void)configureOutlineCell:(id)a3;
- (void)setExpanded:(BOOL)a3;
- (void)wasAddedToCollection:(id)a3;
- (void)wasRemovedFromCollecion:(id)a3;
@end

@implementation FavoriteItem

- (BOOL)isExpanded
{
  os_unfair_lock_lock(&self->_lock);
  expanded = self->_expanded;
  os_unfair_lock_unlock(&self->_lock);
  return expanded;
}

- (BOOL)isExpandable
{
  v2 = [(FavoriteItem *)self representingMailbox];
  v3 = [v2 hasChildren];

  return v3;
}

- (NSString)ef_publicDescription
{
  v3 = +[EFDevice currentDevice];
  v4 = [v3 isInternal];

  if (v4)
  {
    [(FavoriteItem *)self debugDescription];
  }

  else
  {
    [(FavoriteItem *)self _descriptionFullyRedacted:1];
  }
  v5 = ;

  return v5;
}

- (id)dictionaryRepresentation
{
  [(FavoriteItem *)self sourceType];
  if (_MSSourceTypeIsValid())
  {
    if ((self->_type - 7) <= 0xFFFFFFFFFFFFFFF9)
    {
      sub_100485FA8();
    }

    v3 = +[NSMutableDictionary dictionary];
    v4 = [NSNumber numberWithInteger:self->_type];
    [v3 setObject:v4 forKey:@"type"];

    [(FavoriteItem *)self isSelected];
    v5 = NSStringFromBOOL();
    [v3 setValue:v5 forKey:@"selected"];

    [(FavoriteItem *)self isExpanded];
    v6 = NSStringFromBOOL();
    [v3 setValue:v6 forKey:@"expanded"];

    if (![(FavoriteItem *)self shouldSync])
    {
      [(FavoriteItem *)self shouldSync];
      v7 = NSStringFromBOOL();
      [v3 setObject:v7 forKey:@"shouldSync"];
    }

    v8 = +[EFDevice currentDevice];
    if ([v8 isInternal])
    {
      v9 = [(FavoriteItem *)self displayName];

      if (!v9)
      {
        goto LABEL_10;
      }

      v8 = [(FavoriteItem *)self displayName];
      [v3 setObject:v8 forKey:@"displayName"];
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_10:

  return v3;
}

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A7E18;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DCEB0 != -1)
  {
    dispatch_once(&qword_1006DCEB0, block);
  }

  v2 = qword_1006DCEA8;

  return v2;
}

- (id)defaultIconBlock
{
  [(FavoriteItem *)self representingMailbox];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A639C;
  v6 = v5[3] = &unk_10064E948;
  v2 = v6;
  v3 = objc_retainBlock(v5);

  return v3;
}

- (id)defaultIconName
{
  v2 = [(FavoriteItem *)self representingMailbox];
  v3 = v2;
  if (v2)
  {
    [v2 iconName];
  }

  else
  {
    [MFMailboxUid iconNameForType:0];
  }
  v4 = ;

  return v4;
}

- (CGPoint)iconOffset
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)configureOutlineCell:(id)a3
{
  v4 = a3;
  if ([(FavoriteItem *)self _defaultCellAccessoryType]== 1)
  {
    [v4 setDisclosureType:0];
  }

  [v4 setIndentationLevel:0];
  v5 = [(FavoriteItem *)self defaultIconBlock];
  v6 = v5;
  if (v5)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000A6610;
    v9[3] = &unk_10064E970;
    v10 = v5;
    [v4 setCreateIconBlock:v9];
  }

  v7 = [(FavoriteItem *)self iconTintColor];
  [v4 setIconTintColor:v7];

  v8 = [(FavoriteItem *)self selectedIconTintColor];
  [v4 setSelectedIconTintColor:v8];

  [v4 setShowFocusIcon:0];
}

+ (id)itemForAccount:(id)a3
{
  v3 = a3;
  v4 = [[FavoriteItem_Account alloc] initWithAccount:v3];

  return v4;
}

+ (id)itemForMailbox:(id)a3 selected:(BOOL)a4
{
  v4 = [a1 itemForMailbox:a3 selected:a4 shouldSync:1];

  return v4;
}

+ (id)itemForMailbox:(id)a3 selected:(BOOL)a4 shouldSync:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = [[FavoriteItem_Mailbox alloc] initWithMailbox:v7];
  [(FavoriteItem *)v8 setSelected:v6];
  [(FavoriteItem *)v8 setShouldSync:v5];

  return v8;
}

+ (id)itemForInboxWithAccount:(id)a3 selected:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[FavoriteItem_Inbox alloc] initWithAccount:v5];
  [(FavoriteItem *)v6 setSelected:v4];

  return v6;
}

+ (id)itemForUnifiedMailboxWithType:(int64_t)a3 selected:(BOOL)a4
{
  v4 = a4;
  v5 = [[FavoriteItem_UnifiedMailbox alloc] initWithMailboxType:a3];
  [(FavoriteItem *)v5 setSelected:v4];

  return v5;
}

+ (id)itemForSharedMailboxWithType:(unint64_t)a3 selected:(BOOL)a4
{
  v4 = a4;
  v5 = [[FavoriteItem_SharedMailbox alloc] initWithSourceType:a3];
  [(FavoriteItem *)v5 setSelected:v4];

  return v5;
}

+ (id)itemForVIP:(id)a3 selected:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[FavoriteItem_VIPMailbox alloc] initWithVIP:v5];
  [(FavoriteItem *)v6 setSelected:v4];

  return v6;
}

+ (id)itemForOutbox
{
  v2 = objc_alloc_init(SharedItem_Outbox);

  return v2;
}

- (FavoriteItem)initWithType:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = FavoriteItem;
  v4 = [(FavoriteItem *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_shouldSync = [objc_opt_class() _defaultShouldSync];
    v5->_showUnreadCount = 1;
  }

  return v5;
}

- (FavoriteItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FavoriteItem;
  v5 = [(FavoriteItem *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"type"];
    v5->_type = [v6 integerValue];

    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_showUnreadCount = 1;
    v7 = [v4 valueForKey:@"selected"];
    if (v7)
    {
      [(FavoriteItem *)v5 setSelected:NSBOOLFromString()];
    }

    else
    {
      [(FavoriteItem *)v5 setSelected:1];
    }

    v8 = [v4 valueForKey:@"shouldSync"];

    if (v8)
    {
      v9 = NSBOOLFromString();
    }

    else
    {
      v9 = [objc_opt_class() _defaultShouldSync];
    }

    v5->_shouldSync = v9;
    v10 = [v4 valueForKey:@"expanded"];

    if (v10)
    {
      v11 = NSBOOLFromString();
    }

    else
    {
      v11 = [objc_opt_class() _defaultShouldExpand];
    }

    v5->_expanded = v11;
  }

  return v5;
}

+ (id)itemFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"type"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
    if ((v6 - 7) <= 0xFFFFFFFFFFFFFFF9)
    {
      __assert_rtn("+[FavoriteItem itemFromDictionary:]", "FavoriteItem.m", 169, "type > 0 && type < FavoriteItemTypeMaxValue");
    }

    v7 = [objc_alloc(*off_10064EA18[v6 - 1]) initWithDictionary:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dictionaryRepresentationRemovingSyncKeys
{
  v2 = [(FavoriteItem *)self dictionaryRepresentation];
  v3 = [v2 mutableCopy];

  v4 = NSStringFromBOOL();
  [v3 setObject:v4 forKeyedSubscript:@"shouldSync"];

  [v3 setObject:0 forKeyedSubscript:@"syncKey"];

  return v3;
}

- (NSString)itemID
{
  itemID = self->_itemID;
  if (!itemID)
  {
    if (self->_collectionID)
    {
      collectionID = self->_collectionID;
    }

    else
    {
      collectionID = &stru_100662A88;
    }

    v5 = [(FavoriteItem *)self itemUUID];
    v6 = [NSString stringWithFormat:@"%@-%@", collectionID, v5];
    v7 = self->_itemID;
    self->_itemID = v6;

    itemID = self->_itemID;
  }

  return itemID;
}

- (NSString)itemUUID
{
  itemUUID = self->_itemUUID;
  if (!itemUUID)
  {
    v4 = +[NSString ef_UUID];
    v5 = self->_itemUUID;
    self->_itemUUID = v4;

    itemUUID = self->_itemUUID;
  }

  return itemUUID;
}

- (NSString)itemURLString
{
  v2 = [(FavoriteItem *)self representingMailbox];
  v3 = [v2 URLString];

  return v3;
}

- (id)badgeCountString
{
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.Message"];
  v4 = [v3 localizedStringForKey:@"UNREAD_COUNT_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
  v5 = [(FavoriteItem *)self badgeCount];
  v6 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v4, [v5 integerValue]);

  return v6;
}

- (id)countQueryPredicate
{
  v2 = [(FavoriteItem *)self representingMailboxes];
  v3 = [v2 ef_mapSelector:"objectID"];

  v4 = [EMMessageListItemPredicates predicateForMessagesInMailboxesWithObjectIDs:v3];
  v5 = +[EMMessageListItemPredicates predicateForUnreadMessages];
  v9[0] = v4;
  v9[1] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:2];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  return v7;
}

- (id)serverCountMailboxScope
{
  v2 = [(FavoriteItem *)self representingMailboxes];
  v3 = [v2 ef_mapSelector:"objectID"];
  v4 = [EMMailboxScope mailboxScopeForMailboxObjectIDs:v3 forExclusion:0];

  return v4;
}

- (id)representingMailboxes
{
  v2 = [(FavoriteItem *)self representingMailbox];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)wasAddedToCollection:(id)a3
{
  v6 = a3;
  v4 = [v6 uniqueId];
  collectionID = self->_collectionID;
  self->_collectionID = v4;
}

- (void)wasRemovedFromCollecion:(id)a3
{
  collectionID = self->_collectionID;
  self->_collectionID = 0;
}

- (void)setExpanded:(BOOL)a3
{
  v3 = a3;
  if (![(FavoriteItem *)self isExpandable]&& v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100485FD4();
    }

    LOBYTE(v3) = 0;
  }

  os_unfair_lock_lock(&self->_lock);
  self->_expanded = v3;
  os_unfair_lock_unlock(&self->_lock);
}

- (id)_descriptionFullyRedacted:(BOOL)a3
{
  v3 = a3;
  v5 = [(FavoriteItem *)self _displayNameShouldBeRedacted];
  v6 = [(FavoriteItem *)self type]- 1;
  if (v6 <= 6)
  {
    v7 = off_10064EA48[v6];
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_5:
    v8 = [(FavoriteItem *)self displayName];
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v7 = 0;
  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v9 = [(FavoriteItem *)self displayName];
  if (v3)
  {
    [EFPrivacy fullyRedactedStringForString:v9];
  }

  else
  {
    [EFPrivacy partiallyRedactedStringForString:v9];
  }
  v10 = ;

  v8 = v10;
LABEL_10:
  v11 = &stru_100662A88;
  if (objc_opt_respondsToSelector())
  {
    v12 = [(FavoriteItem *)self unreadCountToken];
    v11 = [NSString stringWithFormat:@"unreadCountToken:%@", v12];
  }

  v13 = [NSString stringWithFormat:@"<%@: %p type = %@; visible:%d selected:%d expanded:%d displayName:%@ %@>", objc_opt_class(), self, v7, [(FavoriteItem *)self isVisible], [(FavoriteItem *)self isSelected], [(FavoriteItem *)self isExpanded], v8, v11];;

  return v13;
}

@end