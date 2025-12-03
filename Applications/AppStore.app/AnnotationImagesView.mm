@interface AnnotationImagesView
- (BOOL)hasContent;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC8AppStore20AnnotationImagesView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation AnnotationImagesView

- (_TtC8AppStore20AnnotationImagesView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = sub_10002849C(&qword_10098B4C0);
  __chkstk_darwin(v9);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore20AnnotationImagesView_imageViews) = _swiftEmptyArrayStorage;
  type metadata accessor for AnnotationImagesView.AnnotationImageView();
  ViewRecycler.init()();
  sub_100548C64();
  ReusePool.init(recycler:limit:)();
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(AnnotationImagesView *)&v12 initWithFrame:x, y, width, height];
  [(AnnotationImagesView *)height setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  return height;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_1002A627C(v6);

  if (qword_10096E8D8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for AnnotationImagesLayout.Metrics();
  sub_1000056A8(v7, qword_1009D29A0);
  static AnnotationImagesLayout.measurements(for:fitting:metrics:in:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_unknownObjectRelease();

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.var3 = v19;
  result.var2 = v18;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (BOOL)hasContent
{
  swift_beginAccess();
  type metadata accessor for AnnotationImagesView.AnnotationImageView();
  selfCopy = self;

  v4 = Array.isNotEmpty.getter();

  return v4 & 1;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100548734();
}

@end