@interface MTPlaybackContext
+ (id)contextWithReason:(unint64_t)a3;
+ (id)defaultContext;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MTPlaybackContext

+ (id)defaultContext
{
  v2 = objc_alloc_init(a1);
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

+ (id)contextWithReason:(unint64_t)a3
{
  v4 = [a1 defaultContext];
  [v4 setSource:a3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSource:{-[MTPlaybackContext source](self, "source")}];
  [v4 setInteractive:{-[MTPlaybackContext isInteractive](self, "isInteractive")}];
  [v4 setPresentationType:{-[MTPlaybackContext presentationType](self, "presentationType")}];
  [v4 setUpNextQueueIntent:{-[MTPlaybackContext upNextQueueIntent](self, "upNextQueueIntent")}];
  return v4;
}

@end