void sub_D98(uint64_t a1, void *a2, const void *a3)
{
  v4 = a2;
  v5 = _IOHIDLogCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "MotionEventSessionFilter CFNotification: %@\n", &v9, 0xCu);
  }

  v6 = CFEqual(a3, @"com.apple.LocalAuthentication.ui.presented");
  if (v6)
  {
    v7 = &__kCFBooleanTrue;
LABEL_7:
    [v4 setLAUIActive:v6 != 0];
    v8 = [v4 session];
    [v8 setProperty:v7 forKey:@"MotionEventRestricted"];

    goto LABEL_8;
  }

  if (CFEqual(a3, @"com.apple.LocalAuthentication.ui.dismissed"))
  {
    v7 = &__kCFBooleanFalse;
    goto LABEL_7;
  }

LABEL_8:
}

c];
}

- (id)propertyForKey:(id)a3
{
  if ([a3 isEqualToString:@"SessionFilterDebug"])
  {
    v4 = objc_opt_new();
    [v4 setObject:@"IOHIDMotionEventSessionFilter" forKeyedSubscript:@"Class"];
    v5 = [NSNumber numberWithBool:[(IOHIDMotionEventSessionFilter *)self LAUIActive]];
    [v4 setObject:v5 forKeyedSubscript:@"LAUIActive"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)activate
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_D98, @"com.apple.LocalAuthentication.ui.presented", 0, 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v4, self, sub_D98, @"com.apple.LocalAuthentication.ui.dismissed", 0, 0);
  v5 = [(IOHIDMotionEventSessionFilter *)self session];
  [v5 setProperty:&__kCFBooleanFalse forKey:@"MotionEventRestricted"];
}

- (id)filterEvent:(id)a3 toConnection:(id)a4 fromService:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (-[IOHIDMotionEventSessionFilter LAUIActive](self, "LAUIActive") && (*IOHIDEventSystemConnectionGetEntitlements() & 0x20) == 0 && [v8 integerValueForField:4])
  {
    v11 = [v8 type];
    if (v11 > 0x15 || ((1 << v11) & 0x302000) == 0)
    {
      v14 = &unk_1568;
      v15 = 8;
      while (([v10 conformsToUsagePage:*(v14 - 1) usage:*v14] & 1) == 0)
      {
        v14 += 2;
        if (!--v15)
        {
          goto LABEL_13;
        }
      }
    }

    v12 = 0;
  }

  else
  {
LABEL_13:
    v12 = v8;
  }

  return v12;
}

@end