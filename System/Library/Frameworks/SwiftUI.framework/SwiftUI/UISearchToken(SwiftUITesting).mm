@interface UISearchToken(SwiftUITesting)
- (id)swiftui_image;
- (id)swiftui_text;
@end

@implementation UISearchToken(SwiftUITesting)

- (id)swiftui_text
{
  if (objc_opt_respondsToSelector())
  {
    text = [self text];
  }

  else
  {
    text = 0;
  }

  return text;
}

- (id)swiftui_image
{
  if (objc_opt_respondsToSelector())
  {
    image = [self image];
  }

  else
  {
    image = 0;
  }

  return image;
}

@end