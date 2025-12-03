@interface ActivityListItemHostViewController
- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithActivityDescriptor:(id)descriptor systemMetricsRequest:(id)request targetBundleIdentifier:(id)identifier;
- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithActivitySceneDescriptor:(id)descriptor targetBundleIdentifier:(id)identifier;
- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithCoder:(id)coder;
@end

@implementation ActivityListItemHostViewController

- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithActivityDescriptor:(id)descriptor systemMetricsRequest:(id)request targetBundleIdentifier:(id)identifier
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
  v14 = sub_18E621E84(v10, requestCopy, v11, identifier);

  return v14;
}

- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithCoder:(id)coder
{
  result = sub_18E65FCC0();
  __break(1u);
  return result;
}

- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithActivitySceneDescriptor:(id)descriptor targetBundleIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end