@interface WCActiveDeviceSwitchTask
+ (id)taskStateToString:(unint64_t)a3;
- (id)description;
@end

@implementation WCActiveDeviceSwitchTask

+ (id)taskStateToString:(unint64_t)a3
{
  if (a3 <= 2)
  {
    if (!a3)
    {
      return @"Queued";
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return @"AwaitingActivationRequest";
      }

      return @"Unknown";
    }

    return @"Started";
  }

  else if (a3 > 887)
  {
    if (a3 != 888)
    {
      if (a3 == 999)
      {
        return @"Halted";
      }

      return @"Unknown";
    }

    return @"ActivationFailed";
  }

  else
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        return @"ActivationCompleted";
      }

      return @"Unknown";
    }

    return @"ActivationRequested";
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(WCActiveDeviceSwitchTask *)self clientReadyForSessionState])
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = [objc_opt_class() taskStateToString:{-[WCActiveDeviceSwitchTask taskState](self, "taskState")}];
  v8 = [v3 stringWithFormat:@"<%@: %p, clientReadyForSessionState: %s, taskState: %@>", v5, self, v6, v7];

  return v8;
}

@end