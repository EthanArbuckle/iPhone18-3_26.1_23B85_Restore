@interface OSActivityEvent
- (id)fba_toString;
@end

@implementation OSActivityEvent

- (id)fba_toString
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    subsystem = [(OSActivityEvent *)self subsystem];
    if (subsystem)
    {
      subsystem2 = [(OSActivityEvent *)self subsystem];
      timestamp2 = [NSString stringWithFormat:@"[%@]", subsystem2];
    }

    else
    {
      timestamp2 = &stru_1000E2210;
    }

    timestamp = [(OSActivityEvent *)self timestamp];
    fba_toString = [timestamp fba_toString];
    process = [(OSActivityEvent *)self process];
    processID = [(OSActivityEvent *)self processID];
    eventMessage = [(OSActivityEvent *)self eventMessage];
    v10 = [NSString stringWithFormat:@"%@ %@[%d]:%@ %@", fba_toString, process, processID, timestamp2, eventMessage];
  }

  else
  {
    timestamp2 = [(OSActivityEvent *)self timestamp];
    timestamp = [(__CFString *)timestamp2 fba_toString];
    fba_toString = [(OSActivityEvent *)self process];
    processID2 = [(OSActivityEvent *)self processID];
    process = [(OSActivityEvent *)self eventMessage];
    v10 = [NSString stringWithFormat:@"%@ %@[%d]: %@", timestamp, fba_toString, processID2, process];
  }

  return v10;
}

@end