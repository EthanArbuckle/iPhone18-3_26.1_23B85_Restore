@interface LibraryHomeTipkitCollectionViewCell
- (_TtC4Maps35LibraryHomeTipkitCollectionViewCell)initWithCoder:(id)a3;
- (_TtC4Maps35LibraryHomeTipkitCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation LibraryHomeTipkitCollectionViewCell

- (_TtC4Maps35LibraryHomeTipkitCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps35LibraryHomeTipkitCollectionViewCell_actionButtonHandler);
  *v7 = 0;
  v7[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps35LibraryHomeTipkitCollectionViewCell____lazy_storage___tipkitView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for LibraryHomeTipkitCollectionViewCell();
  v8 = [(LibraryHomeTipkitCollectionViewCell *)&v10 initWithFrame:x, y, width, height];
  sub_100384AF4();

  return v8;
}

- (_TtC4Maps35LibraryHomeTipkitCollectionViewCell)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps35LibraryHomeTipkitCollectionViewCell_actionButtonHandler);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps35LibraryHomeTipkitCollectionViewCell____lazy_storage___tipkitView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LibraryHomeTipkitCollectionViewCell();
  v5 = a3;
  v6 = [(LibraryHomeTipkitCollectionViewCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end