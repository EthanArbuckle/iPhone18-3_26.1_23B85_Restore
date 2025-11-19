@interface AMKSerializedMigrationStatus
- (AMKSerializedMigrationStatus)init;
- (AMKSerializedMigrationStatus)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMKSerializedMigrationStatus

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___AMKSerializedMigrationStatus_error);
  v5 = a3;
  v6 = self;
  if (v4)
  {
    v4 = sub_29EB1416C();
  }

  v7 = sub_29EB1467C();
  [a3 encodeObject:v4 forKey:v7];
}

- (AMKSerializedMigrationStatus)initWithCoder:(id)a3
{
  sub_29EABD730(0, &unk_2A187B170, 0x29EDB9FA0);
  v5 = a3;
  *(&self->super.isa + OBJC_IVAR___AMKSerializedMigrationStatus_error) = sub_29EB14B3C();
  v8.receiver = self;
  v8.super_class = type metadata accessor for MigrationStatus.SerializedMigrationStatus();
  v6 = [(AMKSerializedMigrationStatus *)&v8 init];

  return v6;
}

- (AMKSerializedMigrationStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end