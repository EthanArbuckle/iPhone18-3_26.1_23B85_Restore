@interface AXUIRootViewController
- (id)description;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
@end

@implementation AXUIRootViewController

- (void)loadView
{
  v6 = [MEMORY[0x277D759A0] mainScreen];
  v3 = objc_alloc(objc_opt_class());
  [v6 bounds];
  v4 = [v3 initWithFrame:?];
  [v4 setAutoresizingMask:18];
  v5 = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:v5];

  [(AXUIRootViewController *)self setView:v4];
}

- (unint64_t)supportedInterfaceOrientations
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(AXUIRootViewController *)self childViewControllers];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    v7 = 30;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v7 &= [*(*(&v20 + 1) + 8 * i) supportedInterfaceOrientations];
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v5);
    if (!v7)
    {
      if ([(AXUIRootViewController *)self isViewLoaded])
      {
        v9 = [(AXUIRootViewController *)self view];
        v10 = [v9 window];
      }

      else
      {
        v10 = 0;
      }

      v11 = [MEMORY[0x277CE6990] sharedInstance];
      v12 = [v11 ignoreLogging];

      if ((v12 & 1) == 0)
      {
        v13 = [MEMORY[0x277CE6990] identifier];
        v14 = AXLoggerForFacility();

        v15 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = AXColorizeFormatLog();
          [v10 windowLevel];
          v17 = _AXStringForArgs();
          if (os_log_type_enabled(v14, v15))
          {
            *buf = 138543362;
            v25 = v17;
            _os_log_impl(&dword_23DBD1000, v14, v15, "%{public}@", buf, 0xCu);
          }
        }
      }

      v7 = 2;
    }
  }

  else
  {
    v7 = 30;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(AXUIRootViewController *)self childViewControllers];
  v5 = [v3 stringWithFormat:@"AXUIRootViewController<%p> Content: %@", self, v4];

  return v5;
}

@end