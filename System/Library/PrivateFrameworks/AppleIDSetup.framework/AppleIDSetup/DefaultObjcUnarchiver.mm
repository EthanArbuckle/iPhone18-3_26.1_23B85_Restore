@interface DefaultObjcUnarchiver
- (_TtC12AppleIDSetup21DefaultObjcUnarchiver)init;
- (id)decodeObjectForKey:(id)a3;
- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4;
- (id)initForReadingFromData:(id)a3 error:(id *)a4;
- (id)initForReadingWithData:(id)a3;
@end

@implementation DefaultObjcUnarchiver

- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 setByAddingObject:{+[ObjcArchivableWrapperClassProducer classForNSXPCListenerEndpoint](_TtC12AppleIDSetup34ObjcArchivableWrapperClassProducer, "classForNSXPCListenerEndpoint")}];

  v11.receiver = self;
  v11.super_class = _TtC12AppleIDSetup21DefaultObjcUnarchiver;
  v9 = [(DefaultObjcUnarchiver *)&v11 decodeObjectOfClasses:v8 forKey:v6];

  return v9;
}

- (id)decodeObjectForKey:(id)a3
{
  sub_24075A0B4();
  v4 = self;
  sub_240755ECC(v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = sub_24075ACE4();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)initForReadingFromData:(id)a3 error:(id *)a4
{
  v4 = a3;
  sub_2407596C4();

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12AppleIDSetup21DefaultObjcUnarchiver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initForReadingWithData:(id)a3
{
  v3 = a3;
  sub_2407596C4();

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end