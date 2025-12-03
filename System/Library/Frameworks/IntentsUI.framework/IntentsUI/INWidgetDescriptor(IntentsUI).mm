@interface INWidgetDescriptor(IntentsUI)
- (double)preferredSize;
@end

@implementation INWidgetDescriptor(IntentsUI)

- (double)preferredSize
{
  preferredSizeClass = [self preferredSizeClass];
  if (preferredSizeClass > 4)
  {
    return 360.0;
  }

  result = dbl_22CA489C0[preferredSizeClass];
  v3 = qword_22CA489E8[preferredSizeClass];
  return result;
}

@end