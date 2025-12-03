@interface ActivityCarPlayHostViewController
- (_TtC18ActivityUIServices33ActivityCarPlayHostViewController)initWithActivityDescriptor:(id)descriptor systemMetricsRequest:(id)request targetBundleIdentifier:(id)identifier;
- (_TtC18ActivityUIServices33ActivityCarPlayHostViewController)initWithActivitySceneDescriptor:(id)descriptor targetBundleIdentifier:(id)identifier;
- (_TtC18ActivityUIServices33ActivityCarPlayHostViewController)initWithCoder:(id)coder;
@end

@implementation ActivityCarPlayHostViewController

- (_TtC18ActivityUIServices33ActivityCarPlayHostViewController)initWithActivityDescriptor:(id)descriptor systemMetricsRequest:(id)request targetBundleIdentifier:(id)identifier
{
  v7 = sub_18E65F4C0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E6220E4(&qword_1ED764FA8);
  sub_18E65F670();
  if (identifier)
  {
    v11 = sub_18E65F900();
    identifier = v12;
  }

  else
  {
    v11 = 0;
  }

  requestCopy = request;
  v14 = sub_18E65DE64(v10, requestCopy, v11, identifier);

  return v14;
}

- (_TtC18ActivityUIServices33ActivityCarPlayHostViewController)initWithCoder:(id)coder
{
  result = sub_18E65FCC0();
  __break(1u);
  return result;
}

- (_TtC18ActivityUIServices33ActivityCarPlayHostViewController)initWithActivitySceneDescriptor:(id)descriptor targetBundleIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end