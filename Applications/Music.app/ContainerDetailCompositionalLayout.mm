@interface ContainerDetailCompositionalLayout
- (_TtC5Music34ContainerDetailCompositionalLayout)initWithCoder:(id)coder;
- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSection:(id)section;
- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSection:(id)section configuration:(id)configuration;
- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSection:(id)section sectionProvider:(id)provider configuration:(id)configuration;
- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSectionProvider:(id)provider;
- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
@end

@implementation ContainerDetailCompositionalLayout

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = type metadata accessor for ContainerDetailCompositionalLayout();
  v14.receiver = selfCopy;
  v14.super_class = v10;
  v11 = [(ContainerDetailCompositionalLayout *)&v14 layoutAttributesForItemAtIndexPath:isa];

  v12 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes);
  if (v12)
  {

    v12(v11, v7);
    sub_100020438(v12);
  }

  (*(v5 + 8))(v7, v4);

  return v11;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
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

- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSection:(id)section
{
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes);
  v6 = type metadata accessor for ContainerDetailCompositionalLayout();
  *v5 = 0;
  v5[1] = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(ContainerDetailCompositionalLayout *)&v8 initWithSection:section];
}

- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSection:(id)section configuration:(id)configuration
{
  v7 = (&self->super.super.super.isa + OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes);
  v8 = type metadata accessor for ContainerDetailCompositionalLayout();
  *v7 = 0;
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = v8;
  return [(ContainerDetailCompositionalLayout *)&v10 initWithSection:section configuration:configuration];
}

- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSectionProvider:(id)provider
{
  v4 = _Block_copy(provider);
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

- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration
{
  v6 = _Block_copy(provider);
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
  configurationCopy = configuration;

  v13.receiver = self;
  v13.super_class = type metadata accessor for ContainerDetailCompositionalLayout();
  v11 = [(ContainerDetailCompositionalLayout *)&v13 initWithSectionProvider:v9 configuration:configurationCopy];

  _Block_release(v9);
  return v11;
}

- (_TtC5Music34ContainerDetailCompositionalLayout)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ContainerDetailCompositionalLayout();
  coderCopy = coder;
  v6 = [(ContainerDetailCompositionalLayout *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

- (_TtC5Music34ContainerDetailCompositionalLayout)initWithSection:(id)section sectionProvider:(id)provider configuration:(id)configuration
{
  v7 = _Block_copy(provider);
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

  sectionCopy = section;
  return sub_1006A80C0(section, v7, v8, configuration);
}

@end