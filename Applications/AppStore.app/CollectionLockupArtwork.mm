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
  sub_10062C8C0(v4);
  sub_10002A400(v4, v4[3]);
  LayoutMarginsAware<>.layoutFrame.getter();
  traitCollection = [v2 traitCollection];
  dispatch thunk of Placeable.place(at:with:)();

  sub_100007000(v4);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  traitCollection = [(CollectionLockupArtwork *)selfCopy traitCollection];
  sub_10062C8C0(v11);
  sub_10002A400(v11, v11[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v6 = v5;
  v8 = v7;

  sub_100007000(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end