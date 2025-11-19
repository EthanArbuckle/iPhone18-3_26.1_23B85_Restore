@interface PPXWelcomeGDPRViewController
- (id)ba_setupNewAnalyticsTrackerWithName:(id)a3;
@end

@implementation PPXWelcomeGDPRViewController

- (id)ba_setupNewAnalyticsTrackerWithName:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PPXWelcomeGDPRViewController;
  v5 = [(PPXWelcomeGDPRViewController *)&v12 ba_setupNewAnalyticsTrackerWithName:v4];
  if (!v5)
  {
    v6 = +[PPXJSAWindowProvider sharedProvider];
    v7 = [v6 window];

    v8 = [v7 rootViewController];
    v9 = [v8 bc_firstVisibleChildViewControllerOfClass:objc_opt_class() includePresented:0];

    v10 = [v9 ba_effectiveAnalyticsTracker];
    v5 = [v10 chainWithName:v4];
    [(PPXWelcomeGDPRViewController *)self ba_setAnalyticsTracker:v5];
  }

  return v5;
}

@end