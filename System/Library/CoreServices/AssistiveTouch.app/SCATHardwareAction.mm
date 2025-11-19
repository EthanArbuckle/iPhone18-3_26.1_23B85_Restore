@interface SCATHardwareAction
+ (id)actionForHardwareActionString:(id)a3;
+ (id)crownPress:(unint64_t)a3;
+ (id)crownRotationClockwise:(BOOL)a3;
+ (id)topButtonPress:(unint64_t)a3;
+ (void)_performPress:(unint64_t)a3 numberOfPresses:(unint64_t)a4;
- (void)performAction;
@end

@implementation SCATHardwareAction

+ (id)crownPress:(unint64_t)a3
{
  v4 = objc_alloc_init(SCATHardwareAction);
  [(SCATHardwareAction *)v4 setActionType:0];
  [(SCATHardwareAction *)v4 setNumberOfPresses:a3];

  return v4;
}

+ (id)crownRotationClockwise:(BOOL)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SCATHardwareAction);
  [(SCATHardwareAction *)v4 setActionType:1];
  [(SCATHardwareAction *)v4 setClockwise:v3];

  return v4;
}

+ (id)topButtonPress:(unint64_t)a3
{
  v4 = objc_alloc_init(SCATHardwareAction);
  [(SCATHardwareAction *)v4 setActionType:2];
  [(SCATHardwareAction *)v4 setNumberOfPresses:a3];

  return v4;
}

+ (id)actionForHardwareActionString:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"pressCrown"])
  {
    v5 = a1;
    v6 = 1;
LABEL_5:
    v7 = [v5 crownPress:v6];
LABEL_6:
    v8 = v7;
    goto LABEL_7;
  }

  if ([v4 hasPrefix:@"doublePressCrown"])
  {
    v5 = a1;
    v6 = 2;
    goto LABEL_5;
  }

  if ([v4 hasPrefix:@"pressTopButton"])
  {
    v10 = a1;
    v11 = 1;
LABEL_14:
    v7 = [v10 topButtonPress:v11];
    goto LABEL_6;
  }

  if ([v4 hasPrefix:@"triplePressLock"])
  {
    v10 = a1;
    v11 = 3;
    goto LABEL_14;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)performAction
{
  v3 = [(SCATHardwareAction *)self actionType];
  if (v3 == 2)
  {
LABEL_4:
    v4 = objc_opt_class();
    v5 = [(SCATHardwareAction *)self actionType];
    v6 = [(SCATHardwareAction *)self numberOfPresses];

    [v4 _performPress:v5 numberOfPresses:v6];
    return;
  }

  if (v3 != 1)
  {
    if (v3)
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

+ (void)_performPress:(unint64_t)a3 numberOfPresses:(unint64_t)a4
{
  if (a3 == 2)
  {
    v11 = +[AXPISystemActionHelper sharedInstance];
    [v11 pressLockButtonDown];

    v12 = +[AXPISystemActionHelper sharedInstance];
    [v12 liftLockButtonUp];

    if (a4 < 2)
    {
      return;
    }

    v9 = v13;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v10 = sub_1000665FC;
    goto LABEL_7;
  }

  if (!a3)
  {
    v7 = +[AXPISystemActionHelper sharedInstance];
    [v7 pressHomeButtonDown];

    v8 = +[AXPISystemActionHelper sharedInstance];
    [v8 liftHomeButtonUp];

    if (a4 >= 2)
    {
      v9 = v14;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v10 = sub_1000665E8;
LABEL_7:
      v9[2] = v10;
      v9[3] = &unk_1001D56A8;
      v9[4] = a1;
      v9[5] = a3;
      v9[6] = a4;
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }
}

@end