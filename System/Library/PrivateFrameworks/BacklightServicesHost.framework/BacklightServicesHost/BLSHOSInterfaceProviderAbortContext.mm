@interface BLSHOSInterfaceProviderAbortContext
- (BLSHOSInterfaceProviderAbortContext)initWithWatchdogType:(unint64_t)a3 cbDisplayMode:(int64_t)a4 cbFlipbookState:(int64_t)a5 caDisplayState:(int64_t)a6 completedCADisplayState:(int64_t)a7 suppressionServiceActive:(BOOL)a8 flipbookTransparent:(BOOL)a9 deviceSupportsAlwaysOn:(BOOL)a10 deviceSupportsAlwaysOnFlipbook:(BOOL)a11 displayStateClientSupported:(BOOL)a12 backlightDimmedFactor:(float)a13;
- (BOOL)wantsPanic;
- (NSString)abortReasonString;
- (NSString)description;
- (double)panicDelay;
- (void)setSleepImminentAbortReason;
@end

@implementation BLSHOSInterfaceProviderAbortContext

- (BLSHOSInterfaceProviderAbortContext)initWithWatchdogType:(unint64_t)a3 cbDisplayMode:(int64_t)a4 cbFlipbookState:(int64_t)a5 caDisplayState:(int64_t)a6 completedCADisplayState:(int64_t)a7 suppressionServiceActive:(BOOL)a8 flipbookTransparent:(BOOL)a9 deviceSupportsAlwaysOn:(BOOL)a10 deviceSupportsAlwaysOnFlipbook:(BOOL)a11 displayStateClientSupported:(BOOL)a12 backlightDimmedFactor:(float)a13
{
  v21.receiver = self;
  v21.super_class = BLSHOSInterfaceProviderAbortContext;
  result = [(BLSHOSInterfaceProviderAbortContext *)&v21 init];
  if (result)
  {
    result->_watchdogType = a3;
    result->_cbDisplayMode = a4;
    result->_cbFlipbookState = a5;
    result->_caDisplayState = a6;
    result->_completedCADisplayState = a7;
    result->_suppressionServiceActive = a8;
    result->_flipbookTransparent = a9;
    result->_deviceSupportsAlwaysOn = a10;
    result->_deviceSupportsAlwaysOnFlipbook = a11;
    result->_displayStateClientSupported = a12;
    result->_backlightDimmedFactor = a13;
    if (a3 <= 2)
    {
      result->_abortReason = qword_21FDA51D0[a3];
    }
  }

  return result;
}

- (NSString)abortReasonString
{
  v2 = self->_abortReason - 11;
  if (v2 > 0xA)
  {
    return @"OSIP_UNKNOWN";
  }

  else
  {
    return &off_27841E6B0[v2]->isa;
  }
}

- (double)panicDelay
{
  result = 30.0;
  if ((self->_abortReason & 0xFFFFFFFFFFFFFFFELL) == 0x14)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)wantsPanic
{
  v26 = *MEMORY[0x277D85DE8];
  abortReason = self->_abortReason;
  if (abortReason > 0x15)
  {
    goto LABEL_17;
  }

  if (((1 << abortReason) & 0x205000) != 0)
  {
    v6 = bls_diagnostics_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_abortReason;
      v8 = [(BLSHOSInterfaceProviderAbortContext *)self abortReasonString];
      *buf = 134218242;
      v23 = v10;
      v24 = 2114;
      v25 = v8;
      v9 = "_abortReason=%llu (%{public}@) wantsPanic:YES";
      goto LABEL_9;
    }

LABEL_10:
    v11 = 1;
LABEL_20:

    goto LABEL_21;
  }

  if (((1 << abortReason) & 0x2800) == 0)
  {
    if (abortReason == 20)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
      v20 = @"panicOnCoreAnimationWatchdog";
      v21 = MEMORY[0x277CBEC28];
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      [v6 registerDefaults:v12];

      if ([v6 BOOLForKey:@"panicOnCoreAnimationWatchdog"])
      {
        v13 = bls_diagnostics_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = self->_abortReason;
          v15 = [(BLSHOSInterfaceProviderAbortContext *)self abortReasonString];
          *buf = 134218242;
          v23 = v14;
          v24 = 2114;
          v25 = v15;
          _os_log_impl(&dword_21FD11000, v13, OS_LOG_TYPE_DEFAULT, "_abortReason=%llu (%{public}@) com.apple.BacklightServices panicOnCoreAnimationWatchdog:YES wantsPanic:YES", buf, 0x16u);
        }

        goto LABEL_10;
      }

