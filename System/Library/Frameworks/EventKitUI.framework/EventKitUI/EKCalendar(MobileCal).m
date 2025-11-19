@interface EKCalendar(MobileCal)
- (id)uiColor;
@end

@implementation EKCalendar(MobileCal)

- (id)uiColor
{
  v1 = [a1 CGColor];
  if (v1)
  {
    v1 = [MEMORY[0x1E69DC888] colorWithCGColor:v1];
  }

  return v1;
}

@end