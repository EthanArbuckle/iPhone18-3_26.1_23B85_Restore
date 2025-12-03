@interface ASPasskeyConfigurationSubscriberApplicator
+ (id)supportedConfigurationTypes;
- (_TtC26AuthenticationServicesCore42ASPasskeyConfigurationSubscriberApplicator)init;
- (_TtC26AuthenticationServicesCore42ASPasskeyConfigurationSubscriberApplicator)initWithAdapter:(id)adapter inPlaceUpdates:(BOOL)updates;
@end

@implementation ASPasskeyConfigurationSubscriberApplicator

- (_TtC26AuthenticationServicesCore42ASPasskeyConfigurationSubscriberApplicator)init
{
  v3 = [objc_allocWithZone(type metadata accessor for ASPasskeyConfigurationSubscriberAdapter()) init];
  v6.receiver = self;
  v6.super_class = type metadata accessor for ASPasskeyConfigurationSubscriberApplicator();
  v4 = [(RMConfigurationMultipleApplicator *)&v6 initWithAdapter:v3 inPlaceUpdates:1];

  return v4;
}

+ (id)supportedConfigurationTypes
{
  sub_1C2119664(&unk_1F419DB28);
  sub_1C21523F4(&unk_1F419DB48);
  v2 = sub_1C2170C04();

  return v2;
}

- (_TtC26AuthenticationServicesCore42ASPasskeyConfigurationSubscriberApplicator)initWithAdapter:(id)adapter inPlaceUpdates:(BOOL)updates
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end