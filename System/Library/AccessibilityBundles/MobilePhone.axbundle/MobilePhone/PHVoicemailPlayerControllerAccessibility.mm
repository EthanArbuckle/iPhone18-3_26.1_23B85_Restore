@interface PHVoicemailPlayerControllerAccessibility
- (void)play;
@end

@implementation PHVoicemailPlayerControllerAccessibility

- (void)play
{
  v2.receiver = self;
  v2.super_class = PHVoicemailPlayerControllerAccessibility;
  [(PHVoicemailPlayerControllerAccessibility *)&v2 play];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDAB0]);
}

@end