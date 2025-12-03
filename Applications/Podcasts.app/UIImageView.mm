@interface UIImageView
- (void)mt_configureForDisplayingArtworkWithRadius:(double)radius;
@end

@implementation UIImageView

- (void)mt_configureForDisplayingArtworkWithRadius:(double)radius
{
  layer = [(UIImageView *)self layer];
  [layer setCornerRadius:radius];
  v5 = [UIColor colorWithWhite:0.0 alpha:0.08];
  [layer setBorderColor:{objc_msgSend(v5, "CGColor")}];

  v6 = +[UIScreen mainScreen];
  [v6 scale];
  v8 = v7;

  [layer setBorderWidth:1.0 / v8];
  [(UIImageView *)self setClipsToBounds:1];
}

@end