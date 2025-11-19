@interface AAIdentity
- (AAIdentity)init;
- (AAIdentity)initWithCoder:(id)a3;
- (NSUUID)identifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AAIdentity

- (NSUUID)identifier
{
  v3 = sub_1B70557C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00]();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___AAIdentity_identifier, v3);
  v8 = sub_1B70557A0();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (AAIdentity)init
{
  result = sub_1B7055940();
  __break(1u);
  return result;
}

- (AAIdentity)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1B700C868();

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1B70557A0();
  v7 = sub_1B7055820();
  [v4 encodeObject:v6 forKey:v7];

  v8 = *(v5 + OBJC_IVAR___AAIdentity_avatar);
  v9 = sub_1B7055820();
  [v4 encodeObject:v8 forKey:v9];
}

@end