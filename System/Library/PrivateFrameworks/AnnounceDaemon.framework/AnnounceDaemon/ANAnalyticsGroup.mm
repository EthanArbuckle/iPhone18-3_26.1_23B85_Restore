@interface ANAnalyticsGroup
- (ANAnalyticsGroup)init;
- (void)addAnnouncement:(id)a3 metadata:(id)a4;
@end

@implementation ANAnalyticsGroup

- (ANAnalyticsGroup)init
{
  v8.receiver = self;
  v8.super_class = ANAnalyticsGroup;
  v2 = [(ANAnalyticsGroup *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    announcements = v2->_announcements;
    v2->_announcements = v3;

    v5 = objc_opt_new();
    metadata = v2->_metadata;
    v2->_metadata = v5;
  }

  return v2;
}

- (void)addAnnouncement:(id)a3 metadata:(id)a4
{
  announcements = self->_announcements;
  v7 = a4;
  [(NSMutableArray *)announcements addObject:a3];
  [(NSMutableArray *)self->_metadata addObject:v7];
}

@end