@interface LegacyArtworkLoader
- (void)imageRequest:(id)a3 didFailWithError:(id)a4;
- (void)imageRequest:(id)a3 didLoadImage:(id)a4;
@end

@implementation LegacyArtworkLoader

- (void)imageRequest:(id)a3 didLoadImage:(id)a4
{
  v5 = a3;
  v6 = a4;

  sub_386820(v5, a4, 0);
}

- (void)imageRequest:(id)a3 didFailWithError:(id)a4
{
  v5 = a3;
  v6 = a4;

  sub_386820(v5, 0, a4);
}

@end