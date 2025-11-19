@interface AnnotationCollectionViewCell.ItemView
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation AnnotationCollectionViewCell.ItemView

- (_TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_leadingPairLabels) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_trailingPairLabels) = _swiftEmptyArrayStorage;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  ObjectType = swift_getObjectType();
  v4 = sub_7664F0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7605B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = self;
  v13.super_class = ObjectType;
  v12 = self;
  [(AnnotationCollectionViewCell.ItemView *)&v13 layoutSubviews];
  sub_521544();
  sub_75D650();
  sub_760570();

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  v5 = sub_7605B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  v9 = self;
  sub_521544();
  sub_760560();
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