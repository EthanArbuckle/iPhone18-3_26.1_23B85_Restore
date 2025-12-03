@interface TUIStatsViewControllerFactory
+ (id)newViewControllerWithFeed:(id)feed;
+ (id)newViewControllerWithFeedEntry:(id)entry;
@end

@implementation TUIStatsViewControllerFactory

+ (id)newViewControllerWithFeedEntry:(id)entry
{
  entryCopy = entry;
  v4 = [[TUIStatsFeedEntryViewController alloc] initWithFeedEntry:entryCopy];

  return v4;
}

+ (id)newViewControllerWithFeed:(id)feed
{
  feedCopy = feed;
  v4 = [[TUIStatsFeedViewController alloc] initWithFeed:feedCopy];

  return v4;
}

@end