@interface UICollectionViewCell
+ (UIEdgeInsets)visualContentInsets;
@end

@implementation UICollectionViewCell

+ (UIEdgeInsets)visualContentInsets
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end