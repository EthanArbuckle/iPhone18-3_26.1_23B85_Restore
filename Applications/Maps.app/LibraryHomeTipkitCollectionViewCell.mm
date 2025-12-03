@interface LibraryHomeTipkitCollectionViewCell
- (_TtC4Maps35LibraryHomeTipkitCollectionViewCell)initWithCoder:(id)coder;
- (_TtC4Maps35LibraryHomeTipkitCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation LibraryHomeTipkitCollectionViewCell

- (_TtC4Maps35LibraryHomeTipkitCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps35LibraryHomeTipkitCollectionViewCell_actionButtonHandler);
  *v7 = 0;
  v7[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps35LibraryHomeTipkitCollectionViewCell____lazy_storage___tipkitView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for LibraryHomeTipkitCollectionViewCell();
  height = [(LibraryHomeTipkitCollectionViewCell *)&v10 initWithFrame:x, y, width, height];
  sub_100384AF4();

  return height;
}

- (_TtC4Maps35LibraryHomeTipkitCollectionViewCell)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps35LibraryHomeTipkitCollectionViewCell_actionButtonHandler);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps35LibraryHomeTipkitCollectionViewCell____lazy_storage___tipkitView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LibraryHomeTipkitCollectionViewCell();
  coderCopy = coder;
  v6 = [(LibraryHomeTipkitCollectionViewCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end