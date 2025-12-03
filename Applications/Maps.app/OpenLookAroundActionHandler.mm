@interface OpenLookAroundActionHandler
+ (void)_showErrorMessageinContext:(id)context;
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation OpenLookAroundActionHandler

+ (void)_showErrorMessageinContext:(id)context
{
  chrome = [context chrome];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"LookAround PIP [Not Available]" value:@"localized string not found" table:0];
  v5 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:1];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"OK [Alert dismissal]" value:@"localized string not found" table:0];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];
  [v5 addAction:v8];

  [chrome _maps_topMostPresentViewController:v5 animated:1 completion:0];
}

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = actionCopy;
    muninViewState = [v8 muninViewState];

    if (muninViewState)
    {
      appCoordinator = [contextCopy appCoordinator];
      muninViewState2 = [v8 muninViewState];
      v12 = [MKLookAroundEntryPoint entryPointWithMuninViewState:muninViewState2];
      [appCoordinator enterLookAroundWithEntryPoint:v12 lookAroundView:0 showsFullScreen:1 originFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    }

    else
    {
      originalMapItem = [v8 originalMapItem];

      if (!originalMapItem)
      {
        locationQueryItem = [v8 locationQueryItem];

        if (locationQueryItem)
        {
          chrome = [contextCopy chrome];
          currentTraits = [chrome currentTraits];

          [currentTraits setSource:1];
          objc_initWeak(&location, self);
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_1006F2F24;
          v18[3] = &unk_101627808;
          objc_copyWeak(&v20, &location);
          v19 = contextCopy;
          [v8 resolveMapItemWithTraits:currentTraits completion:v18];

          objc_destroyWeak(&v20);
          objc_destroyWeak(&location);
        }

        goto LABEL_7;
      }

      chrome2 = [contextCopy chrome];
      appCoordinator = [chrome2 currentTraits];

      [appCoordinator setSource:1];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1006F2DF4;
      v22[3] = &unk_10162E490;
      v23 = contextCopy;
      v24 = v8;
      [v24 resolveMapItemWithTraits:appCoordinator completion:v22];
    }

LABEL_7:
  }
}

@end