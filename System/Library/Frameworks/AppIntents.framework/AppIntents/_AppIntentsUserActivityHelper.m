@interface _AppIntentsUserActivityHelper
+ (void)associateAppIntentWithUserActivity:(NSUserActivity *)a3 completionHandler:(id)a4;
@end

@implementation _AppIntentsUserActivityHelper

+ (void)associateAppIntentWithUserActivity:(NSUserActivity *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;

  sub_18F10B344();
}

@end