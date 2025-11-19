@interface ArcadeAIDAAccountManagerDelegate
- (_TtC11AppStoreKitP33_5D4CA4A6926ADB88808A5F6B54A2A73432ArcadeAIDAAccountManagerDelegate)init;
- (id)accountsForAccountManager:(id)a3;
@end

@implementation ArcadeAIDAAccountManagerDelegate

- (id)accountsForAccountManager:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E1712F84(v4);

  type metadata accessor for AIDAServiceType(0);
  sub_1E13006E4(0, &unk_1ECEB8490);
  sub_1E171307C();
  v6 = sub_1E1AF5C6C();

  return v6;
}

- (_TtC11AppStoreKitP33_5D4CA4A6926ADB88808A5F6B54A2A73432ArcadeAIDAAccountManagerDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ArcadeAIDAAccountManagerDelegate();
  return [(ArcadeAIDAAccountManagerDelegate *)&v3 init];
}

@end