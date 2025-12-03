@interface MTEpisodeLockupAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformMoreActions:(id)actions;
- (BOOL)updateIsCurrentPlayerItemState;
- (id)_privateAccessibilityCustomActions;
- (id)accessibilityLabel;
- (id)automationElements;
@end

@implementation MTEpisodeLockupAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTEpisodeLockup" hasInstanceMethod:@"episode" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTEpisodeLockup" hasInstanceMethod:@"actionButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTEpisodeLockup" hasInstanceMethod:@"metadataLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTEpisode" hasProperty:@"title" withType:"@"];
  [validationsCopy validateClass:@"MTEpisode" hasProperty:@"pubDate" withType:"d"];
  [validationsCopy validateClass:@"MTEpisode" hasProperty:@"duration" withType:"d"];
  [validationsCopy validateClass:@"MTEpisode" hasInstanceMethod:@"timeRemaining" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"MTEpisode" hasProperty:@"video" withType:"B"];
  [validationsCopy validateClass:@"MTEpisode" hasProperty:@"audio" withType:"B"];
  [validationsCopy validateClass:@"MTEpisode" hasProperty:@"explicit" withType:"B"];
  [validationsCopy validateClass:@"MTEpisode" hasProperty:@"saved" withType:"B"];
  [validationsCopy validateClass:@"MTEpisode" hasProperty:@"byteSize" withType:"q"];
  [validationsCopy validateClass:@"MTEpisodeLockup" hasProperty:@"currentPlayerItem" customGetter:@"isCurrentPlayerItem" customSetter:0 withType:"B"];
  [validationsCopy validateClass:@"MTEpisode" hasInstanceMethod:@"isUnplayed" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MTEpisode" hasInstanceMethod:@"isPartiallyPlayed" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MTEpisode" hasInstanceMethod:@"isPlayed" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MTEpisodeLockup" hasInstanceMethod:@"iconView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTEpisodeStateView" hasInstanceMethod:@"_streaming" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MTEpisodeStateView" hasInstanceMethod:@"_document" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MTEpisodeStateView" hasInstanceMethod:@"_error" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MTEpisodeStateView" hasInstanceMethod:@"_airplaneMode" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MTEpisodeLockup" hasInstanceMethod:@"updateIsCurrentPlayerItemState" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MTEpisodeLockupAccessibility *)self safeValueForKey:@"episode"];
  objc_opt_class();
  v4 = [v3 safeValueForKey:@"title"];
  v34 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [v3 safeValueForKey:@"author"];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = [v3 safeValueForKey:@"bestDescription"];
  v8 = __UIAccessibilityCastAsClass();

  v9 = MEMORY[0x29EDB9F78];
  objc_opt_class();
  v10 = [v3 valueForKey:@"pubDate"];
  v11 = __UIAccessibilityCastAsClass();

  v12 = [v9 localizedStringFromDate:v11 dateStyle:2 timeStyle:1];

  [v3 safeDoubleForKey:@"duration"];
  v14 = v13;
  [v3 safeDoubleForKey:@"timeRemaining"];
  v38 = v12;
  if (vabdd_f64(v14, v15) >= 0.001)
  {
    v17 = MEMORY[0x29EDBA0F8];
    v18 = accessibilityLocalizedString(@"episode.time.remaining");
    v19 = AXDurationStringForDuration();
    v16 = [v17 stringWithFormat:v18, v19];
  }

  else
  {
    v16 = 0;
  }

  if ([v3 safeBoolForKey:@"video"])
  {
    v37 = accessibilityLocalizedString(@"is.video");
  }

  else
  {
    v37 = 0;
  }

  if ([v3 safeBoolForKey:@"audio"])
  {
    v36 = accessibilityLocalizedString(@"is.audio");
  }

  else
  {
    v36 = 0;
  }

  if ([v3 safeBoolForKey:@"explicit"])
  {
    v33 = accessibilityLocalizedString(@"explicit");
  }

  else
  {
    v33 = 0;
  }

  if ([v3 safeBoolForKey:@"saved"])
  {
    v20 = accessibilityLocalizedString(@"saved");
  }

  else
  {
    v20 = 0;
  }

  if ([v3 safeIntegerForKey:@"byteSize"] <= 0)
  {
    accessibilityLocalizedString(@"unknown.size");
  }

  else
  {
    AXFormatByteSize();
  }
  v21 = ;
  if (([(MTEpisodeLockupAccessibility *)self safeBoolForKey:@"isCurrentPlayerItem"]& 1) != 0)
  {
    v22 = @"now.playing";
LABEL_27:
    v32 = accessibilityLocalizedString(v22);
    goto LABEL_28;
  }

  if ([v3 safeBoolForKey:@"isUnplayed"])
  {
    v22 = @"unplayed";
    goto LABEL_27;
  }

  if ([v3 safeBoolForKey:@"isPartiallyPlayed"])
  {
    v22 = @"partial.play";
    goto LABEL_27;
  }

  if ([v3 safeBoolForKey:@"isPlayed"])
  {
    v22 = @"played";
    goto LABEL_27;
  }

  v32 = 0;
LABEL_28:
  v23 = [(MTEpisodeLockupAccessibility *)self safeValueForKey:@"iconView"];
  if ([v23 safeBoolForKey:@"_streaming"])
  {
    v24 = accessibilityLocalizedString(@"streaming");
  }

  else
  {
    v24 = 0;
  }

  v35 = v6;
  if ([v23 safeBoolForKey:@"_document"])
  {
    v25 = accessibilityLocalizedString(@"document");
  }

  else
  {
    v25 = 0;
  }

  v26 = v8;
  if ([v23 safeBoolForKey:@"_error"])
  {
    v27 = accessibilityLocalizedString(@"error");
  }

  else
  {
    v27 = 0;
  }

  if ([v23 safeBoolForKey:@"_airplaneMode"])
  {
    v28 = accessibilityLocalizedString(@"airplane.mode");
  }

  else
  {
    v28 = 0;
  }

  v30 = AXDurationStringForDuration();
  v31 = __UIAXStringForVariables();

  return v31;
}

