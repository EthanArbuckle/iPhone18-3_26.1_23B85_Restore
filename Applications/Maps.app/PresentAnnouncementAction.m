@interface PresentAnnouncementAction
- (PresentAnnouncementAction)initWithAnnouncement:(id)a3;
@end

@implementation PresentAnnouncementAction

- (PresentAnnouncementAction)initWithAnnouncement:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PresentAnnouncementAction;
  v6 = [(PresentAnnouncementAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_announcement, a3);
  }

  return v7;
}

@end