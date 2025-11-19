@interface _FBSSceneSettingsObserverImpl
- (_TtC18ActivityUIServicesP33_42B3556390A22B89B98C4663B8A10CA229_FBSSceneSettingsObserverImpl)init;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation _FBSSceneSettingsObserverImpl

- (_TtC18ActivityUIServicesP33_42B3556390A22B89B98C4663B8A10CA229_FBSSceneSettingsObserverImpl)init
{
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServicesP33_42B3556390A22B89B98C4663B8A10CA229_FBSSceneSettingsObserverImpl__observers) = MEMORY[0x1E69E7CC0];
  v3.receiver = self;
  v3.super_class = type metadata accessor for _FBSSceneSettingsObserverImpl();
  return [(_FBSSceneSettingsObserverImpl *)&v3 init];
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_18E64B310(v7);
}

@end