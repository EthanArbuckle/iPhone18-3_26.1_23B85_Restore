@interface ZoomMapActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation ZoomMapActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v14 = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v14 zoomFactor];
    v7 = v6;
    v8 = +[CarDisplayController sharedInstance];
    v9 = [v8 isAnyCarSceneHostingNavigation];

    if ((v9 & 1) == 0)
    {
      v10 = [v5 chrome];
      v11 = [v10 mapView];
      [v11 _zoomWithAmount:v7];
    }

    if (v7 <= 0.0)
    {
      if (v7 >= 0.0)
      {
        goto LABEL_9;
      }

      v12 = +[CarDisplayController sharedInstance];
      v13 = [v12 chromeViewController];
      [v13 zoomOut];
    }

    else
    {
      v12 = +[CarDisplayController sharedInstance];
      v13 = [v12 chromeViewController];
      [v13 zoomIn];
    }
  }

LABEL_9:
}

@end