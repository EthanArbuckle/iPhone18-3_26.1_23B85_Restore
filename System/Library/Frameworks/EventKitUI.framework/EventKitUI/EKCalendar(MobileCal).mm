@interface EKCalendar(MobileCal)
- (id)uiColor;
@end

@implementation EKCalendar(MobileCal)

- (id)uiColor
{
  cGColor = [self CGColor];
  if (cGColor)
  {
    cGColor = [MEMORY[0x1E69DC888] colorWithCGColor:cGColor];
  }

  return cGColor;
}

@end