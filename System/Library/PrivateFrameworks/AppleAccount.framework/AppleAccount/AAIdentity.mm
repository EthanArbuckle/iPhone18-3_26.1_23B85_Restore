@interface AAIdentity
- (AAIdentity)init;
- (AAIdentity)initWithCoder:(id)coder;
- (NSUUID)identifier;
- (void)encodeWithCoder:(id)coder;
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

- (AAIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1B700C868();

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_1B70557A0();
  v7 = sub_1B7055820();
  [coderCopy encodeObject:v6 forKey:v7];

  v8 = *(selfCopy + OBJC_IVAR___AAIdentity_avatar);
  v9 = sub_1B7055820();
  [coderCopy encodeObject:v8 forKey:v9];
}

@end