@interface CollectionLockupArtwork
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation CollectionLockupArtwork

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CollectionLockupArtwork();
  v2 = v5.receiver;
  [(CollectionLockupArtwork *)&v5 layoutSubviews];
  sub_1004D4530(v4);
  sub_10000CF78(v4, v4[3]);
  sub_10076422C();
  traitCollection = [v2 traitCollection];
  sub_10076E0EC();

  sub_10000CD74(v4);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  traitCollection = [(CollectionLockupArtwork *)selfCopy traitCollection];
  sub_1004D4530(v11);
  sub_10000CF78(v11, v11[3]);
  sub_10076E0FC();
  v6 = v5;
  v8 = v7;

  sub_10000CD74(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end