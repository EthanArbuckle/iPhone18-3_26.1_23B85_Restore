@interface NSObject(ASDTPowerState)
- (uint64_t)asdtPowerStateChange:()ASDTPowerState;
@end

@implementation NSObject(ASDTPowerState)

- (uint64_t)asdtPowerStateChange:()ASDTPowerState
{
  if ([self conformsToProtocol:&unk_285356750])
  {
    selfCopy = self;
    v6 = asdtPowerStateFromTransition([selfCopy powerState], a3);
    name = [selfCopy name];
    v15[0] = 0;
    strlcpy(v15, [name UTF8String], 9uLL);
    v15[1] = 0;

    v8 = asdtPowerTransitionUpwards(a3);
    [selfCopy powerState];
    kdebug_trace();
    if (v6 == [selfCopy powerState])
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
          performPowerStateOn = [selfCopy performPowerStateInactive:a3];
          break;
        case 0x69646C65:
          performPowerStateOn = [selfCopy performPowerStateIdle:a3];
          break;
        default:
          goto LABEL_28;
      }
    }

    else if (v6 > 1920298605)
    {
      if (v6 == 1920298606)
      {
        performPowerStateOn = [selfCopy performPowerStateOn];
      }

      else
      {
        if (v6 != 1936483696)
        {
          goto LABEL_28;
        }

        performPowerStateOn = [selfCopy performPowerStateSleep];
      }
    }

    else
    {
      if (v6 != 1886413170)
      {
        if (v6 == 1886876269)
        {
          performPowerStateOn = [selfCopy performPowerStatePrewarm:a3];
          goto LABEL_21;
        }

LABEL_28:
        [selfCopy setPowerState:v6];
LABEL_29:
        [selfCopy powerState];
        kdebug_trace();
        goto LABEL_30;
      }

      performPowerStateOn = [selfCopy performPowerStatePrepare:a3];
    }

LABEL_21:
    v9 = performPowerStateOn;
    v11 = v8 ^ 1;
    if (!performPowerStateOn)
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      pmNoStateChangeOnFailure = [selfCopy pmNoStateChangeOnFailure];
      v13 = a3 == 1768843636 ? 1 : pmNoStateChangeOnFailure;
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