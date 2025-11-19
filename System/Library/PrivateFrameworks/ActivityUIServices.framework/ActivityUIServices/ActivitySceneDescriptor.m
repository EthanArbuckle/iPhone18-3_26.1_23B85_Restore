@interface ActivitySceneDescriptor
- (NSData)activityDescriptor;
- (NSString)activityIdentifier;
- (NSString)payloadID;
- (_TtC18ActivityUIServices20ActivitySceneMetrics)metrics;
- (_TtC18ActivityUIServices23ActivitySceneDescriptor)init;
- (_TtC18ActivityUIServices23ActivitySceneDescriptor)initWithActivitySceneType:(int64_t)a3 activityDescriptor:(id)a4 metricsRequest:(id)a5 payloadID:(id)a6;
@end

@implementation ActivitySceneDescriptor

- (NSString)activityIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier);
  v3 = *(self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier + 8);

  v4 = sub_18E65F8F0();

  return v4;
}

- (NSData)activityDescriptor
{
  v3 = sub_18E65F4C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor, v3, v6);
  sub_18E64CDEC(&qword_1ED764FA8, MEMORY[0x1E6959B98]);
  v9 = sub_18E65F680();
  (*(v4 + 8))(v8, v3);

  return v9;
}

- (NSString)payloadID
{
  if (*(self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID);
    v3 = *(self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID + 8);

    v4 = sub_18E65F8F0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_TtC18ActivityUIServices20ActivitySceneMetrics)metrics
{
  v2 = type metadata accessor for ActivitySceneMetrics();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets] = 0;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size] = xmmword_18E6644E0;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius] = 0x4028000000000000;
  swift_beginAccess();
  *&v3[v4] = 0;
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = [(ActivitySceneDescriptor *)&v7 init];

  return v5;
}

- (_TtC18ActivityUIServices23ActivitySceneDescriptor)initWithActivitySceneType:(int64_t)a3 activityDescriptor:(id)a4 metricsRequest:(id)a5 payloadID:(id)a6
{
  v10 = sub_18E65F4C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E64CDEC(&qword_1ED764FA8, MEMORY[0x1E6959B98]);
  sub_18E65F670();
  if (a6)
  {
    a6 = sub_18E65F900();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = a5;
  v18 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v19 = (self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier);
  *v19 = v18;
  v19[1] = v20;
  *(self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType) = a3;
  sub_18E64CDEC(&unk_1EAC894E0, MEMORY[0x1E6959B98]);
  *(self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData) = sub_18E65FD10();
  (*(v11 + 16))(self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor, v14, v10);
  *(self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest) = v17;
  v21 = (self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID);
  *v21 = a6;
  v21[1] = v16;
  v22 = type metadata accessor for ActivitySceneDescriptor();
  v25.receiver = self;
  v25.super_class = v22;
  v23 = [(ActivitySceneDescriptor *)&v25 init];
  (*(v11 + 8))(v14, v10);
  return v23;
}

- (_TtC18ActivityUIServices23ActivitySceneDescriptor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end