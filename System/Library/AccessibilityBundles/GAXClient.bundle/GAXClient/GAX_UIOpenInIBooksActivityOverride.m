@interface GAX_UIOpenInIBooksActivityOverride
- (BOOL)canPerformWithActivityItems:(id)a3;
@end

@implementation GAX_UIOpenInIBooksActivityOverride

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v7.receiver = self;
  v7.super_class = GAX_UIOpenInIBooksActivityOverride;
  if ([(GAX_UIOpenInIBooksActivityOverride *)&v7 canPerformWithActivityItems:a3])
  {
    v3 = +[GAXClient sharedInstance];
    v4 = [v3 isActive];

    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

@end