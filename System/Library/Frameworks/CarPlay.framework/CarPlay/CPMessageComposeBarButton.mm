@interface CPMessageComposeBarButton
- (CPMessageComposeBarButton)initWithImage:(UIImage *)image;
@end

@implementation CPMessageComposeBarButton

- (CPMessageComposeBarButton)initWithImage:(UIImage *)image
{
  v4.receiver = self;
  v4.super_class = CPMessageComposeBarButton;
  return [(CPBarButton *)&v4 initWithImage:image handler:0];
}

@end