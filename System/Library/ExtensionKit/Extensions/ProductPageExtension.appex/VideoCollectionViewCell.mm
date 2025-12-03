@interface VideoCollectionViewCell
- (_TtC20ProductPageExtension23VideoCollectionViewCell)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension23VideoCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation VideoCollectionViewCell

- (_TtC20ProductPageExtension23VideoCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_10076475C();
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = type metadata accessor for VideoCollectionViewCell();
  height = [(VideoCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
  contentView = [(VideoCollectionViewCell *)height contentView];
  [contentView setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return height;
}

- (_TtC20ProductPageExtension23VideoCollectionViewCell)initWithCoder:(id)coder
{
  sub_10076475C();
  swift_unknownObjectWeakInit();
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1005C75E0();
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for VideoCollectionViewCell();
  v2 = v13.receiver;
  [(VideoCollectionViewCell *)&v13 layoutSubviews];
  contentView = [v2 contentView];
  sub_1000ACA5C();
  sub_10076422C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong setFrame:{v5, v7, v9, v11}];
}

@end