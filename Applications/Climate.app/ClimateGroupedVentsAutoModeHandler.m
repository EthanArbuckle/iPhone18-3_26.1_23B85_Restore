@interface ClimateGroupedVentsAutoModeHandler
- (void)ventService:(id)a3 didUpdateAutoMode:(BOOL)a4;
@end

@implementation ClimateGroupedVentsAutoModeHandler

- (void)ventService:(id)a3 didUpdateAutoMode:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100037474(v6, a4);
}

@end