@interface AKApplicationMetadataRequestProvider
- (AKApplicationMetadataRequestProvider)init;
- (AKApplicationMetadataRequestProvider)initWithContext:(id)a3 url:(id)a4;
- (AKApplicationMetadataRequestProvider)initWithContext:(id)a3 urlBagKey:(id)a4;
- (AKApplicationMetadataRequestProvider)initWithUrlBagKey:(id)a3;
- (BOOL)signRequest:(id)a3 error:(id *)a4;
- (BOOL)validateResponseData:(id)a3 error:(id *)a4;
@end

@implementation AKApplicationMetadataRequestProvider

- (BOOL)signRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_100200B74(v5);

  return 1;
}

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

  sub_100200D44(v8, v10);

  sub_1001AE1E4(v8, v10);
  return 1;
}

- (AKApplicationMetadataRequestProvider)initWithUrlBagKey:(id)a3
{
  v5 = (&self->super.super.super.isa + OBJC_IVAR___AKApplicationMetadataRequestProvider_clientID);
  v6 = type metadata accessor for ApplicationMetadataRequestProvider();
  *v5 = 0;
  v5[1] = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(AKURLRequestProviderImpl *)&v8 initWithUrlBagKey:a3];
}

- (AKApplicationMetadataRequestProvider)initWithContext:(id)a3 urlBagKey:(id)a4
{
  v7 = (&self->super.super.super.isa + OBJC_IVAR___AKApplicationMetadataRequestProvider_clientID);
  v8 = type metadata accessor for ApplicationMetadataRequestProvider();
  *v7 = 0;
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = v8;
  return [(AKURLRequestProviderImpl *)&v10 initWithContext:a3 urlBagKey:a4];
}

- (AKApplicationMetadataRequestProvider)initWithContext:(id)a3 url:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = (&self->super.super.super.isa + OBJC_IVAR___AKApplicationMetadataRequestProvider_clientID);
  *v11 = 0;
  v11[1] = 0;
  swift_unknownObjectRetain();
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v15 = type metadata accessor for ApplicationMetadataRequestProvider();
  v18.receiver = self;
  v18.super_class = v15;
  v16 = [(AKURLRequestProviderImpl *)&v18 initWithContext:a3 url:v14];
  swift_unknownObjectRelease();

  (*(v7 + 8))(v10, v6);
  return v16;
}

- (AKApplicationMetadataRequestProvider)init
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR___AKApplicationMetadataRequestProvider_clientID);
  v4 = type metadata accessor for ApplicationMetadataRequestProvider();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(AKApplicationMetadataRequestProvider *)&v6 init];
}

@end