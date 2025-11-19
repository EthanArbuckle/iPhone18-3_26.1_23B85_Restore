@interface ContainerDetailCompositionalLayout
- (_TtC5Music34ContainerDetailCompositionalLayout)initWithCoder:(id)a3;
- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSection:(id)a3;
- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSection:(id)a3 configuration:(id)a4;
- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSection:(id)a3 sectionProvider:(id)a4 configuration:(id)a5;
- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSectionProvider:(id)a3;
- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSectionProvider:(id)a3 configuration:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
@end

@implementation ContainerDetailCompositionalLayout

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = type metadata accessor for ContainerDetailCompositionalLayout();
  v14.receiver = v8;
  v14.super_class = v10;
  v11 = [(ContainerDetailCompositionalLayout *)&v14 layoutAttributesForItemAtIndexPath:isa];

  v12 = *(&v8->super.super.super.isa + OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes);
  if (v12)
  {

    v12(v11, v7);
    sub_100020438(v12);
  }

  (*(v5 + 8))(v7, v4);

  return v11;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_1006A79E8(x, y, width, height);

  if (v8)
  {
    sub_100009F78(0, &qword_10119E3E0);
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSection:(id)a3
{
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes);
  v6 = type metadata accessor for ContainerDetailCompositionalLayout();
  *v5 = 0;
  v5[1] = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(ContainerDetailCompositionalLayout *)&v8 initWithSection:a3];
}

- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSection:(id)a3 configuration:(id)a4
{
  v7 = (&self->super.super.super.isa + OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes);
  v8 = type metadata accessor for ContainerDetailCompositionalLayout();
  *v7 = 0;
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = v8;
  return [(ContainerDetailCompositionalLayout *)&v10 initWithSection:a3 configuration:a4];
}

- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSectionProvider:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes);
  *v6 = 0;
  v6[1] = 0;
  aBlock[4] = sub_1006ABD54;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010BA7B8;
  v7 = _Block_copy(aBlock);

  v10.receiver = self;
  v10.super_class = type metadata accessor for ContainerDetailCompositionalLayout();
  v8 = [(ContainerDetailCompositionalLayout *)&v10 initWithSectionProvider:v7];

  _Block_release(v7);
  return v8;
}

- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSectionProvider:(id)a3 configuration:(id)a4
{
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes);
  *v8 = 0;
  v8[1] = 0;
  aBlock[4] = sub_1006ABD54;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010BA768;
  v9 = _Block_copy(aBlock);
  v10 = a4;

  v13.receiver = self;
  v13.super_class = type metadata accessor for ContainerDetailCompositionalLayout();
  v11 = [(ContainerDetailCompositionalLayout *)&v13 initWithSectionProvider:v9 configuration:v10];

  _Block_release(v9);
  return v11;
}

- (_TtC5Music34ContainerDetailCompositionalLayout)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ContainerDetailCompositionalLayout();
  v5 = a3;
  v6 = [(ContainerDetailCompositionalLayout *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSection:(id)a3 sectionProvider:(id)a4 configuration:(id)a5
{
  v7 = _Block_copy(a4);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1006AA378;
  }

  else
  {
    v8 = 0;
  }

  v9 = a3;
  return sub_1006A80C0(a3, v7, v8, a5);
}

@end