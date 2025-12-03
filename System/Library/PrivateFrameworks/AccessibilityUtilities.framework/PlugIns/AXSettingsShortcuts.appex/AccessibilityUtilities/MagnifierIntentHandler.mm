@interface MagnifierIntentHandler
- (void)handleStartMagnifier:(id)magnifier completion:(id)completion;
@end

@implementation MagnifierIntentHandler

- (void)handleStartMagnifier:(id)magnifier completion:(id)completion
{
  completionCopy = completion;
  v5 = +[ZoomServices sharedInstance];
  [v5 startMagnifier];

  v6 = [[AXStartMagnifierIntentResponse alloc] initWithCode:4 userActivity:0];
  completionCopy[2](completionCopy, v6);
}

@end