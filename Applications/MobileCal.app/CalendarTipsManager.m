@interface CalendarTipsManager
+ (id)sharedManager;
- (CalendarTipsManager)init;
- (void)addObserversForController:(id)a3 todayButton:(id)a4;
- (void)configureTipsCenter;
- (void)dismissTipDueToUserNavigationWithCompletionBlock:(id)a3;
- (void)donateIsPortraitOrientation:(BOOL)a3;
- (void)donateIsSelectedDateFiveDaysAwayFromToday:(BOOL)a3;
- (void)donateShouldDisplayTip:(BOOL)a3;
- (void)donateTodayButtonPressed;
- (void)updatePresentedControllerTo:(id)a3;
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
  block[4] = a1;
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

- (void)addObserversForController:(id)a3 todayButton:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_TtC9MobileCal11TipsManager shared];
  [v7 addTipObserversFor:v6 todayButton:v5];
}

- (void)updatePresentedControllerTo:(id)a3
{
  v3 = a3;
  v4 = +[_TtC9MobileCal11TipsManager shared];
  [v4 updatePresentedController:v3];
}

- (void)dismissTipDueToUserNavigationWithCompletionBlock:(id)a3
{
  v3 = a3;
  v4 = +[_TtC9MobileCal11TipsManager shared];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100054684;
  v6[3] = &unk_10020F680;
  v7 = v3;
  v5 = v3;
  [v4 dismissTipIfPresentedWithCompletionBlock:v6];
}

- (void)donateTodayButtonPressed
{
  v2 = +[_TtC9MobileCal11TipsManager shared];
  [v2 jumpToTodayActionPerformed];
}

- (void)donateIsPortraitOrientation:(BOOL)a3
{
  v3 = a3;
  v4 = +[_TtC9MobileCal11TipsManager shared];
  [v4 setIsPortraitOrientationTo:v3];
}

- (void)donateIsSelectedDateFiveDaysAwayFromToday:(BOOL)a3
{
  v3 = a3;
  v4 = +[_TtC9MobileCal11TipsManager shared];
  [v4 setIsSelectedDateFiveDaysAwayFromTodayTo:v3];
}

- (void)donateShouldDisplayTip:(BOOL)a3
{
  v3 = a3;
  v4 = +[_TtC9MobileCal11TipsManager shared];
  [v4 setShouldDisplayJumpToTodayTipTo:v3];
}

@end