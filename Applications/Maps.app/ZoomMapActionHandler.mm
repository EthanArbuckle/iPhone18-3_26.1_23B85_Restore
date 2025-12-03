@interface ZoomMapActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation ZoomMapActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [actionCopy zoomFactor];
    v7 = v6;
    v8 = +[CarDisplayController sharedInstance];
    isAnyCarSceneHostingNavigation = [v8 isAnyCarSceneHostingNavigation];

    if ((isAnyCarSceneHostingNavigation & 1) == 0)
    {
      chrome = [contextCopy chrome];
      mapView = [chrome mapView];
      [mapView _zoomWithAmount:v7];
    }

    if (v7 <= 0.0)
    {
      if (v7 >= 0.0)
      {
        goto LABEL_9;
      }

      v12 = +[CarDisplayController sharedInstance];
      chromeViewController = [v12 chromeViewController];
      [chromeViewController zoomOut];
    }

    else
    {
      v12 = +[CarDisplayController sharedInstance];
      chromeViewController = [v12 chromeViewController];
      [chromeViewController zoomIn];
    }
  }

LABEL_9:
}

@end