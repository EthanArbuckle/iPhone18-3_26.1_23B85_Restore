@interface APRotatingIdentifier
- (APRotatingIdentifier)init;
- (APRotatingIdentifier)initWithValue:(id)value type:(int64_t)type source:(int64_t)source expirationDate:(id)date processId:(id)id;
- (NSDate)expirationDate;
- (NSString)processId;
- (NSString)value;
- (int64_t)type;
- (void)setExpirationDate:(id)date;
- (void)setProcessId:(id)id;
- (void)setType:(int64_t)type;
- (void)setValue:(id)value;
@end

@implementation APRotatingIdentifier

- (NSString)value
{
  v2 = (self + OBJC_IVAR___APRotatingIdentifier_value);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_1BB014B38();

  return v5;
}

- (void)setValue:(id)value
{
  v4 = sub_1BB014B48();
  v6 = v5;
  v7 = (self + OBJC_IVAR___APRotatingIdentifier_value);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (int64_t)type
{
  v3 = OBJC_IVAR___APRotatingIdentifier_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(int64_t)type
{
  v5 = OBJC_IVAR___APRotatingIdentifier_type;
  swift_beginAccess();
  *(self + v5) = type;
}

- (NSDate)expirationDate
{
  v3 = sub_1BB014398();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___APRotatingIdentifier_expirationDate;
  swift_beginAccess();
  (*(v4 + 16))(v8, self + v9, v3);
  v10 = sub_1BB014338();
  (*(v4 + 8))(v8, v3);

  return v10;
}

- (void)setExpirationDate:(id)date
{
  v4 = sub_1BB014398();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB014358();
  v10 = OBJC_IVAR___APRotatingIdentifier_expirationDate;
  swift_beginAccess();
  v11 = *(v5 + 40);
  selfCopy = self;
  v11(self + v10, v9, v4);
  swift_endAccess();
}

- (NSString)processId
{
  v2 = *(self + OBJC_IVAR___APRotatingIdentifier_processId);
  v3 = *(self + OBJC_IVAR___APRotatingIdentifier_processId + 8);

  v4 = sub_1BB014B38();

  return v4;
}

- (void)setProcessId:(id)id
{
  v4 = sub_1BB014B48();
  v5 = (self + OBJC_IVAR___APRotatingIdentifier_processId);
  v6 = *(self + OBJC_IVAR___APRotatingIdentifier_processId + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (APRotatingIdentifier)initWithValue:(id)value type:(int64_t)type source:(int64_t)source expirationDate:(id)date processId:(id)id
{
  ObjectType = swift_getObjectType();
  v10 = sub_1BB014398();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BB014B48();
  v18 = v17;
  sub_1BB014358();
  v19 = sub_1BB014B48();
  v21 = v20;
  v22 = (self + OBJC_IVAR___APRotatingIdentifier_value);
  *v22 = v16;
  v22[1] = v18;
  *(self + OBJC_IVAR___APRotatingIdentifier_type) = type;
  *(self + OBJC_IVAR___APRotatingIdentifier_source) = source;
  (*(v11 + 16))(self + OBJC_IVAR___APRotatingIdentifier_expirationDate, v15, v10);
  v23 = (self + OBJC_IVAR___APRotatingIdentifier_processId);
  *v23 = v19;
  v23[1] = v21;
  v28.receiver = self;
  v28.super_class = ObjectType;
  v24 = [(APRotatingIdentifier *)&v28 init];
  (*(v11 + 8))(v15, v10);
  return v24;
}

- (APRotatingIdentifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end