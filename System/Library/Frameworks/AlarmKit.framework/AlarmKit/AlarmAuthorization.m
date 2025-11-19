@interface AlarmAuthorization
- (BOOL)setWithState:(id)a3 bundleID:(id)a4 error:(id *)a5;
- (_TtC8AlarmKit18AlarmAuthorization)init;
- (id)stateWithBundleID:(id)a3 error:(id *)a4;
- (id)supportsAlarmKitWithBundleID:(id)a3 error:(id *)a4;
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

- (BOOL)setWithState:(id)a3 bundleID:(id)a4 error:(id *)a5
{
  v8 = sub_1BBBF53F4();
  v10 = v9;
  v11 = a3;
  v12 = self;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  AlarmAuthorization.set(state:bundleID:)(v11, v13);

  if (v14)
  {
    if (a5)
    {
      v15 = sub_1BBBF51E4();

      v16 = v15;
      *a5 = v15;
    }

    else
    {
    }
  }

  return v14 == 0;
}

- (id)stateWithBundleID:(id)a3 error:(id *)a4
{
  v6 = sub_1BBBF53F4();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  v11.super.super.isa = AlarmAuthorization.state(bundleID:)(v10).super.super.isa;

  if (v12.super.super.isa)
  {
    if (a4)
    {
      v13 = sub_1BBBF51E4();

      v14 = v13;
      isa = 0;
      *a4 = v13;
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

- (id)supportsAlarmKitWithBundleID:(id)a3 error:(id *)a4
{
  sub_1BBBF53F4();
  v5 = *((*(&self->super.isa + OBJC_IVAR____TtC8AlarmKit18AlarmAuthorization_client))[2] + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue);
  v6 = self;
  sub_1BBBF5534();

  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];

  return v7;
}

@end