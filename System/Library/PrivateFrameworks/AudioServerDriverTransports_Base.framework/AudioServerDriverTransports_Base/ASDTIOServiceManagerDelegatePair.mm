@interface ASDTIOServiceManagerDelegatePair
+ (id)forDelegate:(id)a3 andIOService:(id)a4;
@end

@implementation ASDTIOServiceManagerDelegatePair

+ (id)forDelegate:(id)a3 andIOService:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(ASDTIOServiceManagerDelegatePair);
  [(ASDTIOServiceManagerDelegatePair *)v7 setDelegate:v6];

  [(ASDTIOServiceManagerDelegatePair *)v7 setIoService:v5];

  return v7;
}

@end