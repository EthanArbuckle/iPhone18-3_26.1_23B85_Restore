@interface FavoriteItem
+ (OS_os_log)log;
+ (id)itemForAccount:(id)account;
+ (id)itemForInboxWithAccount:(id)account selected:(BOOL)selected;
+ (id)itemForMailbox:(id)mailbox selected:(BOOL)selected;
+ (id)itemForMailbox:(id)mailbox selected:(BOOL)selected shouldSync:(BOOL)sync;
+ (id)itemForOutbox;
+ (id)itemForSharedMailboxWithType:(unint64_t)type selected:(BOOL)selected;
+ (id)itemForUnifiedMailboxWithType:(int64_t)type selected:(BOOL)selected;
+ (id)itemForVIP:(id)p selected:(BOOL)selected;
+ (id)itemFromDictionary:(id)dictionary;
- (BOOL)isExpandable;
- (BOOL)isExpanded;
- (CGPoint)iconOffset;
- (FavoriteItem)initWithDictionary:(id)dictionary;
- (FavoriteItem)initWithType:(int64_t)type;
- (NSString)ef_publicDescription;
- (NSString)itemID;
- (NSString)itemURLString;
- (NSString)itemUUID;
- (id)_descriptionFullyRedacted:(BOOL)redacted;
- (id)badgeCountString;
- (id)countQueryPredicate;
- (id)defaultIconBlock;
- (id)defaultIconName;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationRemovingSyncKeys;
- (id)representingMailboxes;
- (id)serverCountMailboxScope;
- (void)configureOutlineCell:(id)cell;
- (void)setExpanded:(BOOL)expanded;
- (void)wasAddedToCollection:(id)collection;
- (void)wasRemovedFromCollecion:(id)collecion;
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
  representingMailbox = [(FavoriteItem *)self representingMailbox];
  hasChildren = [representingMailbox hasChildren];

  return hasChildren;
}

- (NSString)ef_publicDescription
{
  v3 = +[EFDevice currentDevice];
  isInternal = [v3 isInternal];

  if (isInternal)
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

    displayName2 = +[EFDevice currentDevice];
    if ([displayName2 isInternal])
    {
      displayName = [(FavoriteItem *)self displayName];

      if (!displayName)
      {
        goto LABEL_10;
      }

      displayName2 = [(FavoriteItem *)self displayName];
      [v3 setObject:displayName2 forKey:@"displayName"];
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
  block[4] = self;
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
  representingMailbox = [(FavoriteItem *)self representingMailbox];
  v3 = representingMailbox;
  if (representingMailbox)
  {
    [representingMailbox iconName];
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

- (void)configureOutlineCell:(id)cell
{
  cellCopy = cell;
  if ([(FavoriteItem *)self _defaultCellAccessoryType]== 1)
  {
    [cellCopy setDisclosureType:0];
  }

  [cellCopy setIndentationLevel:0];
  defaultIconBlock = [(FavoriteItem *)self defaultIconBlock];
  v6 = defaultIconBlock;
  if (defaultIconBlock)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000A6610;
    v9[3] = &unk_10064E970;
    v10 = defaultIconBlock;
    [cellCopy setCreateIconBlock:v9];
  }

  iconTintColor = [(FavoriteItem *)self iconTintColor];
  [cellCopy setIconTintColor:iconTintColor];

  selectedIconTintColor = [(FavoriteItem *)self selectedIconTintColor];
  [cellCopy setSelectedIconTintColor:selectedIconTintColor];

  [cellCopy setShowFocusIcon:0];
}

+ (id)itemForAccount:(id)account
{
  accountCopy = account;
  v4 = [[FavoriteItem_Account alloc] initWithAccount:accountCopy];

  return v4;
}

+ (id)itemForMailbox:(id)mailbox selected:(BOOL)selected
{
  v4 = [self itemForMailbox:mailbox selected:selected shouldSync:1];

  return v4;
}

+ (id)itemForMailbox:(id)mailbox selected:(BOOL)selected shouldSync:(BOOL)sync
{
  syncCopy = sync;
  selectedCopy = selected;
  mailboxCopy = mailbox;
  v8 = [[FavoriteItem_Mailbox alloc] initWithMailbox:mailboxCopy];
  [(FavoriteItem *)v8 setSelected:selectedCopy];
  [(FavoriteItem *)v8 setShouldSync:syncCopy];

  return v8;
}

+ (id)itemForInboxWithAccount:(id)account selected:(BOOL)selected
{
  selectedCopy = selected;
  accountCopy = account;
  v6 = [[FavoriteItem_Inbox alloc] initWithAccount:accountCopy];
  [(FavoriteItem *)v6 setSelected:selectedCopy];

  return v6;
}

+ (id)itemForUnifiedMailboxWithType:(int64_t)type selected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = [[FavoriteItem_UnifiedMailbox alloc] initWithMailboxType:type];
  [(FavoriteItem *)v5 setSelected:selectedCopy];

  return v5;
}

+ (id)itemForSharedMailboxWithType:(unint64_t)type selected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = [[FavoriteItem_SharedMailbox alloc] initWithSourceType:type];
  [(FavoriteItem *)v5 setSelected:selectedCopy];

  return v5;
}

+ (id)itemForVIP:(id)p selected:(BOOL)selected
{
  selectedCopy = selected;
  pCopy = p;
  v6 = [[FavoriteItem_VIPMailbox alloc] initWithVIP:pCopy];
  [(FavoriteItem *)v6 setSelected:selectedCopy];

  return v6;
}

