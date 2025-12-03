@interface TapticChimesController
- (id)_tapticChimesCurrentSchedule;
- (id)_tapticChimesCurrentSounds;
- (id)_tapticChimesEnabled;
- (id)specifiers;
- (void)_setTapticChimesEnabled:(id)enabled;
@end

@implementation TapticChimesController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    mEMORY[0x277CE6FA8] = [MEMORY[0x277CE6FA8] sharedInstance];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    tapticChimesLocalizedDescription = [mEMORY[0x277CE6FA8] tapticChimesLocalizedDescription];
    [emptyGroupSpecifier setProperty:tapticChimesLocalizedDescription forKey:*MEMORY[0x277D3FF88]];

    [array addObject:emptyGroupSpecifier];
    v9 = MEMORY[0x277D3FAD8];
    tapticChimesLocalizedTitle = [mEMORY[0x277CE6FA8] tapticChimesLocalizedTitle];
    v11 = [v9 preferenceSpecifierNamed:tapticChimesLocalizedTitle target:self set:sel__setTapticChimesEnabled_ get:sel__tapticChimesEnabled detail:0 cell:6 edit:0];

    [array addObject:v11];
    v12 = MEMORY[0x277D3FAD8];
    tapticChimesScheduleLocalizedTitle = [mEMORY[0x277CE6FA8] tapticChimesScheduleLocalizedTitle];
    v14 = [v12 preferenceSpecifierNamed:tapticChimesScheduleLocalizedTitle target:self set:0 get:sel__tapticChimesCurrentSchedule detail:objc_opt_class() cell:2 edit:0];

    [v14 setIdentifier:@"CHIMES_SCHEDULE_ID"];
    [array addObject:v14];
    v15 = MEMORY[0x277D3FAD8];
    tapticChimesSoundsLocalizedTitle = [mEMORY[0x277CE6FA8] tapticChimesSoundsLocalizedTitle];
    v17 = [v15 preferenceSpecifierNamed:tapticChimesSoundsLocalizedTitle target:self set:0 get:sel__tapticChimesCurrentSounds detail:objc_opt_class() cell:2 edit:0];

    [v17 setIdentifier:@"CHIMES_SOUNDS_ID"];
    [array addObject:v17];
    v18 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)_setTapticChimesEnabled:(id)enabled
{
  bOOLValue = [enabled BOOLValue];
  mEMORY[0x277CE6FA8] = [MEMORY[0x277CE6FA8] sharedInstance];
  [mEMORY[0x277CE6FA8] setVoiceOverTapticChimesEnabled:bOOLValue];
}

- (id)_tapticChimesEnabled
{
  v2 = MEMORY[0x277CCABB0];
  mEMORY[0x277CE6FA8] = [MEMORY[0x277CE6FA8] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(mEMORY[0x277CE6FA8], "voiceOverTapticChimesEnabled")}];

  return v4;
}

- (id)_tapticChimesCurrentSchedule
{
  mEMORY[0x277CE6FA8] = [MEMORY[0x277CE6FA8] sharedInstance];
  tapticChimesLocalizedCurrentFrequency = [mEMORY[0x277CE6FA8] tapticChimesLocalizedCurrentFrequency];

  return tapticChimesLocalizedCurrentFrequency;
}

- (id)_tapticChimesCurrentSounds
{
  mEMORY[0x277CE6FA8] = [MEMORY[0x277CE6FA8] sharedInstance];
  tapticChimesLocalizedCurrentSounds = [mEMORY[0x277CE6FA8] tapticChimesLocalizedCurrentSounds];

  return tapticChimesLocalizedCurrentSounds;
}

@end