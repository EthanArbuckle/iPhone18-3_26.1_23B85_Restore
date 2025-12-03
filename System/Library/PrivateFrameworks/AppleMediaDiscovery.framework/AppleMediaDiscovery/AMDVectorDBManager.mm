@interface AMDVectorDBManager
+ (id)clearVectorsHandlerWithClearVectorDBPayload:(id)payload error:(id *)error;
+ (id)createVectorDBDirectoryWithDbName:(id)name error:(id *)error;
+ (id)createVectorDBWithCreateDBPayload:(id)payload error:(id *)error;
+ (id)deleteVectorDatabaseWithDeletionPayload:(id)payload error:(id *)error;
+ (id)insertVectorsHandlerWithInsertVectorsPayload:(id)payload error:(id *)error;
+ (id)runVectorDBSearchWithSearchPayload:(id)payload error:(id *)error;
- (_TtC19AppleMediaDiscovery18AMDVectorDBManager)initWithVectorDBConfig:(id)config error:(id *)error;
- (id)deleteVectorsWithIdentifiers:(id)identifiers error:(id *)error;
- (id)insertVectorsWithVectorDict:(id)dict error:(id *)error;
- (id)searchVectorDBWithQueryDict:(id)dict error:(id *)error;
@end

@implementation AMDVectorDBManager

- (_TtC19AppleMediaDiscovery18AMDVectorDBManager)initWithVectorDBConfig:(id)config error:(id *)error
{
  MEMORY[0x277D82BE0](config);
  v4 = sub_240DADC84();
  v6 = AMDVectorDBManager.init(vectorDBConfig:)(v4);
  MEMORY[0x277D82BD8](config);
  return v6;
}

- (id)insertVectorsWithVectorDict:(id)dict error:(id *)error
{
  MEMORY[0x277D82BE0](dict);
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C00, &qword_240DB2F60);
  v9 = sub_240DADC84();
  sub_240D9FD48(v9);
  v6 = sub_240DADC74();

  MEMORY[0x277D82BD8](dict);
  MEMORY[0x277D82BD8](self);

  return v6;
}

- (id)searchVectorDBWithQueryDict:(id)dict error:(id *)error
{
  MEMORY[0x277D82BE0](dict);
  MEMORY[0x277D82BE0](self);
  v9 = sub_240DADC84();
  sub_240DA0BA0(v9);
  v6 = sub_240DADC74();

  MEMORY[0x277D82BD8](dict);
  MEMORY[0x277D82BD8](self);

  return v6;
}

- (id)deleteVectorsWithIdentifiers:(id)identifiers error:(id *)error
{
  MEMORY[0x277D82BE0](identifiers);
  MEMORY[0x277D82BE0](self);
  if (identifiers)
  {
    v6 = sub_240DADE54();
    MEMORY[0x277D82BD8](identifiers);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_240DA2088(v7);
  v5 = sub_240DADC74();

  MEMORY[0x277D82BD8](self);

  return v5;
}

+ (id)createVectorDBDirectoryWithDbName:(id)name error:(id *)error
{
  selfCopy = self;
  nameCopy = name;
  errorCopy = error;
  swift_getObjCClassMetadata();
  v13 = sub_240DAD674();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](nameCopy);
  v19 = &v8 - v16;
  MEMORY[0x277D82BE0](v4);
  v21 = sub_240DADD04();
  v20 = v5;
  swift_getObjCClassMetadata();
  sub_240DA2664(v21, v20, v19);
  v22 = 0;
  v10 = sub_240DAD644();
  (*(v14 + 8))(v19, v13);
  v11 = v10;
  v9 = v10;

  MEMORY[0x277D82BD8](nameCopy);
  v6 = v9;

  return v6;
}

+ (id)deleteVectorDatabaseWithDeletionPayload:(id)payload error:(id *)error
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](payload);
  v7 = sub_240DADC84();
  swift_getObjCClassMetadata();
  sub_240DA3B9C(v7);
  v5 = sub_240DADC74();

  MEMORY[0x277D82BD8](payload);

  return v5;
}

+ (id)insertVectorsHandlerWithInsertVectorsPayload:(id)payload error:(id *)error
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](payload);
  v7 = sub_240DADC84();
  swift_getObjCClassMetadata();
  sub_240DA54D4(v7);
  v5 = sub_240DADC74();

  MEMORY[0x277D82BD8](payload);

  return v5;
}

+ (id)clearVectorsHandlerWithClearVectorDBPayload:(id)payload error:(id *)error
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](payload);
  v7 = sub_240DADC84();
  swift_getObjCClassMetadata();
  sub_240DA61AC(v7);
  v5 = sub_240DADC74();

  MEMORY[0x277D82BD8](payload);

  return v5;
}

+ (id)runVectorDBSearchWithSearchPayload:(id)payload error:(id *)error
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](payload);
  v7 = sub_240DADC84();
  swift_getObjCClassMetadata();
  sub_240DA6998(v7);
  v5 = sub_240DADC74();

  MEMORY[0x277D82BD8](payload);

  return v5;
}

+ (id)createVectorDBWithCreateDBPayload:(id)payload error:(id *)error
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](payload);
  v7 = sub_240DADC84();
  swift_getObjCClassMetadata();
  sub_240DA722C(v7);
  v5 = sub_240DADC74();

  MEMORY[0x277D82BD8](payload);

  return v5;
}

@end