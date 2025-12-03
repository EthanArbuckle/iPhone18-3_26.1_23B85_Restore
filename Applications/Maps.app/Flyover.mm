@interface Flyover
- (Flyover)initWithAnnouncement:(id)announcement mapItem:(id)item animationID:(unint64_t)d;
@end

@implementation Flyover

- (Flyover)initWithAnnouncement:(id)announcement mapItem:(id)item animationID:(unint64_t)d
{
  announcementCopy = announcement;
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = Flyover;
  v11 = [(Flyover *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mapItem, item);
    objc_storeStrong(&v12->_announcement, announcement);
    _flyover = [itemCopy _flyover];
    flyover = v12->_flyover;
    v12->_flyover = _flyover;

    v12->_animationID = d;
    v15 = v12;
  }

  return v12;
}

@end