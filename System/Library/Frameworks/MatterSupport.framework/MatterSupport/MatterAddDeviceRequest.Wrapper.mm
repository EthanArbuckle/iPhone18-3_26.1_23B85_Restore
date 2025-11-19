@interface MatterAddDeviceRequest.Wrapper
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldShowDeviceWithUUID:(id)a3 vendorID:(id)a4 productID:(id)a5 serialNumber:(id)a6 rootPublicKey:(id)a7 nodeID:(id)a8;
- (MTSDeviceSetupTopology)topology;
- (NSData)serializedAsData;
- (NSString)ecosystemName;
- (_TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D7Wrapper)init;
- (int64_t)hash;
@end

@implementation MatterAddDeviceRequest.Wrapper

- (MTSDeviceSetupTopology)topology
{
  sub_23982EAE8(0, &qword_27DF7C4D0, off_278AA14C8);
  v4 = *&self->wrappedRequest[OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D7Wrapper_wrappedRequest];
  v3 = *&self->wrappedRequest[OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D7Wrapper_wrappedRequest + 8];
  v5 = *&self->wrappedRequest[OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D7Wrapper_wrappedRequest + 16];
  v8[0] = v4;
  v8[1] = v3;
  v8[2] = v5;

  v6 = sub_239831358(v8);

  return v6;
}

- (NSString)ecosystemName
{
  v2 = *&self->wrappedRequest[OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D7Wrapper_wrappedRequest];
  v3 = *&self->wrappedRequest[OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D7Wrapper_wrappedRequest + 8];

  v4 = sub_239856C24();

  return v4;
}

- (NSData)serializedAsData
{
  v3 = sub_239856A74();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = self;
  sub_239856A64();
  type metadata accessor for MatterAddDeviceRequest(0);
  sub_23982D96C(&qword_27DF7C340, type metadata accessor for MatterAddDeviceRequest);
  v7 = sub_239856A54();
  v9 = v8;

  v10 = sub_239856AA4();
  sub_2398282D8(v7, v9);

  return v10;
}

- (BOOL)shouldShowDeviceWithUUID:(id)a3 vendorID:(id)a4 productID:(id)a5 serialNumber:(id)a6 rootPublicKey:(id)a7 nodeID:(id)a8
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4C0, &qword_23985A5D8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v32 - v17;
  if (a3)
  {
    sub_239856AE4();
    v19 = sub_239856AF4();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }

  else
  {
    v20 = sub_239856AF4();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  if (a6)
  {
    v21 = sub_239856C34();
    a6 = v22;
  }

  else
  {
    v21 = 0;
  }

  v23 = a4;
  v24 = a5;
  v25 = a8;
  v26 = self;
  if (a7)
  {
    v27 = a7;
    a7 = sub_239856AB4();
    v29 = v28;
  }

  else
  {
    v29 = 0xF000000000000000;
  }

  v30 = sub_23982CBFC(v18, v23, v24, v21, a6, a7, v29, v25);
  sub_23982D9B4(a7, v29);

  sub_23982F038(v18, &qword_27DF7C4C0, &qword_23985A5D8);
  return v30;
}

- (int64_t)hash
{
  sub_239857094();
  v3 = self;
  MatterAddDeviceRequest.hash(into:)(v6);
  v4 = sub_2398570E4();

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_239856DE4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_23982D208(v8);

  sub_23982F038(v8, &qword_27DF7C4C8, &qword_23985A5E0);
  return v6 & 1;
}

- (_TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D7Wrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end