@interface TUIStatsViewControllerFactory
+ (id)newViewControllerWithFeed:(id)a3;
+ (id)newViewControllerWithFeedEntry:(id)a3;
@end

@implementation TUIStatsViewControllerFactory

+ (id)newViewControllerWithFeedEntry:(id)a3
{
  v3 = a3;
  v4 = [[TUIStatsFeedEntryViewController alloc] initWithFeedEntry:v3];

  return v4;
}

+ (id)newViewControllerWithFeed:(id)a3
{
  v3 = a3;
  v4 = [[TUIStatsFeedViewController alloc] initWithFeed:v3];

  return v4;
}

@end