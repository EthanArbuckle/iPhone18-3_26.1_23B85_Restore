@interface UIImageView
- (void)mt_configureForDisplayingArtworkWithRadius:(double)a3;
@end

@implementation UIImageView

- (void)mt_configureForDisplayingArtworkWithRadius:(double)a3
{
  v9 = [(UIImageView *)self layer];
  [v9 setCornerRadius:a3];
  v5 = [UIColor colorWithWhite:0.0 alpha:0.08];
  [v9 setBorderColor:{objc_msgSend(v5, "CGColor")}];

  v6 = +[UIScreen mainScreen];
  [v6 scale];
  v8 = v7;

  [v9 setBorderWidth:1.0 / v8];
  [(UIImageView *)self setClipsToBounds:1];
}

@end