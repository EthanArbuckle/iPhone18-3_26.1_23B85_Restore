@interface MigratorConfig
- (BOOL)isDataSeparated;
- (MBServiceAccount)account;
- (NSString)description;
- (NSString)personaID;
- (NSString)placeholderRestoreDirectory;
- (NSURL)demotedAppsPlist;
- (_TtC18RestorePostProcess14MigratorConfig)init;
- (_TtC18RestorePostProcess14MigratorConfig)initWithDataSeparatedAccount:(id)account;
- (_TtC18RestorePostProcess14MigratorConfig)initWithPersonaID:(id)d didRestoreFromBackup:(BOOL)backup didRestoreFromCloudBackup:(BOOL)cloudBackup error:(id *)error;
@end

@implementation MigratorConfig

- (NSString)placeholderRestoreDirectory
{
  if (self->state[OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state + 8] && self->state[OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state + 8] == 1)
  {
    v2 = *(&self->super.isa + OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state);
    selfCopy = self;
    persona = [v2 persona];
    placeholderRestoreDirectory = [persona placeholderRestoreDirectory];

    sub_13AD8();
  }

  v6 = sub_13AC8();

  return v6;
}

- (NSURL)demotedAppsPlist
{
  v3 = sub_13AB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (self->state[OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state + 8] == 1)
  {
    v8 = *(&self->super.isa + OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state);
    selfCopy = self;
    persona = [v8 persona];
    demotedAppsPlistPath = [persona demotedAppsPlistPath];

    sub_13AD8();
    sub_13A98();
  }

  else
  {
    selfCopy2 = self;
    sub_13A98();
  }

  sub_13AA8(v12);
  v15 = v14;
  (*(v4 + 8))(v7, v3);

  return v15;
}

- (MBServiceAccount)account
{
  if (self->state[OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state + 8] == 1)
  {
    v3 = *(&self->super.isa + OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)personaID
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state);
  if (!self->state[OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state + 8])
  {
    v6 = *&self->state[OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state];

    goto LABEL_5;
  }

  if (self->state[OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state + 8] == 1)
  {
    selfCopy = self;
    persona = [v2 persona];
    personaIdentifier = [persona personaIdentifier];

    sub_13AD8();
LABEL_5:
    v7 = sub_13AC8();

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (BOOL)isDataSeparated
{
  if (self->state[OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state + 8] != 1)
  {
    return 0;
  }

  v2 = *(&self->super.isa + OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state);
  selfCopy = self;
  persona = [v2 persona];
  isDataSeparatedPersona = [persona isDataSeparatedPersona];

  return isDataSeparatedPersona;
}

- (NSString)description
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state);
  v3 = *&self->state[OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state];
  v4 = self->state[OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state + 8];
  selfCopy = self;
  sub_122BC(v2, v3, v4);

  v6 = sub_13AC8();

  return v6;
}

- (_TtC18RestorePostProcess14MigratorConfig)initWithPersonaID:(id)d didRestoreFromBackup:(BOOL)backup didRestoreFromCloudBackup:(BOOL)cloudBackup error:(id *)error
{
  if (d)
  {
    v8 = sub_13AD8();
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return sub_12A08(v8, v9, backup, cloudBackup);
}

- (_TtC18RestorePostProcess14MigratorConfig)initWithDataSeparatedAccount:(id)account
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state;
  *v6 = account;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v9.receiver = self;
  v9.super_class = ObjectType;
  accountCopy = account;
  return [(MigratorConfig *)&v9 init];
}

- (_TtC18RestorePostProcess14MigratorConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end