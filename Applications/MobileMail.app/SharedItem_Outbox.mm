@interface SharedItem_Outbox
- (SharedItem_Outbox)init;
- (id)itemID;
- (id)itemURLString;
- (void)configureOutlineCell:(id)cell;
- (void)wasSelected:(id)selected indexPath:(id)path accessoryTapped:(BOOL)tapped animated:(BOOL)animated;
@end

@implementation SharedItem_Outbox

- (void)configureOutlineCell:(id)cell
{
  cellCopy = cell;
  v7.receiver = self;
  v7.super_class = SharedItem_Outbox;
  [(FavoriteItem *)&v7 configureOutlineCell:cellCopy];
  v5 = +[MailAccount outboxMailboxUid];
  v6 = [NSSet setWithObject:v5];
  [cellCopy setLegacyMailboxes:v6 showUnreadCount:-[FavoriteItem showUnreadCount](self unreadCountIncludesRead:{"showUnreadCount"), 1}];
}

- (void)wasSelected:(id)selected indexPath:(id)path accessoryTapped:(BOOL)tapped animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  v8 = +[MailAccount outboxMailboxUid];
  [selectedCopy selectMailbox:v8 item:self animated:animatedCopy];
}

- (SharedItem_Outbox)init
{
  v3.receiver = self;
  v3.super_class = SharedItem_Outbox;
  return [(FavoriteItem *)&v3 initWithType:6];
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

    v5 = [NSString stringWithFormat:@"%@-%ld", collectionID, [(FavoriteItem *)self type]];
    v6 = self->super._itemID;
    self->super._itemID = v5;

    itemID = self->super._itemID;
  }

  return itemID;
}

- (id)itemURLString
{
  itemID = [(SharedItem_Outbox *)self itemID];
  v3 = [NSString stringWithFormat:@"favoriteitem://outbox/%@", itemID];

  return v3;
}

@end