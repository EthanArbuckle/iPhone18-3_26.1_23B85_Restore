@interface Flyover
- (Flyover)initWithAnnouncement:(id)a3 mapItem:(id)a4 animationID:(unint64_t)a5;
@end

@implementation Flyover

- (Flyover)initWithAnnouncement:(id)a3 mapItem:(id)a4 animationID:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = Flyover;
  v11 = [(Flyover *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mapItem, a4);
    objc_storeStrong(&v12->_announcement, a3);
    v13 = [v10 _flyover];
    flyover = v12->_flyover;
    v12->_flyover = v13;

    v12->_animationID = a5;
    v15 = v12;
  }

  return v12;
}

@end