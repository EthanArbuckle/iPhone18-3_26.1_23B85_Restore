@interface NonSelectableCollectionViewListCell
+ (id)reuseIdentifier;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation NonSelectableCollectionViewListCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)updateConfigurationUsingState:(id)state
{
  v4 = +[UIBackgroundConfiguration clearConfiguration];
  [(NonSelectableCollectionViewListCell *)self setBackgroundConfiguration:v4];
}

@end