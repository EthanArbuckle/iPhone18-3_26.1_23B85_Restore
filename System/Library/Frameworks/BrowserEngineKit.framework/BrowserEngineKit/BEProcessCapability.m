@interface BEProcessCapability
+ (id)mediaPlaybackAndCaptureWithEnvironment:(id)a3;
- (BEProcessCapability)init;
- (id)requestWithError:(id *)a3;
@end

@implementation BEProcessCapability

+ (id)mediaPlaybackAndCaptureWithEnvironment:(id)a3
{
  v4 = type metadata accessor for ProcessCapability(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19D503500(a3 + OBJC_IVAR___BEMediaEnvironment_inner, v7, type metadata accessor for MediaEnvironment);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for BEProcessCapability(0);
  v9 = objc_allocWithZone(v8);
  sub_19D503500(v7, v9 + OBJC_IVAR___BEProcessCapability_inner, type metadata accessor for ProcessCapability);
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_19D5041C0(v7, type metadata accessor for ProcessCapability);

  return v10;
}

- (id)requestWithError:(id *)a3
{
  v8[3] = &type metadata for Process;
  v8[4] = &off_1F10D2E00;
  v3 = self;
  sub_19D503A64(v8, 0, 0, v9);

  __swift_destroy_boxed_opaque_existential_0(v8);
  v4 = v9[0];
  v5 = v9[1];
  type metadata accessor for _BEProcessCapabilityGrant();
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v5;

  return v6;
}

- (BEProcessCapability)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end