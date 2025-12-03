@interface FavoriteItem_Inbox
- (BOOL)_displayNameShouldBeRedacted;
- (BOOL)isEqual:(id)equal;
- (FavoriteItem_Inbox)initWithAccount:(id)account;
- (FavoriteItem_Inbox)initWithDictionary:(id)dictionary;
- (id)criterion;
- (id)dictionaryRepresentation;
- (id)displayName;
- (id)itemID;
- (id)parentItemID;
- (id)uniqueIDAndDisplayName;
- (unint64_t)hash;
- (void)configureOutlineCell:(id)cell;
- (void)wasSelected:(id)selected indexPath:(id)path accessoryTapped:(BOOL)tapped animated:(BOOL)animated;
@end

@implementation FavoriteItem_Inbox

- (id)displayName
{
  v3 = sub_1000CD6FC();
  accountsProvider = [v3 accountsProvider];
  isDisplayingMultipleAccounts = [accountsProvider isDisplayingMultipleAccounts];

  if (isDisplayingMultipleAccounts)
  {
    [(MailAccount *)self->_account displayName];
  }

  else
  {
    [MFMailboxUid specialNameForType:7];
  }
  v6 = ;

  return v6;
}

- (id)uniqueIDAndDisplayName
{
  uniqueIDAndDisplayName = self->_uniqueIDAndDisplayName;
  if (!uniqueIDAndDisplayName)
  {
    if ([(FavoriteItem_Inbox *)self _displayNameShouldBeRedacted])
    {
      displayName = [(FavoriteItem_Inbox *)self displayName];
      v5 = [EFPrivacy partiallyRedactedStringForString:displayName];

      v6 = v5;
    }

    else
    {
      v6 = [objc_opt_class() description];
    }

    representingMailbox = [(FavoriteItem_Inbox *)self representingMailbox];
    uniqueId = [representingMailbox uniqueId];
    v9 = [NSString stringWithFormat:@"%@-%@", uniqueId, v6];
    v10 = self->_uniqueIDAndDisplayName;
    self->_uniqueIDAndDisplayName = v9;

    uniqueIDAndDisplayName = self->_uniqueIDAndDisplayName;
  }

  return uniqueIDAndDisplayName;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = FavoriteItem_Inbox;
  dictionaryRepresentation = [(FavoriteItem *)&v7 dictionaryRepresentation];
  uniqueID = [(MailAccount *)self->_account uniqueID];
  if (uniqueID)
  {
    [dictionaryRepresentation setObject:uniqueID forKey:@"uniqueID"];
  }

  else
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1004860BC(self, v5);
    }

    [dictionaryRepresentation removeAllObjects];
  }

  return dictionaryRepresentation;
}

- (BOOL)_displayNameShouldBeRedacted
{
  v2 = sub_1000CD6FC();
  accountsProvider = [v2 accountsProvider];
  isDisplayingMultipleAccounts = [accountsProvider isDisplayingMultipleAccounts];

  return isDisplayingMultipleAccounts;
}

- (void)configureOutlineCell:(id)cell
{
  cellCopy = cell;
  v8.receiver = self;
  v8.super_class = FavoriteItem_Inbox;
  [(FavoriteItem *)&v8 configureOutlineCell:cellCopy];
  representingMailbox = [(FavoriteItem_Inbox *)self representingMailbox];
  v6 = [NSSet setWithObject:representingMailbox];
  [cellCopy setLegacyMailboxes:v6 showUnreadCount:{-[FavoriteItem showUnreadCount](self, "showUnreadCount")}];

  displayName = [(FavoriteItem_Inbox *)self displayName];
  [cellCopy setTitle:displayName];
}

- (void)wasSelected:(id)selected indexPath:(id)path accessoryTapped:(BOOL)tapped animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  representingMailbox = [(FavoriteItem_Inbox *)self representingMailbox];
  [selectedCopy selectMailbox:representingMailbox item:self animated:animatedCopy];
}

- (FavoriteItem_Inbox)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = FavoriteItem_Inbox;
  v6 = [(FavoriteItem *)&v9 initWithType:3];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = v6[12];
    uniqueID = [(MailAccount *)self->_account uniqueID];
    uniqueID2 = [v7 uniqueID];
    if ([uniqueID isEqualToString:uniqueID2])
    {
      uniqueIDAndDisplayName = [(FavoriteItem_Inbox *)self uniqueIDAndDisplayName];
      uniqueIDAndDisplayName2 = [v6 uniqueIDAndDisplayName];
      v12 = [uniqueIDAndDisplayName isEqualToString:uniqueIDAndDisplayName2];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  uniqueID = [(MailAccount *)self->_account uniqueID];
  v3 = [uniqueID hash];

  return v3;
}

- (FavoriteItem_Inbox)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = FavoriteItem_Inbox;
  v5 = [(FavoriteItem *)&v12 initWithDictionary:dictionaryCopy];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [dictionaryCopy objectForKey:@"uniqueID"];
  if (v6)
  {
    v7 = [MailAccount accountWithUniqueId:v6];
    account = v5->_account;
    v5->_account = v7;
  }

  v9 = v5->_account;

  if (!v9)
  {
    v10 = 0;
  }

  else
  {
LABEL_5:
    v10 = v5;
  }

  return v10;
}

- (id)itemID
{
  itemID = self->super._itemID;
  if (!itemID)
  {
    if (self->super._collectionID)
    {
      collectionID = self->super._collectionID;
    }

    else
    {
      collectionID = &stru_100662A88;
    }

    uniqueIDAndDisplayName = [(FavoriteItem_Inbox *)self uniqueIDAndDisplayName];
    v6 = [NSString stringWithFormat:@"%@-%@", collectionID, uniqueIDAndDisplayName];
    v7 = self->super._itemID;
    self->super._itemID = v6;

    itemID = self->super._itemID;
  }

  return itemID;
}

- (id)parentItemID
{
  account = [(FavoriteItem_Inbox *)self account];
  uniqueID = [account uniqueID];

  return uniqueID;
}

- (id)criterion
{
  representingMailbox = [(FavoriteItem_Inbox *)self representingMailbox];
  v3 = [MFMessageCriterion criterionForMailbox:representingMailbox];

  return v3;
}

@end