@interface VPNListItemProvider
- (void)connectivityManagerDidChange:(id)a3;
@end

@implementation VPNListItemProvider

- (void)connectivityManagerDidChange:(id)a3
{
  v3 = a3;

  sub_1000E8810(v3);
}

@end