@interface PresentAnnouncementAction
- (PresentAnnouncementAction)initWithAnnouncement:(id)announcement;
@end

@implementation PresentAnnouncementAction

- (PresentAnnouncementAction)initWithAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  v9.receiver = self;
  v9.super_class = PresentAnnouncementAction;
  v6 = [(PresentAnnouncementAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_announcement, announcement);
  }

  return v7;
}

@end