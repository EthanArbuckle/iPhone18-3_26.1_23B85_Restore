@interface BKUserEventTimerAccessibility
- (void)_axSetTimerDisabled:(BOOL)a3;
@end

@implementation BKUserEventTimerAccessibility

- (void)_axSetTimerDisabled:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x29EDCA608];
  if ([(BKUserEventTimerAccessibility *)self _axIsTimerDisabled]!= a3)
  {
    v5 = AXLogBackboardServer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v3;
      _os_log_impl(&dword_29BBBD000, v5, OS_LOG_TYPE_DEFAULT, "setting idle timer disabled: %d", buf, 8u);
    }

    if (v3)
    {
      *buf = 0;
      v18 = buf;
      v19 = 0x2020000000;
      v20 = 0;
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 3221225472;
      aBlock[2] = __53__BKUserEventTimerAccessibility__axSetTimerDisabled___block_invoke;
      aBlock[3] = &unk_29F2A52D0;
      aBlock[4] = self;
      aBlock[5] = buf;
      aBlock[6] = &v13;
      v6 = _Block_copy(aBlock);
      v7 = [(BKUserEventTimerAccessibility *)self safeValueForKey:@"_queue"];
      v8 = __UIAccessibilityCastAsProtocol();

      if (v8)
      {
        dispatch_sync(v8, v6);
      }

      else
      {
        v10 = AXLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          [BKUserEventTimerAccessibility _axSetTimerDisabled:v10];
        }

        v6[2](v6);
      }

      [(BKUserEventTimerAccessibility *)self _axSetDesiredTimeout:*(v18 + 3)];
      [(BKUserEventTimerAccessibility *)self _axSetDesiredMode:*(v14 + 6)];
      [(BKUserEventTimerAccessibility *)self resetTimer:0 mode:-1.0];
      _IsTimerDisabled = v3;

      _Block_object_dispose(&v13, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      _IsTimerDisabled = 0;
      [(BKUserEventTimerAccessibility *)self _axDesiredTimeout];
      [(BKUserEventTimerAccessibility *)self resetTimer:[(BKUserEventTimerAccessibility *)self _axDesiredMode] mode:v9];
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void __53__BKUserEventTimerAccessibility__axSetTimerDisabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_currentTimeout"];
  [v2 doubleValue];
  *(*(*(a1 + 40) + 8) + 24) = v3;

  v4 = [*(a1 + 32) safeValueForKey:@"_currentMode"];
  *(*(*(a1 + 48) + 8) + 24) = [v4 intValue];
}

@end