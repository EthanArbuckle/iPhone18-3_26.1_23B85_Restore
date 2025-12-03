@interface MTPlaybackContext
+ (id)contextWithReason:(unint64_t)reason;
+ (id)defaultContext;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MTPlaybackContext

+ (id)defaultContext
{
  v2 = objc_alloc_init(self);
  [v2 setSource:0];
  [v2 setInteractive:1];
  if (isTV())
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v2 setPresentationType:v3];

  return v2;
}

+ (id)contextWithReason:(unint64_t)reason
{
  defaultContext = [self defaultContext];
  [defaultContext setSource:reason];

  return defaultContext;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setSource:{-[MTPlaybackContext source](self, "source")}];
  [v4 setInteractive:{-[MTPlaybackContext isInteractive](self, "isInteractive")}];
  [v4 setPresentationType:{-[MTPlaybackContext presentationType](self, "presentationType")}];
  [v4 setUpNextQueueIntent:{-[MTPlaybackContext upNextQueueIntent](self, "upNextQueueIntent")}];
  return v4;
}

@end