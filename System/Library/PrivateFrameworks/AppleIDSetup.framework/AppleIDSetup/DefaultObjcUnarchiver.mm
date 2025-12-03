@interface DefaultObjcUnarchiver
- (_TtC12AppleIDSetup21DefaultObjcUnarchiver)init;
- (id)decodeObjectForKey:(id)key;
- (id)decodeObjectOfClasses:(id)classes forKey:(id)key;
- (id)initForReadingFromData:(id)data error:(id *)error;
- (id)initForReadingWithData:(id)data;
@end

@implementation DefaultObjcUnarchiver

- (id)decodeObjectOfClasses:(id)classes forKey:(id)key
{
  keyCopy = key;
  classesCopy = classes;
  v8 = [classesCopy setByAddingObject:{+[ObjcArchivableWrapperClassProducer classForNSXPCListenerEndpoint](_TtC12AppleIDSetup34ObjcArchivableWrapperClassProducer, "classForNSXPCListenerEndpoint")}];

  v11.receiver = self;
  v11.super_class = _TtC12AppleIDSetup21DefaultObjcUnarchiver;
  v9 = [(DefaultObjcUnarchiver *)&v11 decodeObjectOfClasses:v8 forKey:keyCopy];

  return v9;
}

- (id)decodeObjectForKey:(id)key
{
  sub_24075A0B4();
  selfCopy = self;
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

- (id)initForReadingFromData:(id)data error:(id *)error
{
  dataCopy = data;
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

- (id)initForReadingWithData:(id)data
{
  dataCopy = data;
  sub_2407596C4();

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end