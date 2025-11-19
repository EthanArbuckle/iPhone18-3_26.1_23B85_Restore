@interface ActivityBannerHostViewController
- (_TtC18ActivityUIServices32ActivityBannerHostViewController)initWithActivityDescriptor:(id)a3 systemMetricsRequest:(id)a4 payloadID:(id)a5 targetBundleIdentifier:(id)a6;
- (_TtC18ActivityUIServices32ActivityBannerHostViewController)initWithActivitySceneDescriptor:(id)a3 targetBundleIdentifier:(id)a4;
- (_TtC18ActivityUIServices32ActivityBannerHostViewController)initWithCoder:(id)a3;
@end

@implementation ActivityBannerHostViewController

- (_TtC18ActivityUIServices32ActivityBannerHostViewController)initWithActivityDescriptor:(id)a3 systemMetricsRequest:(id)a4 payloadID:(id)a5 targetBundleIdentifier:(id)a6
{
  v9 = sub_18E65F4C0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E6220E4(&qword_1ED764FA8);
  sub_18E65F670();
  if (!a5)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v13 = sub_18E65F900();
  a5 = v14;
  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  a6 = sub_18E65F900();
  v16 = v15;
LABEL_6:
  v17 = a4;
  v18 = sub_18E63E170(v12, v17, v13, a5, a6, v16);

  return v18;
}

- (_TtC18ActivityUIServices32ActivityBannerHostViewController)initWithCoder:(id)a3
{
  result = sub_18E65FCC0();
  __break(1u);
  return result;
}

- (_TtC18ActivityUIServices32ActivityBannerHostViewController)initWithActivitySceneDescriptor:(id)a3 targetBundleIdentifier:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end