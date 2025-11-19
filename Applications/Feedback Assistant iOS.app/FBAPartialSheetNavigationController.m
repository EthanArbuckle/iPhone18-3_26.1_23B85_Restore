@interface FBAPartialSheetNavigationController
+ (id)detentForCustomHeight:(double)a3;
- (id)detentForPreferredContentSize;
- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4;
- (void)setCustomDetentHeight:(double)a3;
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

- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    [v6 _setShouldDismissWhenTappedOutside:1];
    v7 = [v6 presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
LABEL_15:

      goto LABEL_16;
    }

    v9 = [v6 presentedViewController];
    v10 = [v9 topViewController];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if ((v11 & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v12 = [(FBAPartialSheetNavigationController *)self detentBehavior];
    switch(v12)
    {
      case 0uLL:
        goto LABEL_8;
      case 1uLL:
        v14 = +[_UISheetDetent _mediumDetent];
        break;
      case 2uLL:
        v13 = objc_opt_class();
        [(FBAPartialSheetNavigationController *)self customDetentHeight];
        v14 = [v13 detentForCustomHeight:?];
        break;
      default:
LABEL_8:
        v14 = [(FBAPartialSheetNavigationController *)self detentForPreferredContentSize];
        break;
    }

    v15 = v14;
    if (v14)
    {
      v21[0] = v14;
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

- (void)setCustomDetentHeight:(double)a3
{
  v4 = -1.0;
  if (a3 > 0.0)
  {
    v6 = +[UIScreen mainScreen];
    [v6 bounds];
    v8 = v7;

    if (v8 > a3)
    {
      v4 = a3;
    }
  }

  self->_customDetentHeight = v4;
}

+ (id)detentForCustomHeight:(double)a3
{
  if (a3 == -1.0)
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
    *&v7[4] = a3;
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