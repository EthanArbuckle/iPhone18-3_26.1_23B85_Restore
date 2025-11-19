@interface CAPackageViewLayer
- (_TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer)init;
- (_TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer)initWithCoder:(id)a3;
- (_TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer)initWithLayer:(id)a3;
- (void)layoutSublayers;
@end

@implementation CAPackageViewLayer

- (void)layoutSublayers
{
  v2 = self;
  sub_2380B6CDC();
}

- (_TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer_packageLayer) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CAPackageViewLayer();
  return [(CAPackageViewLayer *)&v3 init];
}

- (_TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer)initWithLayer:(id)a3
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

- (_TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer_packageLayer) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAPackageViewLayer();
  v4 = a3;
  v5 = [(CAPackageViewLayer *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end