@interface PHVoicemailManagerFactory
+ (id)getFTVoiceMailWithOnVoicemailsChanged:(id)changed;
- (PHVoicemailManagerFactory)init;
@end

@implementation PHVoicemailManagerFactory

+ (id)getFTVoiceMailWithOnVoicemailsChanged:(id)changed
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _Block_copy(changed);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, static Logger.mobilePhone);
  (*(v5 + 16))(v7, v10, v4);
  type metadata accessor for MessageStoreController();
  v11 = static MessageStoreController.shared.getter();
  v12 = objc_allocWithZone(type metadata accessor for FaceTimeVoicemailManager(0));
  v13 = specialized FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:)(v7, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v9, v11, v12);

  return v13;
}

- (PHVoicemailManagerFactory)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PHVoicemailManagerFactory *)&v3 init];
}

@end