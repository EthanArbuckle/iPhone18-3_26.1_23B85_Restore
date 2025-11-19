@interface VideoCollectionViewCell
- (_TtC18ASMessagesProvider23VideoCollectionViewCell)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider23VideoCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation VideoCollectionViewCell

- (_TtC18ASMessagesProvider23VideoCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_75DB70();
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = type metadata accessor for VideoCollectionViewCell();
  v8 = [(VideoCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
  v9 = [(VideoCollectionViewCell *)v8 contentView];
  [v9 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v8;
}

- (_TtC18ASMessagesProvider23VideoCollectionViewCell)initWithCoder:(id)a3
{
  sub_75DB70();
  swift_unknownObjectWeakInit();
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_5B8450();
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for VideoCollectionViewCell();
  v2 = v13.receiver;
  [(VideoCollectionViewCell *)&v13 layoutSubviews];
  v3 = [v2 contentView];
  sub_2630C();
  sub_75D650();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong setFrame:{v5, v7, v9, v11}];
}

@end