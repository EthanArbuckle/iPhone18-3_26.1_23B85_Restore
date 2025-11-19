@interface MagnifierIntentHandler
- (void)handleStartMagnifier:(id)a3 completion:(id)a4;
@end

@implementation MagnifierIntentHandler

- (void)handleStartMagnifier:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = +[ZoomServices sharedInstance];
  [v5 startMagnifier];

  v6 = [[AXStartMagnifierIntentResponse alloc] initWithCode:4 userActivity:0];
  v4[2](v4, v6);
}

@end