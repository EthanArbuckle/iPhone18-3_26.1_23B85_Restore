@interface OpenLookAroundActionHandler
+ (void)_showErrorMessageinContext:(id)a3;
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation OpenLookAroundActionHandler

+ (void)_showErrorMessageinContext:(id)a3
{
  v9 = [a3 chrome];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"LookAround PIP [Not Available]" value:@"localized string not found" table:0];
  v5 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:1];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"OK [Alert dismissal]" value:@"localized string not found" table:0];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];
  [v5 addAction:v8];

  [v9 _maps_topMostPresentViewController:v5 animated:1 completion:0];
}

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [v8 muninViewState];

    if (v9)
    {
      v10 = [v7 appCoordinator];
      v11 = [v8 muninViewState];
      v12 = [MKLookAroundEntryPoint entryPointWithMuninViewState:v11];
      [v10 enterLookAroundWithEntryPoint:v12 lookAroundView:0 showsFullScreen:1 originFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    }

    else
    {
      v13 = [v8 originalMapItem];

      if (!v13)
      {
        v15 = [v8 locationQueryItem];

        if (v15)
        {
          v16 = [v7 chrome];
          v17 = [v16 currentTraits];

          [v17 setSource:1];
          objc_initWeak(&location, a1);
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_1006F2F24;
          v18[3] = &unk_101627808;
          objc_copyWeak(&v20, &location);
          v19 = v7;
          [v8 resolveMapItemWithTraits:v17 completion:v18];

          objc_destroyWeak(&v20);
          objc_destroyWeak(&location);
        }

        goto LABEL_7;
      }

      v14 = [v7 chrome];
      v10 = [v14 currentTraits];

      [v10 setSource:1];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1006F2DF4;
      v22[3] = &unk_10162E490;
      v23 = v7;
      v24 = v8;
      [v24 resolveMapItemWithTraits:v10 completion:v22];
    }

LABEL_7:
  }
}

@end