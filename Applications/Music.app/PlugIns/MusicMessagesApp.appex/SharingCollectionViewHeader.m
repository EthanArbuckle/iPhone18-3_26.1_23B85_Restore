@interface SharingCollectionViewHeader
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC16MusicMessagesApp27SharingCollectionViewHeader)initWithCoder:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SharingCollectionViewHeader

- (_TtC16MusicMessagesApp27SharingCollectionViewHeader)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader_layoutInvalidationHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for SharingCollectionViewHeader();
  [(SharingCollectionViewHeader *)&v6 dealloc];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SharingCollectionViewHeader();
  v2 = v3.receiver;
  [(SharingCollectionViewHeader *)&v3 prepareForReuse];
  [*&v2[OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader__label] sizeToFit];
  [v2 setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_100023978(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100023AE0();
}

@end