@interface AlarmAuthorization
- (BOOL)setWithState:(id)state bundleID:(id)d error:(id *)error;
- (_TtC8AlarmKit18AlarmAuthorization)init;
- (id)stateWithBundleID:(id)d error:(id *)error;
- (id)supportsAlarmKitWithBundleID:(id)d error:(id *)error;
@end

@implementation AlarmAuthorization

- (_TtC8AlarmKit18AlarmAuthorization)init
{
  ObjectType = swift_getObjectType();
  type metadata accessor for AuthorizationClient();
  v4 = swift_allocObject();
  if (qword_1EDD45718 != -1)
  {
    v8 = v4;
    swift_once();
    v4 = v8;
  }

  v5 = qword_1EDD45720;
  *(v4 + 2) = qword_1EDD45720;
  *(&self->super.isa + OBJC_IVAR____TtC8AlarmKit18AlarmAuthorization_client) = v4;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = v5;
  return [(AlarmAuthorization *)&v9 init];
}

- (BOOL)setWithState:(id)state bundleID:(id)d error:(id *)error
{
  v8 = sub_1BBBF53F4();
  v10 = v9;
  stateCopy = state;
  selfCopy = self;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  AlarmAuthorization.set(state:bundleID:)(stateCopy, v13);

  if (v14)
  {
    if (error)
    {
      v15 = sub_1BBBF51E4();

      v16 = v15;
      *error = v15;
    }

    else
    {
    }
  }

  return v14 == 0;
}

- (id)stateWithBundleID:(id)d error:(id *)error
{
  v6 = sub_1BBBF53F4();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  v11.super.super.isa = AlarmAuthorization.state(bundleID:)(v10).super.super.isa;

  if (v12.super.super.isa)
  {
    if (error)
    {
      v13 = sub_1BBBF51E4();

      v14 = v13;
      isa = 0;
      *error = v13;
    }

    else
    {

      isa = 0;
    }
  }

  else
  {
    isa = v11.super.super.isa;
  }

  return isa;
}

- (id)supportsAlarmKitWithBundleID:(id)d error:(id *)error
{
  sub_1BBBF53F4();
  v5 = *((*(&self->super.isa + OBJC_IVAR____TtC8AlarmKit18AlarmAuthorization_client))[2] + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue);
  selfCopy = self;
  sub_1BBBF5534();

  initWithBool_ = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];

  return initWithBool_;
}

@end