@interface AccountRevokingRequestProvider
- (BOOL)validateResponseData:(id)data error:(id *)error;
- (_TtC3akd30AccountRevokingRequestProvider)init;
- (_TtC3akd30AccountRevokingRequestProvider)initWithContext:(id)context url:(id)url;
- (_TtC3akd30AccountRevokingRequestProvider)initWithContext:(id)context urlBagKey:(id)key;
- (_TtC3akd30AccountRevokingRequestProvider)initWithUrlBagKey:(id)key;
@end

@implementation AccountRevokingRequestProvider

- (BOOL)validateResponseData:(id)data error:(id *)error
{
  if (data)
  {
    selfCopy = self;
    dataCopy = data;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  sub_1001C53B8(v8, v10);

  sub_1001AE1E4(v8, v10);
  return 1;
}

- (_TtC3akd30AccountRevokingRequestProvider)initWithUrlBagKey:(id)key
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AccountRevokingRequestProvider();
  return [(AKURLRequestProviderImpl *)&v5 initWithUrlBagKey:key];
}

- (_TtC3akd30AccountRevokingRequestProvider)initWithContext:(id)context urlBagKey:(id)key
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AccountRevokingRequestProvider();
  return [(AKURLRequestProviderImpl *)&v7 initWithContext:context urlBagKey:key];
}

- (_TtC3akd30AccountRevokingRequestProvider)initWithContext:(id)context url:(id)url
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
  v15 = [(AKURLRequestProviderImpl *)&v17 initWithContext:context url:v13];
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