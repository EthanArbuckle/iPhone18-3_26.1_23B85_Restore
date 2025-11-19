@interface THNavigationHistoryStepperController
- (THNavigationHistoryStepperController)init;
- (void)dealloc;
- (void)jumpToNext:(id)a3;
- (void)jumpToPrev:(id)a3;
- (void)teardown;
- (void)updateHistoryNavigation;
@end

@implementation THNavigationHistoryStepperController

- (THNavigationHistoryStepperController)init
{
  v5.receiver = self;
  v5.super_class = THNavigationHistoryStepperController;
  v2 = [(THNavigationHistoryStepperController *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v3 addObserver:v2 selector:"p_handleNavigationHistoryDidChange:" name:THNavigationHistoryDidChangeNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  if ([(THNavigationHistoryStepperController *)self bookspotHistoryStack])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  self->_pageIndexFormatter = 0;
  self->_bookspotHistoryStack = 0;
  self->_chrome = 0;
  v3.receiver = self;
  v3.super_class = THNavigationHistoryStepperController;
  [(THNavigationHistoryStepperController *)&v3 dealloc];
}

- (void)teardown
{
  self->_pageIndexFormatter = 0;
  self->_bookspotHistoryStack = 0;
  self->_chrome = 0;
  v3 = +[NSNotificationCenter defaultCenter];

  [(NSNotificationCenter *)v3 removeObserver:self];
}

- (void)jumpToPrev:(id)a3
{
  v3 = [(THNavigationHistoryStepperController *)self bookspotHistoryStack];

  [(THBookspotHistoryStack *)v3 gotoPrevBookspot];
}

- (void)jumpToNext:(id)a3
{
  v3 = [(THNavigationHistoryStepperController *)self bookspotHistoryStack];

  [(THBookspotHistoryStack *)v3 gotoNextBookspot];
}

- (void)updateHistoryNavigation
{
  if (![(THNavigationHistoryStepperController *)self chrome])
  {
    return;
  }

  v3 = [(THBookspotHistoryStack *)[(THNavigationHistoryStepperController *)self bookspotHistoryStack] prevBookspot];
  v4 = [(THBookspotHistoryStack *)[(THNavigationHistoryStepperController *)self bookspotHistoryStack] nextBookspot];
  v5 = v4;
  if (v3)
  {
    v6 = [(THBookPresentationPageIndexFormatter *)[(THNavigationHistoryStepperController *)self pageIndexFormatter] pageNumberStringForLocation:v3];
    if (v5)
    {
LABEL_4:
      v7 = [(THBookPresentationPageIndexFormatter *)[(THNavigationHistoryStepperController *)self pageIndexFormatter] pageNumberStringForLocation:v5];
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v7 = 0;
LABEL_8:
  if (v3)
  {
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle() localizedStringForKey:@"Back to page %@" value:&stru_471858 table:0], v6);
    if (v5)
    {
LABEL_10:
      v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle() localizedStringForKey:@"Go to page %@" value:&stru_471858 table:0], v7);
      goto LABEL_13;
    }
  }

  else
  {
    v8 = &stru_471858;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  v9 = &stru_471858;
LABEL_13:
  [(THNavigationHistoryStepperController *)self chrome];
  v10 = objc_opt_respondsToSelector();
  v11 = [(THNavigationHistoryStepperController *)self chrome];
  if (v10)
  {

    [THNavigationHistoryStepperChrome setPrevButtonTitle:v11 andPrevButtonEnable:"setPrevButtonTitle:andPrevButtonEnable:nextButtonTitle:andNextButtonEnabled:" nextButtonTitle:v8 andNextButtonEnabled:v3 != 0];
  }

  else
  {
    v12 = v5 != 0;
    [(THNavigationHistoryStepperChrome *)v11 setPrevButtonTitle:v8 andEnable:v3 != 0];
    v13 = [(THNavigationHistoryStepperController *)self chrome];

    [(THNavigationHistoryStepperChrome *)v13 setNextButtonTitle:v9 andEnable:v12];
  }
}

@end