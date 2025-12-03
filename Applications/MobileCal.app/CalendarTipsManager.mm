@interface CalendarTipsManager
+ (id)sharedManager;
- (CalendarTipsManager)init;
- (void)addObserversForController:(id)controller todayButton:(id)button;
- (void)configureTipsCenter;
- (void)dismissTipDueToUserNavigationWithCompletionBlock:(id)block;
- (void)donateIsPortraitOrientation:(BOOL)orientation;
- (void)donateIsSelectedDateFiveDaysAwayFromToday:(BOOL)today;
- (void)donateShouldDisplayTip:(BOOL)tip;
- (void)donateTodayButtonPressed;
- (void)updatePresentedControllerTo:(id)to;
@end

@implementation CalendarTipsManager

- (CalendarTipsManager)init
{
  v3.receiver = self;
  v3.super_class = CalendarTipsManager;
  return [(CalendarTipsManager *)&v3 init];
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054474;
  block[3] = &unk_10020F5F0;
  block[4] = self;
  if (qword_1002518D8 != -1)
  {
    dispatch_once(&qword_1002518D8, block);
  }

  v2 = qword_1002518D0;

  return v2;
}

- (void)configureTipsCenter
{
  v2 = +[_TtC9MobileCal11TipsManager shared];
  [v2 configureTipsCenter];
}

- (void)addObserversForController:(id)controller todayButton:(id)button
{
  buttonCopy = button;
  controllerCopy = controller;
  v7 = +[_TtC9MobileCal11TipsManager shared];
  [v7 addTipObserversFor:controllerCopy todayButton:buttonCopy];
}

- (void)updatePresentedControllerTo:(id)to
{
  toCopy = to;
  v4 = +[_TtC9MobileCal11TipsManager shared];
  [v4 updatePresentedController:toCopy];
}

- (void)dismissTipDueToUserNavigationWithCompletionBlock:(id)block
{
  blockCopy = block;
  v4 = +[_TtC9MobileCal11TipsManager shared];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100054684;
  v6[3] = &unk_10020F680;
  v7 = blockCopy;
  v5 = blockCopy;
  [v4 dismissTipIfPresentedWithCompletionBlock:v6];
}

- (void)donateTodayButtonPressed
{
  v2 = +[_TtC9MobileCal11TipsManager shared];
  [v2 jumpToTodayActionPerformed];
}

- (void)donateIsPortraitOrientation:(BOOL)orientation
{
  orientationCopy = orientation;
  v4 = +[_TtC9MobileCal11TipsManager shared];
  [v4 setIsPortraitOrientationTo:orientationCopy];
}

- (void)donateIsSelectedDateFiveDaysAwayFromToday:(BOOL)today
{
  todayCopy = today;
  v4 = +[_TtC9MobileCal11TipsManager shared];
  [v4 setIsSelectedDateFiveDaysAwayFromTodayTo:todayCopy];
}

- (void)donateShouldDisplayTip:(BOOL)tip
{
  tipCopy = tip;
  v4 = +[_TtC9MobileCal11TipsManager shared];
  [v4 setShouldDisplayJumpToTodayTipTo:tipCopy];
}

@end