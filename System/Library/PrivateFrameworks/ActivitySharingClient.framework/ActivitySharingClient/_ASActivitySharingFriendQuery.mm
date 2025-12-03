@interface _ASActivitySharingFriendQuery
- (_ASActivitySharingFriendQuery)init;
- (_ASActivitySharingFriendQuery)initWithActivitySharingClient:(id)client updateHandler:(id)handler;
- (void)fitnessAppsStateObserver:(id)observer applicationInstallStateDidChangeForBundleIdentifiers:(id)identifiers;
- (void)handleFriendListUpdate;
@end

@implementation _ASActivitySharingFriendQuery

- (_ASActivitySharingFriendQuery)initWithActivitySharingClient:(id)client updateHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  clientCopy = client;
  v8 = sub_23E5B6AA8(clientCopy, sub_23E5B6FA8, v6);

  return v8;
}

- (void)handleFriendListUpdate
{
  v2 = qword_280C09100;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = sub_23E5C8EB0();
  __swift_project_value_buffer(v3, qword_280C09128);
  sub_23E560890(0xD00000000000006CLL, 0x800000023E5D0AC0, 0xD000000000000018, 0x800000023E5D0B30);
  _s21ActivitySharingClient0aB11FriendQueryC24fitnessAppsStateObserver_018applicationInstallH29DidChangeForBundleIdentifiersySo09FIFitnessghI0C_SaySSGtF_0();
}

- (_ASActivitySharingFriendQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)fitnessAppsStateObserver:(id)observer applicationInstallStateDidChangeForBundleIdentifiers:(id)identifiers
{
  selfCopy = self;
  _s21ActivitySharingClient0aB11FriendQueryC24fitnessAppsStateObserver_018applicationInstallH29DidChangeForBundleIdentifiersySo09FIFitnessghI0C_SaySSGtF_0();
}

@end