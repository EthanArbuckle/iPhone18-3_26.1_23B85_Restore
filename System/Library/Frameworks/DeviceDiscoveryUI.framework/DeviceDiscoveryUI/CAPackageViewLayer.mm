@interface CAPackageViewLayer
- (_TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer)init;
- (_TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer)initWithCoder:(id)coder;
- (_TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer)initWithLayer:(id)layer;
- (void)layoutSublayers;
@end

@implementation CAPackageViewLayer

- (void)layoutSublayers
{
  selfCopy = self;
  sub_2380B6CDC();
}

- (_TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer_packageLayer) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CAPackageViewLayer();
  return [(CAPackageViewLayer *)&v3 init];
}

- (_TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_23815534C();
  swift_unknownObjectRelease();
  *(&self->super.super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer_packageLayer) = 0;
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v4 = sub_2381555BC();
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAPackageViewLayer();
  v5 = [(CAPackageViewLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

- (_TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer_packageLayer) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAPackageViewLayer();
  coderCopy = coder;
  v5 = [(CAPackageViewLayer *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end