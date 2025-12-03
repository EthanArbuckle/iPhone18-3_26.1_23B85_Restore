@interface SBNCSoundControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsAlarmRinging;
- (void)_killSounds;
- (void)_playSoundIfPossibleForNotificationRequest:(id)request presentingDestination:(id)destination completion:(id)completion;
- (void)playSoundForNotificationRequest:(id)request presentingDestination:(id)destination;
- (void)stopSoundForNotificationRequest:(id)request;
@end

@implementation SBNCSoundControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBNCSoundController" hasInstanceVariable:@"_playingSounds" withType:"NSMutableDictionary"];
  [validationsCopy validateClass:@"SBNCSoundController" hasInstanceMethod:@"playSoundForNotificationRequest:presentingDestination:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"SBNCSoundController" hasInstanceMethod:@"_killSounds" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBNCSoundController" hasInstanceMethod:@"stopSoundForNotificationRequest:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBNCSoundController" hasInstanceMethod:@"_playSoundIfPossibleForNotificationRequest:presentingDestination:completion:" withFullSignature:{"v", "@", "@", "@?", 0}];
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

- (void)_playSoundIfPossibleForNotificationRequest:(id)request presentingDestination:(id)destination completion:(id)completion
{
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = SBNCSoundControllerAccessibility;
  [(SBNCSoundControllerAccessibility *)&v13 _playSoundIfPossibleForNotificationRequest:requestCopy presentingDestination:destination completion:completion];
  categoryIdentifier = [requestCopy categoryIdentifier];
  if ([categoryIdentifier isEqualToString:*MEMORY[0x29EDC5D88]])
  {

LABEL_4:
    categoryIdentifier2 = [requestCopy categoryIdentifier];
    [(SBNCSoundControllerAccessibility *)self _accessibilitySetRetainedValue:categoryIdentifier2 forKey:@"AXAlarmSoundPlayingDataKey"];

    goto LABEL_5;
  }

  categoryIdentifier3 = [requestCopy categoryIdentifier];
  v11 = [categoryIdentifier3 isEqualToString:*MEMORY[0x29EDC5D90]];

  if (v11)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)playSoundForNotificationRequest:(id)request presentingDestination:(id)destination
{
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = SBNCSoundControllerAccessibility;
  [(SBNCSoundControllerAccessibility *)&v13 playSoundForNotificationRequest:requestCopy presentingDestination:destination];
  sectionIdentifier = [requestCopy sectionIdentifier];
  v8 = [sectionIdentifier isEqualToString:@"com.apple.mobiletimer"];

  if (v8)
  {
    v9 = [(SBNCSoundControllerAccessibility *)self safeDictionaryForKey:@"_playingSounds"];
    notificationIdentifier = [requestCopy notificationIdentifier];
    v11 = [v9 objectForKey:notificationIdentifier];

    if (v11)
    {
      notificationIdentifier2 = [requestCopy notificationIdentifier];
      [(SBNCSoundControllerAccessibility *)self _accessibilitySetRetainedValue:notificationIdentifier2 forKey:@"AXAlarmSoundPlayingDataKey"];
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

- (void)stopSoundForNotificationRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = SBNCSoundControllerAccessibility;
  [(SBNCSoundControllerAccessibility *)&v4 stopSoundForNotificationRequest:request];
  [(SBNCSoundControllerAccessibility *)self _accessibilityRemoveValueForKey:@"AXAlarmSoundPlayingDataKey"];
}

@end