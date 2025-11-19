@interface AssistiveAccessApplicationSceneSpecification
- (Class)clientSettingsClass;
- (Class)settingsClass;
- (_TtC7SwiftUI44AssistiveAccessApplicationSceneSpecification)init;
@end

@implementation AssistiveAccessApplicationSceneSpecification

- (Class)settingsClass
{
  type metadata accessor for ClarityUIApplicationSceneSettings();

  return swift_getObjCClassFromMetadata();
}

- (Class)clientSettingsClass
{
  type metadata accessor for ClarityUIApplicationSceneClientSettings();

  return swift_getObjCClassFromMetadata();
}

- (_TtC7SwiftUI44AssistiveAccessApplicationSceneSpecification)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AssistiveAccessApplicationSceneSpecification();
  return [(AssistiveAccessApplicationSceneSpecification *)&v3 init];
}

@end