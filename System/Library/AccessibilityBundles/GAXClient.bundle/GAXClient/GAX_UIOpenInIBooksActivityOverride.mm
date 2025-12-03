@interface GAX_UIOpenInIBooksActivityOverride
- (BOOL)canPerformWithActivityItems:(id)items;
@end

@implementation GAX_UIOpenInIBooksActivityOverride

- (BOOL)canPerformWithActivityItems:(id)items
{
  v7.receiver = self;
  v7.super_class = GAX_UIOpenInIBooksActivityOverride;
  if ([(GAX_UIOpenInIBooksActivityOverride *)&v7 canPerformWithActivityItems:items])
  {
    v3 = +[GAXClient sharedInstance];
    isActive = [v3 isActive];

    v5 = isActive ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

@end