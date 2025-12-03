@interface BKSceneProviderBridge
- (BKSceneProviderBridge)init;
- (void)registerWindowScene:(id)scene containerHost:(id)host;
@end

@implementation BKSceneProviderBridge

- (void)registerWindowScene:(id)scene containerHost:(id)host
{
  sceneCopy = scene;
  hostCopy = host;
  sub_1000076D8(v9);
  sub_10000E3E8(v9, v9[3]);
  sub_1001F1160(&qword_100AF6028);
  sub_100798CD4();
  if (v8)
  {
    sub_10000E3E8(v7, v8);
    sub_10079B054();

    sub_1000074E0(v7);
    sub_1000074E0(v9);
  }

  else
  {
    __break(1u);
  }
}

- (BKSceneProviderBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneProviderBridge();
  return [(BKSceneProviderBridge *)&v3 init];
}

@end