@interface SFSiriReaderPlaybackPositionAndStateControllerAccessibility
@end

@implementation SFSiriReaderPlaybackPositionAndStateControllerAccessibility

id __79___SFSiriReaderPlaybackPositionAndStateControllerAccessibility_prepareStepper___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) safeBoolForKey:@"_isPlaying"])
  {
    v1 = @"reader.pause";
  }

  else
  {
    v1 = @"reader.play";
  }

  v2 = accessibilitySafariServicesLocalizedString(v1);

  return v2;
}

id __79___SFSiriReaderPlaybackPositionAndStateControllerAccessibility_prepareStepper___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x29EDB8DE8] array];
  v3 = objc_alloc(MEMORY[0x29EDC78E0]);
  v4 = accessibilitySafariServicesLocalizedString(@"skip.backward");
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __79___SFSiriReaderPlaybackPositionAndStateControllerAccessibility_prepareStepper___block_invoke_3;
  v11[3] = &unk_29F2F2990;
  v11[4] = *(a1 + 32);
  v5 = [v3 initWithName:v4 actionHandler:v11];

  [v2 addObject:v5];
  v6 = objc_alloc(MEMORY[0x29EDC78E0]);
  v7 = accessibilitySafariServicesLocalizedString(@"skip.forward");
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __79___SFSiriReaderPlaybackPositionAndStateControllerAccessibility_prepareStepper___block_invoke_5;
  v10[3] = &unk_29F2F2990;
  v10[4] = *(a1 + 32);
  v8 = [v6 initWithName:v7 actionHandler:v10];

  [v2 addObject:v8];

  return v2;
}

@end