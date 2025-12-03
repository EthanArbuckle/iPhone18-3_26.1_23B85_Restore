@interface THNavigationHistoryStepperController
- (THNavigationHistoryStepperController)init;
- (void)dealloc;
- (void)jumpToNext:(id)next;
- (void)jumpToPrev:(id)prev;
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

- (void)jumpToPrev:(id)prev
{
  bookspotHistoryStack = [(THNavigationHistoryStepperController *)self bookspotHistoryStack];

  [(THBookspotHistoryStack *)bookspotHistoryStack gotoPrevBookspot];
}

- (void)jumpToNext:(id)next
{
  bookspotHistoryStack = [(THNavigationHistoryStepperController *)self bookspotHistoryStack];

  [(THBookspotHistoryStack *)bookspotHistoryStack gotoNextBookspot];
}

- (void)updateHistoryNavigation
{
  if (![(THNavigationHistoryStepperController *)self chrome])
  {
    return;
  }

  prevBookspot = [(THBookspotHistoryStack *)[(THNavigationHistoryStepperController *)self bookspotHistoryStack] prevBookspot];
  nextBookspot = [(THBookspotHistoryStack *)[(THNavigationHistoryStepperController *)self bookspotHistoryStack] nextBookspot];
  v5 = nextBookspot;
  if (prevBookspot)
  {
    v6 = [(THBookPresentationPageIndexFormatter *)[(THNavigationHistoryStepperController *)self pageIndexFormatter] pageNumberStringForLocation:prevBookspot];
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
    if (nextBookspot)
    {
      goto LABEL_4;
    }
  }

  v7 = 0;
LABEL_8:
  if (prevBookspot)
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
  chrome = [(THNavigationHistoryStepperController *)self chrome];
  if (v10)
  {

    [THNavigationHistoryStepperChrome setPrevButtonTitle:chrome andPrevButtonEnable:"setPrevButtonTitle:andPrevButtonEnable:nextButtonTitle:andNextButtonEnabled:" nextButtonTitle:v8 andNextButtonEnabled:prevBookspot != 0];
  }

  else
  {
    v12 = v5 != 0;
    [(THNavigationHistoryStepperChrome *)chrome setPrevButtonTitle:v8 andEnable:prevBookspot != 0];
    chrome2 = [(THNavigationHistoryStepperController *)self chrome];

    [(THNavigationHistoryStepperChrome *)chrome2 setNextButtonTitle:v9 andEnable:v12];
  }
}

@end