@interface TrampolineXPCListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation TrampolineXPCListenerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1C98E5CA0();

  return v9 & 1;
}

@end