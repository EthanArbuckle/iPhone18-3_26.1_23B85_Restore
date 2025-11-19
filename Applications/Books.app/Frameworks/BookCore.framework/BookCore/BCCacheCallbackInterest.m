@interface BCCacheCallbackInterest
- (id)description;
- (void)setDescribedImage:(id)a3;
@end

@implementation BCCacheCallbackInterest

- (void)setDescribedImage:(id)a3
{
  v4 = a3;
  [(BCCacheCallbackInterest *)self setDescribedImageShown:v4];
  v5 = [(BCCacheCallbackInterest *)self handler];
  v5[2](v5, v4, 0);
}

- (id)description
{
  v3 = [(BCCacheCallbackInterest *)self describedImageShown];
  v4 = [(BCCacheCallbackInterest *)self describedImageRequested];
  v5 = [NSString stringWithFormat:@"shown: %@, requested: %@", v3, v4];

  return v5;
}

@end