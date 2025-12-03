@interface UserAccountInformationDataProvider
- (void)dealloc;
- (void)userDataDidUpdate;
@end

@implementation UserAccountInformationDataProvider

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider_userInformationManager);
  selfCopy = self;
  observers = [v4 observers];
  [observers unregisterObserver:selfCopy];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(UserAccountInformationDataProvider *)&v7 dealloc];
}

- (void)userDataDidUpdate
{
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  selfCopy = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_10020AAE4(0, 0, v5, &unk_1011E9BB8, v9);
}

@end