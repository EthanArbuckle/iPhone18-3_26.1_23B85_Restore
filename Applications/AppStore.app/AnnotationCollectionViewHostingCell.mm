@interface AnnotationCollectionViewHostingCell
- (_TtC8AppStore35AnnotationCollectionViewHostingCell)initWithCoder:(id)coder;
- (_TtC8AppStore35AnnotationCollectionViewHostingCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
@end

@implementation AnnotationCollectionViewHostingCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(AnnotationCollectionViewHostingCell *)&v3 prepareForReuse];
  type metadata accessor for AnnotationViewState();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC8AppStore35AnnotationCollectionViewHostingCell_viewState] = AnnotationViewState.init()();
}

- (_TtC8AppStore35AnnotationCollectionViewHostingCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8AppStore35AnnotationCollectionViewHostingCell_viewState;
  type metadata accessor for AnnotationViewState();
  swift_allocObject();
  *(&self->super.super.super.super.super.super.isa + v9) = AnnotationViewState.init()();
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(SwiftUIViewHostingCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC8AppStore35AnnotationCollectionViewHostingCell)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC8AppStore35AnnotationCollectionViewHostingCell_viewState;
  type metadata accessor for AnnotationViewState();
  swift_allocObject();
  coderCopy = coder;
  *(&self->super.super.super.super.super.super.isa + v6) = AnnotationViewState.init()();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(SwiftUIViewHostingCell *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end