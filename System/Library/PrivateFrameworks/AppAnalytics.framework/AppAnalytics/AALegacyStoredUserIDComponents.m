@interface AALegacyStoredUserIDComponents
- (AALegacyStoredUserIDComponents)init;
- (AALegacyStoredUserIDComponents)initWithID:(id)a3 rotationPeriod:(int64_t)a4 startDate:(id)a5 lastRotation:(id)a6;
- (NSDate)lastRotationDate;
- (NSDate)startDate;
- (NSUUID)userID;
@end

@implementation AALegacyStoredUserIDComponents

- (NSUUID)userID
{
  v3 = sub_1B6AB8E40();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___AALegacyStoredUserIDComponents_legacyStoredUserIDComponents, v3);
  v8 = sub_1B6AB8DE0();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSDate)startDate
{
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self + OBJC_IVAR___AALegacyStoredUserIDComponents_legacyStoredUserIDComponents;
  v9 = type metadata accessor for LegacyStoredUserIDComponents();
  (*(v4 + 16))(v7, &v8[*(v9 + 24)], v3);
  v10 = sub_1B6AB8D20();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (NSDate)lastRotationDate
{
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self + OBJC_IVAR___AALegacyStoredUserIDComponents_legacyStoredUserIDComponents;
  v9 = type metadata accessor for LegacyStoredUserIDComponents();
  (*(v4 + 16))(v7, &v8[*(v9 + 28)], v3);
  v10 = sub_1B6AB8D20();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (AALegacyStoredUserIDComponents)initWithID:(id)a3 rotationPeriod:(int64_t)a4 startDate:(id)a5 lastRotation:(id)a6
{
  v33[1] = a3;
  v33[2] = a5;
  v35 = a4;
  v36 = self;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for LegacyStoredUserIDComponents();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B6AB8DB0();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v33 - v17;
  v19 = sub_1B6AB8E40();
  v33[0] = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8E00();
  sub_1B6AB8D80();
  sub_1B6AB8D80();
  (*(v20 + 16))(v10, v23, v19);
  v24 = v12[2];
  v24(&v10[v7[8]], v18, v11);
  v24(&v10[v7[9]], v16, v11);
  v25 = ObjectType;
  *&v10[v7[7]] = v35;
  v26 = objc_allocWithZone(v25);
  sub_1B6A47A08(v10, v26 + OBJC_IVAR___AALegacyStoredUserIDComponents_legacyStoredUserIDComponents);
  v37.receiver = v26;
  v37.super_class = v25;
  v27 = [(AALegacyStoredUserIDComponents *)&v37 init];
  v28 = v12[1];
  v28(v16, v11);
  v28(v18, v11);
  (*(v20 + 8))(v23, v33[0]);
  sub_1B6A47A6C(v10);
  v29 = v36;
  swift_getObjectType();
  v30 = *((*MEMORY[0x1E69E7D40] & v29->super.isa) + 0x30);
  v31 = *((*MEMORY[0x1E69E7D40] & v29->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v27;
}

- (AALegacyStoredUserIDComponents)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end