@interface AccountRevokingRequestProvider
- (BOOL)validateResponseData:(id)a3 error:(id *)a4;
- (_TtC3akd30AccountRevokingRequestProvider)init;
- (_TtC3akd30AccountRevokingRequestProvider)initWithContext:(id)a3 url:(id)a4;
- (_TtC3akd30AccountRevokingRequestProvider)initWithContext:(id)a3 urlBagKey:(id)a4;
- (_TtC3akd30AccountRevokingRequestProvider)initWithUrlBagKey:(id)a3;
@end

@implementation AccountRevokingRequestProvider

- (BOOL)validateResponseData:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v6 = self;
    v7 = a3;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v11 = self;
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  sub_1001C53B8(v8, v10);

  sub_1001AE1E4(v8, v10);
  return 1;
}

- (_TtC3akd30AccountRevokingRequestProvider)initWithUrlBagKey:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AccountRevokingRequestProvider();
  return [(AKURLRequestProviderImpl *)&v5 initWithUrlBagKey:a3];
}

- (_TtC3akd30AccountRevokingRequestProvider)initWithContext:(id)a3 urlBagKey:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AccountRevokingRequestProvider();
  return [(AKURLRequestProviderImpl *)&v7 initWithContext:a3 urlBagKey:a4];
}

- (_TtC3akd30AccountRevokingRequestProvider)initWithContext:(id)a3 url:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v14 = type metadata accessor for AccountRevokingRequestProvider();
  v17.receiver = self;
  v17.super_class = v14;
  v15 = [(AKURLRequestProviderImpl *)&v17 initWithContext:a3 url:v13];
  swift_unknownObjectRelease();

  (*(v7 + 8))(v10, v6);
  return v15;
}

- (_TtC3akd30AccountRevokingRequestProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AccountRevokingRequestProvider();
  return [(AccountRevokingRequestProvider *)&v3 init];
}

@end