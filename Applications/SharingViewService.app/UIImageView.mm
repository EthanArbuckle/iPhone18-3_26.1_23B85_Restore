@interface UIImageView
- (void)setImageBundleIdentifier:(id)identifier;
@end

@implementation UIImageView

- (void)setImageBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_setAssociatedObject(self, "imageBundleIdentifier", identifierCopy, 3);
  if (identifierCopy)
  {
    v4 = +[UIScreen mainScreen];
    [v4 scale];
    v5 = [UIImage _applicationIconImageForBundleIdentifier:identifierCopy format:2 scale:?];
    [(UIImageView *)self setImage:v5];
  }
}

@end