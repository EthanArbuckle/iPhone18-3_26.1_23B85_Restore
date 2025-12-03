@interface AnnotationCollectionViewCell.ItemView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation AnnotationCollectionViewCell.ItemView

- (_TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_leadingPairLabels) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_trailingPairLabels) = _swiftEmptyArrayStorage;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  ObjectType = swift_getObjectType();
  v4 = sub_10076D1FC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076720C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = self;
  v13.super_class = ObjectType;
  selfCopy = self;
  [(AnnotationCollectionViewCell.ItemView *)&v13 layoutSubviews];
  sub_10056E288();
  sub_10076422C();
  sub_1007671CC();

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  v5 = sub_10076720C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10056E288();
  sub_1007671BC();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  swift_unknownObjectRelease();

  (*(v6 + 8))(v8, v5);
  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.var3 = v21;
  result.var2 = v20;
  result.var1 = v19;
  result.var0 = v18;
  return result;
}

@end