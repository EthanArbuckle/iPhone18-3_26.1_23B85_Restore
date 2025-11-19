@interface UIKeyCommand
- (BOOL)crl_representsPhysicalKeyboard;
@end

@implementation UIKeyCommand

- (BOOL)crl_representsPhysicalKeyboard
{
  v3 = objc_opt_class();

  return [(UIKeyCommand *)self isMemberOfClass:v3];
}

@end