@interface AutoSettingsApplication
- (_TtC7Vehicle23AutoSettingsApplication)init;
- (id)_keyWindowForScreen:(id)a3;
@end

@implementation AutoSettingsApplication

- (id)_keyWindowForScreen:(id)a3
{
  sub_1000134C0();

  return v3;
}

- (_TtC7Vehicle23AutoSettingsApplication)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AutoSettingsApplication();
  return [(AutoSettingsApplication *)&v3 init];
}

@end