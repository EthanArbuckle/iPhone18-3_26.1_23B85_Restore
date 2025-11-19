@interface PosterLabel
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation PosterLabel

- (void)updateConstraints
{
  v2 = self;
  sub_10003AE58();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10003AEE8(a3);
}

@end