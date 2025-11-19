@interface SBNCSoundControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsAlarmRinging;
- (void)_killSounds;
- (void)_playSoundIfPossibleForNotificationRequest:(id)a3 presentingDestination:(id)a4 completion:(id)a5;
- (void)playSoundForNotificationRequest:(id)a3 presentingDestination:(id)a4;
- (void)stopSoundForNotificationRequest:(id)a3;
@end

@implementation SBNCSoundControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBNCSoundController" hasInstanceVariable:@"_playingSounds" withType:"NSMutableDictionary"];
  [v3 validateClass:@"SBNCSoundController" hasInstanceMethod:@"playSoundForNotificationRequest:presentingDestination:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"SBNCSoundController" hasInstanceMethod:@"_killSounds" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBNCSoundController" hasInstanceMethod:@"stopSoundForNotificationRequest:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBNCSoundController" hasInstanceMethod:@"_playSoundIfPossibleForNotificationRequest:presentingDestination:completion:" withFullSignature:{"v", "@", "@", "@?", 0}];
}

- (BOOL)_accessibilityIsAlarmRinging
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = [(SBNCSoundControllerAccessibility *)self _accessibilityValueForKey:@"AXAlarmSoundPlayingDataKey"];
  v4 = [(SBNCSoundControllerAccessibility *)self safeDictionaryForKey:@"_playingSounds"];
  v5 = [v4 objectForKey:v3];
  if (v5 || ([v3 isEqualToString:*MEMORY[0x29EDC5D88]] & 1) != 0)
  {

LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  v9 = [v3 isEqualToString:*MEMORY[0x29EDC5D90]];

  if (v9)
  {
    goto LABEL_4;
  }

  v6 = 0;
LABEL_5:
  v7 = AXLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = v6;
    _os_log_impl(&dword_29C37A000, v7, OS_LOG_TYPE_INFO, "Query is alarm ringing: %d", v10, 8u);
  }

  return v6;
}

- (void)_playSoundIfPossibleForNotificationRequest:(id)a3 presentingDestination:(id)a4 completion:(id)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = SBNCSoundControllerAccessibility;
  [(SBNCSoundControllerAccessibility *)&v13 _playSoundIfPossibleForNotificationRequest:v8 presentingDestination:a4 completion:a5];
  v9 = [v8 categoryIdentifier];
  if ([v9 isEqualToString:*MEMORY[0x29EDC5D88]])
  {

LABEL_4:
    v12 = [v8 categoryIdentifier];
    [(SBNCSoundControllerAccessibility *)self _accessibilitySetRetainedValue:v12 forKey:@"AXAlarmSoundPlayingDataKey"];

    goto LABEL_5;
  }

  v10 = [v8 categoryIdentifier];
  v11 = [v10 isEqualToString:*MEMORY[0x29EDC5D90]];

  if (v11)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)playSoundForNotificationRequest:(id)a3 presentingDestination:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = SBNCSoundControllerAccessibility;
  [(SBNCSoundControllerAccessibility *)&v13 playSoundForNotificationRequest:v6 presentingDestination:a4];
  v7 = [v6 sectionIdentifier];
  v8 = [v7 isEqualToString:@"com.apple.mobiletimer"];

  if (v8)
  {
    v9 = [(SBNCSoundControllerAccessibility *)self safeDictionaryForKey:@"_playingSounds"];
    v10 = [v6 notificationIdentifier];
    v11 = [v9 objectForKey:v10];

    if (v11)
    {
      v12 = [v6 notificationIdentifier];
      [(SBNCSoundControllerAccessibility *)self _accessibilitySetRetainedValue:v12 forKey:@"AXAlarmSoundPlayingDataKey"];
    }
  }
}

- (void)_killSounds
{
  v3.receiver = self;
  v3.super_class = SBNCSoundControllerAccessibility;
  [(SBNCSoundControllerAccessibility *)&v3 _killSounds];
  [(SBNCSoundControllerAccessibility *)self _accessibilityRemoveValueForKey:@"AXAlarmSoundPlayingDataKey"];
}

- (void)stopSoundForNotificationRequest:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBNCSoundControllerAccessibility;
  [(SBNCSoundControllerAccessibility *)&v4 stopSoundForNotificationRequest:a3];
  [(SBNCSoundControllerAccessibility *)self _accessibilityRemoveValueForKey:@"AXAlarmSoundPlayingDataKey"];
}

@end