LABEL_19:
      v11 = 0;
      goto LABEL_20;
    }

LABEL_17:
    v6 = bls_diagnostics_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_abortReason;
      v17 = [(BLSHOSInterfaceProviderAbortContext *)self abortReasonString];
      *buf = 134218242;
      v23 = v16;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEFAULT, "_abortReason=%llu (%{public}@) wantsPanic:NO", buf, 0x16u);
    }

    goto LABEL_19;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
  v5 = [v4 BOOLForKey:@"panicOnCoreBrightnessWatchdog"];

  if (v5)
  {
    v6 = bls_diagnostics_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_abortReason;
      v8 = [(BLSHOSInterfaceProviderAbortContext *)self abortReasonString];
      *buf = 134218242;
      v23 = v7;
      v24 = 2114;
      v25 = v8;
      v9 = "_abortReason=%llu (%{public}@) com.apple.BacklightServices panicOnCoreBrightnessWatchdog:YES wantsPanic:YES";
LABEL_9:
      _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEFAULT, v9, buf, 0x16u);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v11 = 0;
LABEL_21:
  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)setSleepImminentAbortReason
{
  abortReason = self->_abortReason;
  switch(abortReason)
  {
    case 0xBuLL:
      v3 = 12;
      break;
    case 0x14uLL:
      v3 = 21;
      break;
    case 0xDuLL:
      v3 = 14;
      break;
    default:
      return;
  }

  self->_abortReason = v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  watchdogType = self->_watchdogType;
  if (watchdogType > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_27841E708[watchdogType];
  }

  [v3 appendString:v6 withName:@"watchdogType"];
  v7 = NSStringFromCBDisplayMode_bls(self->_cbDisplayMode);
  [v4 appendString:v7 withName:@"cbDisplayMode"];

  v8 = NSStringFromCBFlipbookState_bls(self->_cbFlipbookState);
  [v4 appendString:v8 withName:@"cbFlipbookState"];

  caDisplayState = self->_caDisplayState;
  completedCADisplayState = self->_completedCADisplayState;
  v11 = NSStringFromCADisplayState();
  if (caDisplayState == completedCADisplayState)
  {
    v12 = @"caDisplayState";
  }

  else
  {
    [v4 appendString:v11 withName:@"pendingCADisplayState"];

    v13 = self->_completedCADisplayState;
    v11 = NSStringFromCADisplayState();
    v12 = @"completedCADisplayState";
  }

  [v4 appendString:v11 withName:v12];

  v14 = [v4 appendBool:self->_suppressionServiceActive withName:@"suppressionServiceActive"];
  v15 = [v4 appendBool:self->_flipbookTransparent withName:@"flipbookTransparent"];
  v16 = [v4 appendBool:self->_deviceSupportsAlwaysOn withName:@"supportsAlwaysOn"];
  v17 = [v4 appendBool:self->_deviceSupportsAlwaysOnFlipbook withName:@"supportsFlipbook"];
  v18 = [v4 appendBool:self->_displayStateClientSupported withName:@"displayStateClientSupported"];
  v19 = [v4 appendFloat:@"backlightDimmedFactor" withName:self->_backlightDimmedFactor];
  v20 = [v4 build];

  return v20;
}

@end