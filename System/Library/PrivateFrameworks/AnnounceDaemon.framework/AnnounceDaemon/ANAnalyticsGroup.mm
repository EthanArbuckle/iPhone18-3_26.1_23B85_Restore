@interface ANAnalyticsGroup
- (ANAnalyticsGroup)init;
- (void)addAnnouncement:(id)announcement metadata:(id)metadata;
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

- (void)addAnnouncement:(id)announcement metadata:(id)metadata
{
  announcements = self->_announcements;
  metadataCopy = metadata;
  [(NSMutableArray *)announcements addObject:announcement];
  [(NSMutableArray *)self->_metadata addObject:metadataCopy];
}

@end