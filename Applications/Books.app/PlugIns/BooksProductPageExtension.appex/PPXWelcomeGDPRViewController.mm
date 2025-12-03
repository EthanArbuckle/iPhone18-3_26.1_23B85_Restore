@interface PPXWelcomeGDPRViewController
- (id)ba_setupNewAnalyticsTrackerWithName:(id)name;
@end

@implementation PPXWelcomeGDPRViewController

- (id)ba_setupNewAnalyticsTrackerWithName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = PPXWelcomeGDPRViewController;
  v5 = [(PPXWelcomeGDPRViewController *)&v12 ba_setupNewAnalyticsTrackerWithName:nameCopy];
  if (!v5)
  {
    v6 = +[PPXJSAWindowProvider sharedProvider];
    window = [v6 window];

    rootViewController = [window rootViewController];
    v9 = [rootViewController bc_firstVisibleChildViewControllerOfClass:objc_opt_class() includePresented:0];

    ba_effectiveAnalyticsTracker = [v9 ba_effectiveAnalyticsTracker];
    v5 = [ba_effectiveAnalyticsTracker chainWithName:nameCopy];
    [(PPXWelcomeGDPRViewController *)self ba_setAnalyticsTracker:v5];
  }

  return v5;
}

@end