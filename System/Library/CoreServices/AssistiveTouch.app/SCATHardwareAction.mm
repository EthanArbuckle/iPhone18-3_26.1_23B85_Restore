@interface SCATHardwareAction
+ (id)actionForHardwareActionString:(id)string;
+ (id)crownPress:(unint64_t)press;
+ (id)crownRotationClockwise:(BOOL)clockwise;
+ (id)topButtonPress:(unint64_t)press;
+ (void)_performPress:(unint64_t)press numberOfPresses:(unint64_t)presses;
- (void)performAction;
@end

@implementation SCATHardwareAction

+ (id)crownPress:(unint64_t)press
{
  v4 = objc_alloc_init(SCATHardwareAction);
  [(SCATHardwareAction *)v4 setActionType:0];
  [(SCATHardwareAction *)v4 setNumberOfPresses:press];

  return v4;
}

+ (id)crownRotationClockwise:(BOOL)clockwise
{
  clockwiseCopy = clockwise;
  v4 = objc_alloc_init(SCATHardwareAction);
  [(SCATHardwareAction *)v4 setActionType:1];
  [(SCATHardwareAction *)v4 setClockwise:clockwiseCopy];

  return v4;
}

+ (id)topButtonPress:(unint64_t)press
{
  v4 = objc_alloc_init(SCATHardwareAction);
  [(SCATHardwareAction *)v4 setActionType:2];
  [(SCATHardwareAction *)v4 setNumberOfPresses:press];

  return v4;
}

+ (id)actionForHardwareActionString:(id)string
{
  stringCopy = string;
  if ([stringCopy hasPrefix:@"pressCrown"])
  {
    selfCopy2 = self;
    v6 = 1;
LABEL_5:
    v7 = [selfCopy2 crownPress:v6];
LABEL_6:
    v8 = v7;
    goto LABEL_7;
  }

  if ([stringCopy hasPrefix:@"doublePressCrown"])
  {
    selfCopy2 = self;
    v6 = 2;
    goto LABEL_5;
  }

  if ([stringCopy hasPrefix:@"pressTopButton"])
  {
    selfCopy4 = self;
    v11 = 1;
LABEL_14:
    v7 = [selfCopy4 topButtonPress:v11];
    goto LABEL_6;
  }

  if ([stringCopy hasPrefix:@"triplePressLock"])
  {
    selfCopy4 = self;
    v11 = 3;
    goto LABEL_14;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)performAction
{
  actionType = [(SCATHardwareAction *)self actionType];
  if (actionType == 2)
  {
LABEL_4:
    v4 = objc_opt_class();
    actionType2 = [(SCATHardwareAction *)self actionType];
    numberOfPresses = [(SCATHardwareAction *)self numberOfPresses];

    [v4 _performPress:actionType2 numberOfPresses:numberOfPresses];
    return;
  }

  if (actionType != 1)
  {
    if (actionType)
    {
      return;
    }

    goto LABEL_4;
  }

  v8 = +[AXPISystemActionHelper sharedInstance];
  if ([(SCATHardwareAction *)self clockwise])
  {
    v7 = 40;
  }

  else
  {
    v7 = -40;
  }

  [v8 turnDigitalCrown:v7];
}

+ (void)_performPress:(unint64_t)press numberOfPresses:(unint64_t)presses
{
  if (press == 2)
  {
    v11 = +[AXPISystemActionHelper sharedInstance];
    [v11 pressLockButtonDown];

    v12 = +[AXPISystemActionHelper sharedInstance];
    [v12 liftLockButtonUp];

    if (presses < 2)
    {
      return;
    }

    v9 = v13;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v10 = sub_1000665FC;
    goto LABEL_7;
  }

  if (!press)
  {
    v7 = +[AXPISystemActionHelper sharedInstance];
    [v7 pressHomeButtonDown];

    v8 = +[AXPISystemActionHelper sharedInstance];
    [v8 liftHomeButtonUp];

    if (presses >= 2)
    {
      v9 = v14;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v10 = sub_1000665E8;
LABEL_7:
      v9[2] = v10;
      v9[3] = &unk_1001D56A8;
      v9[4] = self;
      v9[5] = press;
      v9[6] = presses;
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }
}

@end