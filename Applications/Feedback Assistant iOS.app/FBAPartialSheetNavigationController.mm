@interface FBAPartialSheetNavigationController
+ (id)detentForCustomHeight:(double)height;
- (id)detentForPreferredContentSize;
- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController;
- (void)setCustomDetentHeight:(double)height;
- (void)viewDidLoad;
@end

@implementation FBAPartialSheetNavigationController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = FBAPartialSheetNavigationController;
  [(FBAPartialSheetNavigationController *)&v3 viewDidLoad];
  [(FBAPartialSheetNavigationController *)self setDetentBehavior:0];
  [(FBAPartialSheetNavigationController *)self setCustomDetentHeight:-1.0];
}

- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController
{
  presentationControllerCopy = presentationController;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = presentationControllerCopy;
    [v6 _setShouldDismissWhenTappedOutside:1];
    presentedViewController = [v6 presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
LABEL_15:

      goto LABEL_16;
    }

    presentedViewController2 = [v6 presentedViewController];
    topViewController = [presentedViewController2 topViewController];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if ((v11 & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    detentBehavior = [(FBAPartialSheetNavigationController *)self detentBehavior];
    switch(detentBehavior)
    {
      case 0uLL:
        goto LABEL_8;
      case 1uLL:
        detentForPreferredContentSize = +[_UISheetDetent _mediumDetent];
        break;
      case 2uLL:
        v13 = objc_opt_class();
        [(FBAPartialSheetNavigationController *)self customDetentHeight];
        detentForPreferredContentSize = [v13 detentForCustomHeight:?];
        break;
      default:
LABEL_8:
        detentForPreferredContentSize = [(FBAPartialSheetNavigationController *)self detentForPreferredContentSize];
        break;
    }

    v15 = detentForPreferredContentSize;
    if (detentForPreferredContentSize)
    {
      v21[0] = detentForPreferredContentSize;
      v16 = +[_UISheetDetent _largeDetent];
      v21[1] = v16;
      v17 = v21;
      v18 = 2;
    }

    else
    {
      v16 = +[_UISheetDetent _largeDetent];
      v20 = v16;
      v17 = &v20;
      v18 = 1;
    }

    v19 = [NSArray arrayWithObjects:v17 count:v18, v20];
    [v6 _setDetents:v19];

    goto LABEL_14;
  }

LABEL_16:
}

- (void)setCustomDetentHeight:(double)height
{
  heightCopy = -1.0;
  if (height > 0.0)
  {
    v6 = +[UIScreen mainScreen];
    [v6 bounds];
    v8 = v7;

    if (v8 > height)
    {
      heightCopy = height;
    }
  }

  self->_customDetentHeight = heightCopy;
}

+ (id)detentForCustomHeight:(double)height
{
  if (height == -1.0)
  {
    v5 = 0;
  }

  else
  {
    v7[5] = v3;
    v8 = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002F31C;
    v7[3] = &unk_1000DF6E0;
    *&v7[4] = height;
    v5 = [_UISheetDetent _detentWithContainerViewBlock:v7];
  }

  return v5;
}

- (id)detentForPreferredContentSize
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002F3E0;
  v4[3] = &unk_1000DF708;
  v4[4] = self;
  v2 = [_UISheetDetent _detentWithContainerViewBlock:v4];

  return v2;
}

@end