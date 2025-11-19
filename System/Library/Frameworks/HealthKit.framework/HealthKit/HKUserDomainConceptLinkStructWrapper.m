@interface HKUserDomainConceptLinkStructWrapper
- (HKUserDomainConceptLinkStructWrapper)init;
- (HKUserDomainConceptLinkStructWrapper)initWithLink:(id)a3;
- (HKUserDomainConceptLinkStructWrapper)initWithTarget:(id)a3 type:(int64_t)a4;
- (NSString)description;
- (NSUUID)target;
- (int64_t)hash;
@end

@implementation HKUserDomainConceptLinkStructWrapper

- (HKUserDomainConceptLinkStructWrapper)initWithLink:(id)a3
{
  v4 = a3;
  v5 = [v4 targetUUID];
  v6 = [v4 type];

  v7 = [(HKUserDomainConceptLinkStructWrapper *)self initWithTarget:v5 type:v6];
  return v7;
}

- (NSUUID)target
{
  v3 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_191CC61A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C0D3DC(self + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v8);
  (*(v10 + 32))(v14, &v8[*(v4 + 28)], v9);
  v15 = sub_191CC6168();
  (*(v10 + 8))(v14, v9);

  return v15;
}

- (HKUserDomainConceptLinkStructWrapper)initWithTarget:(id)a3 type:(int64_t)a4
{
  ObjectType = swift_getObjectType();
  v7 = sub_191CC61A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191CC6188();
  v13 = (self + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value);
  v14 = type metadata accessor for UserDomainConceptLinkStruct(0);
  (*(v8 + 16))(v13 + *(v14 + 20), v12, v7);
  *v13 = a4;
  v17.receiver = self;
  v17.super_class = ObjectType;
  v15 = [(HKUserDomainConceptLinkStructWrapper *)&v17 init];
  (*(v8 + 8))(v12, v7);
  return v15;
}

- (NSString)description
{
  v2 = self;
  UserDomainConceptLinkStructWrapper.description.getter();

  v3 = sub_191CC6778();

  return v3;
}

- (int64_t)hash
{
  v3 = (&self->super.isa + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value);
  sub_191CC74C8();
  MEMORY[0x193B02C70](*v3);
  v4 = *(type metadata accessor for UserDomainConceptLinkStruct(0) + 20);
  sub_191CC61A8();
  sub_191C0DD28(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
  v5 = self;
  sub_191CC66A8();
  v6 = sub_191CC7508();

  return v6;
}

- (HKUserDomainConceptLinkStructWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end