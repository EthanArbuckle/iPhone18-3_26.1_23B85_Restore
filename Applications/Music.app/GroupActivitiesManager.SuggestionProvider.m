@interface GroupActivitiesManager.SuggestionProvider
- (UIActivityItemsConfigurationReading)activityItemsConfiguration;
- (_TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider)init;
@end

@implementation GroupActivitiesManager.SuggestionProvider

- (_TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_pendingRegistration);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v5 = self + OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_playingItemSuggestion;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 8) = 0;
  v6 = self + OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_containerItemSuggestion;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 8) = 0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(GroupActivitiesManager.SuggestionProvider *)&v8 init];
}

- (UIActivityItemsConfigurationReading)activityItemsConfiguration
{
  v2 = self;
  v3 = GroupActivitiesManager.SuggestionProvider.activityItemsConfiguration.getter();

  return v3;
}

@end