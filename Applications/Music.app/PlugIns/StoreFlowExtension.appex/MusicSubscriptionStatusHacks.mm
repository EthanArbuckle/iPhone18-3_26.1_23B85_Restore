@interface MusicSubscriptionStatusHacks
+ (void)setupSubscriptionStatusHacks;
@end

@implementation MusicSubscriptionStatusHacks

+ (void)setupSubscriptionStatusHacks
{
  if (qword_100011770 != -1)
  {
    sub_100004864();
  }
}

@end