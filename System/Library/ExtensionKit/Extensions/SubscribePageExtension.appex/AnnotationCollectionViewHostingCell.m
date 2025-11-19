@interface AnnotationCollectionViewHostingCell
- (_TtC22SubscribePageExtension35AnnotationCollectionViewHostingCell)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension35AnnotationCollectionViewHostingCell)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
@end

@implementation AnnotationCollectionViewHostingCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(AnnotationCollectionViewHostingCell *)&v3 prepareForReuse];
  sub_100747EE4();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension35AnnotationCollectionViewHostingCell_viewState] = sub_100747ED4();
}

- (_TtC22SubscribePageExtension35AnnotationCollectionViewHostingCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension35AnnotationCollectionViewHostingCell_viewState;
  sub_100747EE4();
  swift_allocObject();
  *(&self->super.super.super.super.super.super.isa + v9) = sub_100747ED4();
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(SwiftUIViewHostingCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC22SubscribePageExtension35AnnotationCollectionViewHostingCell)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC22SubscribePageExtension35AnnotationCollectionViewHostingCell_viewState;
  sub_100747EE4();
  swift_allocObject();
  v7 = a3;
  *(&self->super.super.super.super.super.super.isa + v6) = sub_100747ED4();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(SwiftUIViewHostingCell *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end