@interface VPNListItemProvider
- (void)connectivityManagerDidChange:(id)change;
@end

@implementation VPNListItemProvider

- (void)connectivityManagerDidChange:(id)change
{
  changeCopy = change;

  sub_1000E8810(changeCopy);
}

@end