@interface _AppIntentsUserActivityHelper
+ (void)associateAppIntentWithUserActivity:(NSUserActivity *)activity completionHandler:(id)handler;
@end

@implementation _AppIntentsUserActivityHelper

+ (void)associateAppIntentWithUserActivity:(NSUserActivity *)activity completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = activity;
  v7[3] = v6;
  v7[4] = self;
  activityCopy = activity;

  sub_18F10B344();
}

@end