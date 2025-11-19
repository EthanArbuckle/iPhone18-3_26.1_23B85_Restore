@interface UIImageView
- (void)setImageBundleIdentifier:(id)a3;
@end

@implementation UIImageView

- (void)setImageBundleIdentifier:(id)a3
{
  v6 = a3;
  objc_setAssociatedObject(self, "imageBundleIdentifier", v6, 3);
  if (v6)
  {
    v4 = +[UIScreen mainScreen];
    [v4 scale];
    v5 = [UIImage _applicationIconImageForBundleIdentifier:v6 format:2 scale:?];
    [(UIImageView *)self setImage:v5];
  }
}

@end