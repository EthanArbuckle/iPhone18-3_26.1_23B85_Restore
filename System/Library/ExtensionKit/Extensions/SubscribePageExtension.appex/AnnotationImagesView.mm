@interface AnnotationImagesView
- (BOOL)hasContent;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC22SubscribePageExtension20AnnotationImagesView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation AnnotationImagesView

- (_TtC22SubscribePageExtension20AnnotationImagesView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = sub_10000C518(&qword_1009315F0);
  __chkstk_darwin(v9);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension20AnnotationImagesView_imageViews) = _swiftEmptyArrayStorage;
  type metadata accessor for AnnotationImagesView.AnnotationImageView();
  sub_100750624();
  sub_1002E3480();
  sub_1007512E4();
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

  sub_1001580F4(v6);

  if (qword_1009207F8 != -1)
  {
    swift_once();
  }

  v7 = sub_100749944();
  sub_10000D0FC(v7, qword_10097EEC8);
  sub_1007498F4();
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

  v4 = sub_1007532D4();

  return v4 & 1;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1002E2EAC();
}

@end