+ (id)itemForOutbox
{
  v2 = objc_alloc_init(SharedItem_Outbox);

  return v2;
}

- (FavoriteItem)initWithType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = FavoriteItem;
  v4 = [(FavoriteItem *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_shouldSync = [objc_opt_class() _defaultShouldSync];
    v5->_showUnreadCount = 1;
  }

  return v5;
}

- (FavoriteItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = FavoriteItem;
  v5 = [(FavoriteItem *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"type"];
    v5->_type = [v6 integerValue];

    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_showUnreadCount = 1;
    v7 = [dictionaryCopy valueForKey:@"selected"];
    if (v7)
    {
      [(FavoriteItem *)v5 setSelected:NSBOOLFromString()];
    }

    else
    {
      [(FavoriteItem *)v5 setSelected:1];
    }

    v8 = [dictionaryCopy valueForKey:@"shouldSync"];

    if (v8)
    {
      _defaultShouldSync = NSBOOLFromString();
    }

    else
    {
      _defaultShouldSync = [objc_opt_class() _defaultShouldSync];
    }

    v5->_shouldSync = _defaultShouldSync;
    v10 = [dictionaryCopy valueForKey:@"expanded"];

    if (v10)
    {
      _defaultShouldExpand = NSBOOLFromString();
    }

    else
    {
      _defaultShouldExpand = [objc_opt_class() _defaultShouldExpand];
    }

    v5->_expanded = _defaultShouldExpand;
  }

  return v5;
}

+ (id)itemFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
    if ((integerValue - 7) <= 0xFFFFFFFFFFFFFFF9)
    {
      __assert_rtn("+[FavoriteItem itemFromDictionary:]", "FavoriteItem.m", 169, "type > 0 && type < FavoriteItemTypeMaxValue");
    }

    v7 = [objc_alloc(*off_10064EA18[integerValue - 1]) initWithDictionary:dictionaryCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dictionaryRepresentationRemovingSyncKeys
{
  dictionaryRepresentation = [(FavoriteItem *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation mutableCopy];

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

    itemUUID = [(FavoriteItem *)self itemUUID];
    v6 = [NSString stringWithFormat:@"%@-%@", collectionID, itemUUID];
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
  representingMailbox = [(FavoriteItem *)self representingMailbox];
  uRLString = [representingMailbox URLString];

  return uRLString;
}

- (id)badgeCountString
{
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.Message"];
  v4 = [v3 localizedStringForKey:@"UNREAD_COUNT_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
  badgeCount = [(FavoriteItem *)self badgeCount];
  v6 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v4, [badgeCount integerValue]);

  return v6;
}

- (id)countQueryPredicate
{
  representingMailboxes = [(FavoriteItem *)self representingMailboxes];
  v3 = [representingMailboxes ef_mapSelector:"objectID"];

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
  representingMailboxes = [(FavoriteItem *)self representingMailboxes];
  v3 = [representingMailboxes ef_mapSelector:"objectID"];
  v4 = [EMMailboxScope mailboxScopeForMailboxObjectIDs:v3 forExclusion:0];

  return v4;
}

- (id)representingMailboxes
{
  representingMailbox = [(FavoriteItem *)self representingMailbox];
  v3 = representingMailbox;
  if (representingMailbox)
  {
    v6 = representingMailbox;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)wasAddedToCollection:(id)collection
{
  collectionCopy = collection;
  uniqueId = [collectionCopy uniqueId];
  collectionID = self->_collectionID;
  self->_collectionID = uniqueId;
}

- (void)wasRemovedFromCollecion:(id)collecion
{
  collectionID = self->_collectionID;
  self->_collectionID = 0;
}

- (void)setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  if (![(FavoriteItem *)self isExpandable]&& expandedCopy)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100485FD4();
    }

    LOBYTE(expandedCopy) = 0;
  }

  os_unfair_lock_lock(&self->_lock);
  self->_expanded = expandedCopy;
  os_unfair_lock_unlock(&self->_lock);
}

- (id)_descriptionFullyRedacted:(BOOL)redacted
{
  redactedCopy = redacted;
  _displayNameShouldBeRedacted = [(FavoriteItem *)self _displayNameShouldBeRedacted];
  v6 = [(FavoriteItem *)self type]- 1;
  if (v6 <= 6)
  {
    v7 = off_10064EA48[v6];
    if (_displayNameShouldBeRedacted)
    {
      goto LABEL_6;
    }

LABEL_5:
    displayName = [(FavoriteItem *)self displayName];
    if (displayName)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v7 = 0;
  if ((_displayNameShouldBeRedacted & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  displayName2 = [(FavoriteItem *)self displayName];
  if (redactedCopy)
  {
    [EFPrivacy fullyRedactedStringForString:displayName2];
  }

  else
  {
    [EFPrivacy partiallyRedactedStringForString:displayName2];
  }
  v10 = ;

  displayName = v10;
LABEL_10:
  v11 = &stru_100662A88;
  if (objc_opt_respondsToSelector())
  {
    unreadCountToken = [(FavoriteItem *)self unreadCountToken];
    v11 = [NSString stringWithFormat:@"unreadCountToken:%@", unreadCountToken];
  }

  v13 = [NSString stringWithFormat:@"<%@: %p type = %@; visible:%d selected:%d expanded:%d displayName:%@ %@>", objc_opt_class(), self, v7, [(FavoriteItem *)self isVisible], [(FavoriteItem *)self isSelected], [(FavoriteItem *)self isExpanded], displayName, v11];;

  return v13;
}

@end