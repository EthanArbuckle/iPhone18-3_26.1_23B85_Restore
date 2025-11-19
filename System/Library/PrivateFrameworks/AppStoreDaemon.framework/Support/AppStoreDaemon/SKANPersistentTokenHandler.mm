@interface SKANPersistentTokenHandler
+ (id)generateRandomPrivateInput;
- (_TtC9appstored26SKANPersistentTokenHandler)init;
- (_TtC9appstored26SKANPersistentTokenHandler)initWithRandomPrivateInput:(id)a3;
- (id)tryFinalizeWithPublicData:(id)a3 finalizationDict:(id)a4 pubCertString:(id)a5 error:(id *)a6;
- (id)tryGenerateBlindedElement;
- (void)setBlindedData:(id)a3;
@end

@implementation SKANPersistentTokenHandler

- (void)setBlindedData:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9appstored26SKANPersistentTokenHandler_blindedData);
  *(&self->super.isa + OBJC_IVAR____TtC9appstored26SKANPersistentTokenHandler_blindedData) = a3;
  v3 = a3;
}

- (_TtC9appstored26SKANPersistentTokenHandler)initWithRandomPrivateInput:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for SKANUTClient();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(&self->super.isa + OBJC_IVAR____TtC9appstored26SKANPersistentTokenHandler_timestamp) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9appstored26SKANPersistentTokenHandler_blindedData) = 0;
  sub_100088C88(v11, v13);
  SKANUTClient.init(privateInput:)();
  (*(v7 + 32))(self + OBJC_IVAR____TtC9appstored26SKANPersistentTokenHandler_utClient, v9, v6);
  v14 = (self + OBJC_IVAR____TtC9appstored26SKANPersistentTokenHandler_privateInput);
  *v14 = v11;
  v14[1] = v13;
  v16.receiver = self;
  v16.super_class = ObjectType;
  return [(SKANPersistentTokenHandler *)&v16 init];
}

+ (id)generateRandomPrivateInput
{
  v2 = sub_1000BD744();
  v4 = v3;
  v5.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100088CDC(v2, v4);

  return v5.super.isa;
}

- (id)tryGenerateBlindedElement
{
  v2 = self;
  v3 = sub_1000BC7FC();

  return v3;
}

- (id)tryFinalizeWithPublicData:(id)a3 finalizationDict:(id)a4 pubCertString:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = sub_1000BC978(v13, v15, v16);
  v19 = v18;

  sub_100088CDC(v13, v15);
  v20.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100088CDC(v17, v19);

  return v20.super.isa;
}

- (_TtC9appstored26SKANPersistentTokenHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end