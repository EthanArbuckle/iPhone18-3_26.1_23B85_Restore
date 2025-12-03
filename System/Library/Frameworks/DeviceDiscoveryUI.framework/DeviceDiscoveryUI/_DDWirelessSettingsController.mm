@interface _DDWirelessSettingsController
- (void)wirelessSettingsDidChange:(id)change;
@end

@implementation _DDWirelessSettingsController

- (void)wirelessSettingsDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_23810B730(change);
}

@end