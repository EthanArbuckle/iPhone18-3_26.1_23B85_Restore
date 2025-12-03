@interface VolumeLimitSettingsState
- (void)effectiveSettingsChanged;
@end

@implementation VolumeLimitSettingsState

- (void)effectiveSettingsChanged
{
  selfCopy = self;
  sub_9B40();
}

@end