@interface UISearchToken(SwiftUITesting)
- (id)swiftui_image;
- (id)swiftui_text;
@end

@implementation UISearchToken(SwiftUITesting)

- (id)swiftui_text
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 text];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)swiftui_image
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 image];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end