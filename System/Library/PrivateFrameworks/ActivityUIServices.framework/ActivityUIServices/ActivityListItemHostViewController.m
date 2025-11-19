@interface ActivityListItemHostViewController
- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithActivityDescriptor:(id)a3 systemMetricsRequest:(id)a4 targetBundleIdentifier:(id)a5;
- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithActivitySceneDescriptor:(id)a3 targetBundleIdentifier:(id)a4;
- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithCoder:(id)a3;
@end

@implementation ActivityListItemHostViewController

- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithActivityDescriptor:(id)a3 systemMetricsRequest:(id)a4 targetBundleIdentifier:(id)a5
{
  v7 = sub_18E65F4C0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E6220E4(&qword_1ED764FA8);
  sub_18E65F670();
  if (a5)
  {
    v11 = sub_18E65F900();
    a5 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = a4;
  v14 = sub_18E621E84(v10, v13, v11, a5);

  return v14;
}

- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithCoder:(id)a3
{
  result = sub_18E65FCC0();
  __break(1u);
  return result;
}

- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithActivitySceneDescriptor:(id)a3 targetBundleIdentifier:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end