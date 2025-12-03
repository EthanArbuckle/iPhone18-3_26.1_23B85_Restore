@interface NSDate(BaseBoard)
- (id)bs_dateByAddingDays:()BaseBoard;
@end

@implementation NSDate(BaseBoard)

- (id)bs_dateByAddingDays:()BaseBoard
{
  v5 = CFCalendarCopyCurrent();
  if (v5)
  {
    v6 = v5;
    [self timeIntervalSinceReferenceDate];
    at = v7;
    if (CFCalendarAddComponents(v6, &at, 0, "d", a3))
    {
      v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:at];
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end