- (BOOL)accessibilityPerformMoreActions:(id)actions
{
  v3 = [(MTEpisodeLockupAccessibility *)self safeValueForKey:@"actionButton"];
  [v3 accessibilityActivate];

  return 1;
}

- (id)_privateAccessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(MTEpisodeLockupAccessibility *)self safeValueForKey:@"actionButton"];
  v5 = v4;
  if (v4 && ([v4 isHidden] & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x29EDC78E0]);
    v7 = accessibilityLocalizedString(@"more.actions");
    v8 = [v6 initWithName:v7 target:self selector:sel_accessibilityPerformMoreActions_];

    [array addObject:v8];
  }

  return array;
}

- (id)automationElements
{
  v11.receiver = self;
  v11.super_class = MTEpisodeLockupAccessibility;
  automationElements = [(MTEpisodeLockupAccessibility *)&v11 automationElements];
  v4 = [automationElements mutableCopy];
  v5 = v4;
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v7 = array;

  objc_opt_class();
  v8 = [(MTEpisodeLockupAccessibility *)self safeValueForKey:@"metadataLabel"];
  v9 = __UIAccessibilityCastAsClass();

  if (v9 && ([v7 containsObject:v9] & 1) == 0)
  {
    [v7 addObject:v9];
  }

  return v7;
}

- (BOOL)updateIsCurrentPlayerItemState
{
  v4.receiver = self;
  v4.super_class = MTEpisodeLockupAccessibility;
  updateIsCurrentPlayerItemState = [(MTEpisodeLockupAccessibility *)&v4 updateIsCurrentPlayerItemState];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  return updateIsCurrentPlayerItemState;
}

@end