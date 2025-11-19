@interface ClimateCompressorIndicator
- (void)cabinService:(id)a3 didUpdateCompressorOn:(BOOL)a4;
@end

@implementation ClimateCompressorIndicator

- (void)cabinService:(id)a3 didUpdateCompressorOn:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_10005D080(v6, a4);
}

@end