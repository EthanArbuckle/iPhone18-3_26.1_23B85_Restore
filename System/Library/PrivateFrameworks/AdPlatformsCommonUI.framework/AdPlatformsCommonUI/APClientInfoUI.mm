@interface APClientInfoUI
+ (id)sharedInstance;
- (APClientInfoUI)init;
- (id)keyboards;
- (void)dealloc;
- (void)orientationChanged:(id)changed;
@end

@implementation APClientInfoUI

+ (id)sharedInstance
{
  if (qword_280CCE8E0 != -1)
  {
    sub_23E74B040();
  }

  v3 = qword_280CCE8D8;

  return v3;
}

- (APClientInfoUI)init
{
  v14.receiver = self;
  v14.super_class = APClientInfoUI;
  v2 = [(APClientInfoUI *)&v14 init];
  if (v2)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    -[APClientInfo setInterfaceIdiom:](v2, "setInterfaceIdiom:", [currentDevice userInterfaceIdiom]);

    v4 = MEMORY[0x277CCABB0];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v6 = [v4 numberWithDouble:?];
    [(APClientInfo *)v2 setScale:v6];

    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 bounds];
    v9 = v8;
    v11 = v10;

    [(APClientInfo *)v2 setScreenWidth:v9];
    [(APClientInfo *)v2 setScreenHeight:v11];
    [(APClientInfoUI *)v2 orientationChanged:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_orientationChanged_ name:*MEMORY[0x277D76878] object:0];

    [(APClientInfo *)v2 updateActiveClientInfo];
  }

  return v2;
}

- (id)keyboards
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    mEMORY[0x277D75688] = [MEMORY[0x277D75688] sharedInputModeController];
    normalizedEnabledInputModeIdentifiers = [mEMORY[0x277D75688] normalizedEnabledInputModeIdentifiers];
    userKeyboards = self->_userKeyboards;
    self->_userKeyboards = normalizedEnabledInputModeIdentifiers;

    v6 = self->_userKeyboards;
  }

  else
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_23E74BEAC;
    v10[3] = &unk_278C5A208;
    objc_copyWeak(&v11, &location);
    dispatch_async(MEMORY[0x277D85CD0], v10);
    v7 = self->_userKeyboards;
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEA60]);
    }

    v6 = v8;
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = APClientInfoUI;
  [(APClientInfoUI *)&v4 dealloc];
}

- (void)orientationChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [changedCopy object];
    orientation = [object2 orientation];
    if ((orientation - 1) >= 4)
    {
      v8 = -1;
    }

    else
    {
      v8 = orientation - 1;
    }
  }

  else
  {
    v8 = -1;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(APClientInfo *)selfCopy setOrientation:v8];
  objc_sync_exit(selfCopy);

  [(APClientInfo *)selfCopy updateActiveClientInfo];
}

@end