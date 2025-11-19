@interface StoreKitAngelServiceListener
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation StoreKitAngelServiceListener

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();

  sub_10006F1B0(v9, v8, a5);

  swift_unknownObjectRelease();
}

@end