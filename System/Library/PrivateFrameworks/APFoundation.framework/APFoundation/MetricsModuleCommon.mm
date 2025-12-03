@interface MetricsModuleCommon
+ (void)initialize;
+ (void)setDaemonDeliveryClass:(Class)class;
+ (void)setMetricClass:(Class)class;
+ (void)setNotificationRegistrarClass:(Class)class;
@end

@implementation MetricsModuleCommon

+ (void)initialize
{
  qword_1EDBA4C08 = NSClassFromString(&cfstr_Apmetric.isa);
  qword_1EDBA4C10 = NSClassFromString(&cfstr_Apmetricdaemon.isa);
  qword_1EDBA4C00 = NSClassFromString(&cfstr_Apmetricnotifi.isa);
}

+ (void)setMetricClass:(Class)class
{
  v5 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, class, v3);
  isRunningTests = objc_msgSend_isRunningTests(v5, v6, v7, v8);

  if (isRunningTests)
  {
    proto = &unk_1F3911DB0;
    if (objc_msgSend_conformsToProtocol_(class, v10, proto, v11))
    {
      qword_1EDBA4C08 = class;
    }

    else
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = NSStringFromClass(class);
      v14 = NSStringFromProtocol(proto);
      v17 = objc_msgSend_stringWithFormat_(v12, v15, @"Class %@ does not implement the %@!", v16, v13, v14);

      APSimulateCrash(5, v17, 0);
    }
  }
}

+ (void)setDaemonDeliveryClass:(Class)class
{
  v5 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, class, v3);
  isRunningTests = objc_msgSend_isRunningTests(v5, v6, v7, v8);

  if (isRunningTests)
  {
    proto = &unk_1F390E9B0;
    v10 = &unk_1F390EA30;
    v11 = &unk_1F390EAA8;
    if (objc_msgSend_conformsToProtocol_(class, v12, proto, v13) && objc_msgSend_conformsToProtocol_(class, v14, v10, v15) && objc_msgSend_conformsToProtocol_(class, v16, v11, v17))
    {
      qword_1EDBA4C10 = class;
    }

    else
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = NSStringFromClass(class);
      v20 = NSStringFromProtocol(proto);
      v21 = NSStringFromProtocol(v10);
      v22 = NSStringFromProtocol(v11);
      v25 = objc_msgSend_stringWithFormat_(v18, v23, @"Class %@ does not implement the %@, %@ or %@ protocols!", v24, v19, v20, v21, v22);

      APSimulateCrash(5, v25, 0);
    }
  }
}

+ (void)setNotificationRegistrarClass:(Class)class
{
  v5 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, class, v3);
  isRunningTests = objc_msgSend_isRunningTests(v5, v6, v7, v8);

  if (isRunningTests)
  {
    proto = &unk_1F390F390;
    v10 = &unk_1F390EAA8;
    if (objc_msgSend_conformsToProtocol_(class, v11, proto, v12) && objc_msgSend_conformsToProtocol_(class, v13, v10, v14))
    {
      qword_1EDBA4C00 = class;
    }

    else
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = NSStringFromClass(class);
      v17 = NSStringFromProtocol(proto);
      v18 = NSStringFromProtocol(v10);
      v21 = objc_msgSend_stringWithFormat_(v15, v19, @"Class %@ does not implement both the %@ or %@ protocols!", v20, v16, v17, v18);

      APSimulateCrash(5, v21, 0);
    }
  }
}

@end