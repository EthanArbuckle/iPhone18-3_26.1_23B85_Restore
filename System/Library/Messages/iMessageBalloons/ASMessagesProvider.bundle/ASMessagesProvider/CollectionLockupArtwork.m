@interface CollectionLockupArtwork
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation CollectionLockupArtwork

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CollectionLockupArtwork();
  v2 = v5.receiver;
  [(CollectionLockupArtwork *)&v5 layoutSubviews];
  sub_32E8F4(v4);
  sub_B170(v4, v4[3]);
  sub_75D650();
  v3 = [v2 traitCollection];
  sub_7673E0();

  sub_BEB8(v4);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = [(CollectionLockupArtwork *)v3 traitCollection];
  sub_32E8F4(v11);
  sub_B170(v11, v11[3]);
  sub_7673F0();
  v6 = v5;
  v8 = v7;

  sub_BEB8(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end