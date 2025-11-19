@interface StoreKitAngelService
- (void)displayOfferWithOfferData:(id)a3 reply:(id)a4;
@end

@implementation StoreKitAngelService

- (void)displayOfferWithOfferData:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v12 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_10006D6DC(v8, v10, sub_10006DD54, v11);

  sub_100018DF0(v8, v10);
}

@end