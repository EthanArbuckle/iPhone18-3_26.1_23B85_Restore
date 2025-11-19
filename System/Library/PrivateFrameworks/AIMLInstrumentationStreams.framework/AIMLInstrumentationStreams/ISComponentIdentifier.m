@interface ISComponentIdentifier
- (ISComponentIdentifier)init;
- (ISComponentIdentifier)initWithName:(int)a3 uuid:(id)a4;
- (NSUUID)uuid;
- (int)componentName;
@end

@implementation ISComponentIdentifier

- (ISComponentIdentifier)initWithName:(int)a3 uuid:(id)a4
{
  v5 = sub_23C870B74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_23C870B54();
  (*(v6 + 16))(v10, v12, v5);
  v13 = objc_allocWithZone(sub_23C870E34());
  *(&self->super.isa + OBJC_IVAR___ISComponentIdentifier_componentIdentifier) = sub_23C870E14();
  v14 = type metadata accessor for ComponentIdentifierBridge();
  v17.receiver = self;
  v17.super_class = v14;
  v15 = [(ISComponentIdentifier *)&v17 init];
  (*(v6 + 8))(v12, v5);
  return v15;
}

- (int)componentName
{
  v2 = *(&self->super.isa + OBJC_IVAR___ISComponentIdentifier_componentIdentifier);
  v3 = self;
  LODWORD(v2) = sub_23C870DF4();

  return v2;
}

- (NSUUID)uuid
{
  v3 = sub_23C870B74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR___ISComponentIdentifier_componentIdentifier);
  v9 = self;
  sub_23C870E24();

  v10 = sub_23C870B24();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (ISComponentIdentifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end