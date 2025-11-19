@interface OSActivityEvent
- (id)fba_toString;
@end

@implementation OSActivityEvent

- (id)fba_toString
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(OSActivityEvent *)self subsystem];
    if (v3)
    {
      v4 = [(OSActivityEvent *)self subsystem];
      v5 = [NSString stringWithFormat:@"[%@]", v4];
    }

    else
    {
      v5 = &stru_1000E2210;
    }

    v6 = [(OSActivityEvent *)self timestamp];
    v7 = [v6 fba_toString];
    v9 = [(OSActivityEvent *)self process];
    v11 = [(OSActivityEvent *)self processID];
    v12 = [(OSActivityEvent *)self eventMessage];
    v10 = [NSString stringWithFormat:@"%@ %@[%d]:%@ %@", v7, v9, v11, v5, v12];
  }

  else
  {
    v5 = [(OSActivityEvent *)self timestamp];
    v6 = [(__CFString *)v5 fba_toString];
    v7 = [(OSActivityEvent *)self process];
    v8 = [(OSActivityEvent *)self processID];
    v9 = [(OSActivityEvent *)self eventMessage];
    v10 = [NSString stringWithFormat:@"%@ %@[%d]: %@", v6, v7, v8, v9];
  }

  return v10;
}

@end