@interface NSObject(ASDTPowerState)
- (uint64_t)asdtPowerStateChange:()ASDTPowerState;
@end

@implementation NSObject(ASDTPowerState)

- (uint64_t)asdtPowerStateChange:()ASDTPowerState
{
  if ([a1 conformsToProtocol:&unk_285356750])
  {
    v5 = a1;
    v6 = asdtPowerStateFromTransition([v5 powerState], a3);
    v7 = [v5 name];
    v15[0] = 0;
    strlcpy(v15, [v7 UTF8String], 9uLL);
    v15[1] = 0;

    v8 = asdtPowerTransitionUpwards(a3);
    [v5 powerState];
    kdebug_trace();
    if (v6 == [v5 powerState])
    {
      v9 = 0;
LABEL_30:

      return v9;
    }

    v9 = 0;
    if (v6 <= 1886413169)
    {
      switch(v6)
      {
        case 0:
          v9 = 2003329396;
          goto LABEL_30;
        case 0x69616374:
          v10 = [v5 performPowerStateInactive:a3];
          break;
        case 0x69646C65:
          v10 = [v5 performPowerStateIdle:a3];
          break;
        default:
          goto LABEL_28;
      }
    }

    else if (v6 > 1920298605)
    {
      if (v6 == 1920298606)
      {
        v10 = [v5 performPowerStateOn];
      }

      else
      {
        if (v6 != 1936483696)
        {
          goto LABEL_28;
        }

        v10 = [v5 performPowerStateSleep];
      }
    }

    else
    {
      if (v6 != 1886413170)
      {
        if (v6 == 1886876269)
        {
          v10 = [v5 performPowerStatePrewarm:a3];
          goto LABEL_21;
        }

LABEL_28:
        [v5 setPowerState:v6];
LABEL_29:
        [v5 powerState];
        kdebug_trace();
        goto LABEL_30;
      }

      v10 = [v5 performPowerStatePrepare:a3];
    }

LABEL_21:
    v9 = v10;
    v11 = v8 ^ 1;
    if (!v10)
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      v12 = [v5 pmNoStateChangeOnFailure];
      v13 = a3 == 1768843636 ? 1 : v12;
      if (v13)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_28;
  }

  return 560227702;
}

@end