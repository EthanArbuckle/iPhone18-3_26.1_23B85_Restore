@interface DisplayModeNavActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation DisplayModeNavActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = actionCopy;
    v7 = +[MNNavigationService sharedService];
    isInNavigatingState = [v7 isInNavigatingState];

    if (isInNavigatingState)
    {
      v9 = +[CarDisplayController sharedInstance];
      isCurrentlyConnectedToAnyCarScene = [v9 isCurrentlyConnectedToAnyCarScene];

      showDetails = [v6 showDetails];
      if (isCurrentlyConnectedToAnyCarScene)
      {
        v12 = +[CarChromeModeCoordinator sharedInstance];
        v13 = v12;
        if (showDetails)
        {
          [v12 goToDetail];
        }

        else
        {
          [v12 goToOverview];
        }
      }

      else
      {
        navActionCoordinator = [contextCopy navActionCoordinator];
        v13 = navActionCoordinator;
        if (showDetails)
        {
          [navActionCoordinator pressedZoomToManeuverWithSender:0];
        }

        else
        {
          [navActionCoordinator pressedShowOverviewWithSender:0];
        }
      }
    }
  }
}

@end