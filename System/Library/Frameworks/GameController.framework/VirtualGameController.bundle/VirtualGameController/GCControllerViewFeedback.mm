@interface GCControllerViewFeedback
+ (id)sharedInstance;
- (GCControllerViewFeedback)init;
@end

@implementation GCControllerViewFeedback

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[GCControllerViewFeedback sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __42__GCControllerViewFeedback_sharedInstance__block_invoke(id a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(GCControllerViewFeedback);

  _objc_release_x1();
}

- (GCControllerViewFeedback)init
{
  v8.receiver = self;
  v8.super_class = GCControllerViewFeedback;
  v2 = [(GCControllerViewFeedback *)&v8 init];
  v3 = [[UIImpactFeedbackGenerator alloc] initWithStyle:2];
  feedbackGeneratorHeavy = v2->_feedbackGeneratorHeavy;
  v2->_feedbackGeneratorHeavy = v3;

  v5 = [[UIImpactFeedbackGenerator alloc] initWithStyle:0];
  feedbackGeneratorLight = v2->_feedbackGeneratorLight;
  v2->_feedbackGeneratorLight = v5;

  return v2;
}

@end