@interface ASLogCategoryDefaultLogger
@end

@implementation ASLogCategoryDefaultLogger

void __ASLogCategoryDefaultLogger_block_invoke(id a1)
{
  v1 = os_log_create("com.apple.podcasts", "PodcastsUI");
  v2 = ASLogCategoryDefaultLogger_logger;
  ASLogCategoryDefaultLogger_logger = v1;
}

@end