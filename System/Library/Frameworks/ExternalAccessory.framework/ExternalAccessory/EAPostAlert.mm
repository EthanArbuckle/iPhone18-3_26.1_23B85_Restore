@interface EAPostAlert
+ (id)CopyLocalizedString:(id)a3;
+ (void)EANotificationPostAccessoryNotification:(__CFString *)a3 forMsg:(__CFString *)a4 forDefaultButton:(__CFString *)a5 withAlternateButton:(__CFString *)a6 forNotification:(__CFUserNotification *)a7 withCallback:(void *)a8 andTimeout:(double)a9;
+ (void)EATearDownAccessoryNotification:(__CFUserNotification *)a3;
@end

@implementation EAPostAlert

+ (void)EANotificationPostAccessoryNotification:(__CFString *)a3 forMsg:(__CFString *)a4 forDefaultButton:(__CFString *)a5 withAlternateButton:(__CFString *)a6 forNotification:(__CFUserNotification *)a7 withCallback:(void *)a8 andTimeout:(double)a9
{
  v17 = objc_autoreleasePoolPush();
  error = 0;
  if (a3)
  {
    v18 = [a1 CopyLocalizedString:a3];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = &stru_284B0F7E0;
    if (a4)
    {
LABEL_3:
      v19 = [a1 CopyLocalizedString:a4];
      if (a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v20 = &stru_284B0F7E0;
      if (a6)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v19 = &stru_284B0F7E0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v20 = [a1 CopyLocalizedString:a5];
  if (a6)
  {
LABEL_5:
    v21 = [a1 CopyLocalizedString:a6];
    v22 = objc_alloc(MEMORY[0x277CBEAC0]);
    v23 = [v22 initWithObjectsAndKeys:{v18, *MEMORY[0x277CBF188], v19, *MEMORY[0x277CBF198], v20, *MEMORY[0x277CBF1E8], v21, *MEMORY[0x277CBF1C0], *MEMORY[0x277CBED28], *MEMORY[0x277CBF1B0], *MEMORY[0x277CBED28], @"DismissOnLock", 0}];

    goto LABEL_10;
  }

LABEL_9:
  v24 = objc_alloc(MEMORY[0x277CBEAC0]);
  v23 = [v24 initWithObjectsAndKeys:{v18, *MEMORY[0x277CBF188], v19, *MEMORY[0x277CBF198], v20, *MEMORY[0x277CBF1E8], *MEMORY[0x277CBED28], *MEMORY[0x277CBF1B0], *MEMORY[0x277CBED28], @"DismissOnLock", 0}];
LABEL_10:

  [EAPostAlert EATearDownAccessoryNotification:a7];
  if (a7)
  {
    v25 = *MEMORY[0x277CBECE8];
    v26 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], a9, 3uLL, &error, v23);
    *a7 = v26;
    if (v26)
    {
      RunLoopSource = CFUserNotificationCreateRunLoopSource(v25, v26, a8, 0);
      if (RunLoopSource)
      {
        v28 = RunLoopSource;
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, v28, *MEMORY[0x277CBF048]);
        CFRelease(v28);
      }

      else
      {
        CFRelease(*a7);
        *a7 = 0;
      }
    }

    else
    {
      NSLog(&cfstr_Externalaccess.isa, "+[EAPostAlert EANotificationPostAccessoryNotification:forMsg:forDefaultButton:withAlternateButton:forNotification:withCallback:andTimeout:]", 95, v23);
    }
  }

  objc_autoreleasePoolPop(v17);
}

+ (void)EATearDownAccessoryNotification:(__CFUserNotification *)a3
{
  if (a3)
  {
    if (*a3)
    {
      CFUserNotificationCancel(*a3);
      CFRelease(*a3);
      *a3 = 0;
    }
  }
}

+ (id)CopyLocalizedString:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ExternalAccessory"];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 localizations];
  if (a3)
  {
    v8 = v7;
    if (v7)
    {
      v9 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x277CBF008], @"mobile", *MEMORY[0x277CBF010]);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:v8 forPreferences:v9];
        if ([v10 count])
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v20;
            while (2)
            {
              v14 = 0;
              do
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [v5 localizedStringForKey:a3 value:0 table:@"Localization" localization:*(*(&v19 + 1) + 8 * v14)];
                if (v15)
                {
                  v16 = v15;
                  objc_autoreleasePoolPop(v6);
                  goto LABEL_16;
                }

                ++v14;
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v6);
  v16 = [v5 localizedStringForKey:a3 value:&stru_284B0F7E0 table:@"Localization"];
  if (!v16)
  {
LABEL_15:
    v16 = &stru_284B0F7E0;
  }

LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

@end