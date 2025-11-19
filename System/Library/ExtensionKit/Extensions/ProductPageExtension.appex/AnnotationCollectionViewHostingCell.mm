@interface AnnotationCollectionViewHostingCell
- (_TtC20ProductPageExtension35AnnotationCollectionViewHostingCell)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension35AnnotationCollectionViewHostingCell)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
@end

@implementation AnnotationCollectionViewHostingCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(AnnotationCollectionViewHostingCell *)&v3 prepareForReuse];
  sub_100764A0C();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35AnnotationCollectionViewHostingCell_viewState] = sub_1007649FC();
}

- (_TtC20ProductPageExtension35AnnotationCollectionViewHostingCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC20ProductPageExtension35AnnotationCollectionViewHostingCell_viewState;
  sub_100764A0C();
  swift_allocObject();
  *(&self->super.super.super.super.super.super.isa + v9) = sub_1007649FC();
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(SwiftUIViewHostingCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC20ProductPageExtension35AnnotationCollectionViewHostingCell)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC20ProductPageExtension35AnnotationCollectionViewHostingCell_viewState;
  sub_100764A0C();
  swift_allocObject();
  v7 = a3;
  *(&self->super.super.super.super.super.super.isa + v6) = sub_1007649FC();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(SwiftUIViewHostingCell *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end