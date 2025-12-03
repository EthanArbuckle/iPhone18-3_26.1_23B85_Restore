@interface WarlockPatchworkQuad
- (_TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad)init;
- (void)renderWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)setupForQuadView:(id)view;
@end

@implementation WarlockPatchworkQuad

- (void)setupForQuadView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_2FE10();
}

- (void)renderWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  swift_unknownObjectRetain();
  descriptorCopy = descriptor;
  selfCopy = self;
  sub_2E18C(buffer, descriptorCopy);
  swift_unknownObjectRelease();
}

- (_TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end