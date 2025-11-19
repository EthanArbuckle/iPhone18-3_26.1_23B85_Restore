@interface WarlockPatchworkQuad
- (_TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad)init;
- (void)renderWithCommandBuffer:(id)a3 passDescriptor:(id)a4;
- (void)setupForQuadView:(id)a3;
@end

@implementation WarlockPatchworkQuad

- (void)setupForQuadView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2FE10();
}

- (void)renderWithCommandBuffer:(id)a3 passDescriptor:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  sub_2E18C(a3, v7);
  swift_unknownObjectRelease();
}

- (_TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end