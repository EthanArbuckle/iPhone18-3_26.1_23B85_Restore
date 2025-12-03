@interface BuddyPrivacySplashController
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyPrivacySplashController

- (void)viewDidLoad
{
  selfCopy = self;
  v10 = a2;
  v9.receiver = self;
  v9.super_class = BuddyPrivacySplashController;
  [(BuddyPrivacySplashController *)&v9 viewDidLoad];
  v2 = [[OBAnimationState alloc] initWithStateName:@"Fade up" darkStateName:@"Fade up Dark" transitionDuration:0.1 transitionSpeed:1.0];
  v12[0] = v2;
  v3 = [[OBAnimationState alloc] initWithStateName:@"Shake up" darkStateName:@"Shake up Dark" transitionDuration:0.5 transitionSpeed:0.5];
  v12[1] = v3;
  v4 = [[OBAnimationState alloc] initWithStateName:@"Shake down" darkStateName:@"Shake down Dark" transitionDuration:0.5 transitionSpeed:0.5];
  v12[2] = v4;
  v5 = [[OBAnimationState alloc] initWithStateName:@"Shake up" darkStateName:@"Shake up Dark" transitionDuration:0.5 transitionSpeed:0.5];
  v12[3] = v5;
  v6 = [[OBAnimationState alloc] initWithStateName:@"Shake down" darkStateName:@"Shake down Dark" transitionDuration:0.5 transitionSpeed:0.5];
  v12[4] = v6;
  location = [NSArray arrayWithObjects:v12 count:5];

  v7 = [(BuddyPrivacySplashController *)selfCopy buddy_animationController:@"PrivacyPane" animatedStates:location startAtFirstState:1];
  [(BuddyPrivacySplashController *)selfCopy setAnimationController:v7];

  objc_storeStrong(&location, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v6 = a2;
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = BuddyPrivacySplashController;
  [(BuddyPrivacySplashController *)&v4 viewWillAppear:appear];
  animationController = [(BuddyPrivacySplashController *)selfCopy animationController];
  [(OBAnimationController *)animationController startAnimation];
}

@end