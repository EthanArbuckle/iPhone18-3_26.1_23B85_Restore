@interface UIView(ViewExtensions)
- (id)PDFKitEnclosingScrollView;
@end

@implementation UIView(ViewExtensions)

- (id)PDFKitEnclosingScrollView
{
  selfCopy = self;
  do
  {
    v2 = selfCopy;
    selfCopy = [selfCopy superview];

    if (!selfCopy)
    {
      break;
    }

    objc_opt_class();
  }

  while ((objc_opt_isKindOfClass() & 1) == 0);

  return selfCopy;
}

@end