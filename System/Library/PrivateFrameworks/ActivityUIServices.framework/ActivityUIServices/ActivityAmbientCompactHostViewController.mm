@interface ActivityAmbientCompactHostViewController
- (_TtC18ActivityUIServices40ActivityAmbientCompactHostViewController)initWithActivityDescriptor:(id)descriptor systemMetricsRequest:(id)request payloadID:(id)d targetBundleIdentifier:(id)identifier;
- (_TtC18ActivityUIServices40ActivityAmbientCompactHostViewController)initWithActivitySceneDescriptor:(id)descriptor targetBundleIdentifier:(id)identifier;
- (_TtC18ActivityUIServices40ActivityAmbientCompactHostViewController)initWithCoder:(id)coder;
@end

@implementation ActivityAmbientCompactHostViewController

- (_TtC18ActivityUIServices40ActivityAmbientCompactHostViewController)initWithActivityDescriptor:(id)descriptor systemMetricsRequest:(id)request payloadID:(id)d targetBundleIdentifier:(id)identifier
{
  v9 = sub_18E65F4C0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E6220E4(&qword_1ED764FA8);
  sub_18E65F670();
  if (!d)
  {
    v13 = 0;
    if (identifier)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v13 = sub_18E65F900();
  d = v14;
  if (!identifier)
  {
    goto LABEL_5;
  }

LABEL_3:
  identifier = sub_18E65F900();
  v16 = v15;
LABEL_6:
  requestCopy = request;
  v18 = sub_18E6231A8(v12, requestCopy, v13, d, identifier, v16);

  return v18;
}

- (_TtC18ActivityUIServices40ActivityAmbientCompactHostViewController)initWithCoder:(id)coder
{
  result = sub_18E65FCC0();
  __break(1u);
  return result;
}

- (_TtC18ActivityUIServices40ActivityAmbientCompactHostViewController)initWithActivitySceneDescriptor:(id)descriptor targetBundleIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end