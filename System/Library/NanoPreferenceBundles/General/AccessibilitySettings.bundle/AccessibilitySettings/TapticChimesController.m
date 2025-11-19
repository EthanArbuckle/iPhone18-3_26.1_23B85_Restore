@interface TapticChimesController
- (id)_tapticChimesCurrentSchedule;
- (id)_tapticChimesCurrentSounds;
- (id)_tapticChimesEnabled;
- (id)specifiers;
- (void)_setTapticChimesEnabled:(id)a3;
@end

@implementation TapticChimesController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CE6FA8] sharedInstance];
    v7 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v8 = [v6 tapticChimesLocalizedDescription];
    [v7 setProperty:v8 forKey:*MEMORY[0x277D3FF88]];

    [v5 addObject:v7];
    v9 = MEMORY[0x277D3FAD8];
    v10 = [v6 tapticChimesLocalizedTitle];
    v11 = [v9 preferenceSpecifierNamed:v10 target:self set:sel__setTapticChimesEnabled_ get:sel__tapticChimesEnabled detail:0 cell:6 edit:0];

    [v5 addObject:v11];
    v12 = MEMORY[0x277D3FAD8];
    v13 = [v6 tapticChimesScheduleLocalizedTitle];
    v14 = [v12 preferenceSpecifierNamed:v13 target:self set:0 get:sel__tapticChimesCurrentSchedule detail:objc_opt_class() cell:2 edit:0];

    [v14 setIdentifier:@"CHIMES_SCHEDULE_ID"];
    [v5 addObject:v14];
    v15 = MEMORY[0x277D3FAD8];
    v16 = [v6 tapticChimesSoundsLocalizedTitle];
    v17 = [v15 preferenceSpecifierNamed:v16 target:self set:0 get:sel__tapticChimesCurrentSounds detail:objc_opt_class() cell:2 edit:0];

    [v17 setIdentifier:@"CHIMES_SOUNDS_ID"];
    [v5 addObject:v17];
    v18 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)_setTapticChimesEnabled:(id)a3
{
  v3 = [a3 BOOLValue];
  v4 = [MEMORY[0x277CE6FA8] sharedInstance];
  [v4 setVoiceOverTapticChimesEnabled:v3];
}

- (id)_tapticChimesEnabled
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277CE6FA8] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "voiceOverTapticChimesEnabled")}];

  return v4;
}

- (id)_tapticChimesCurrentSchedule
{
  v2 = [MEMORY[0x277CE6FA8] sharedInstance];
  v3 = [v2 tapticChimesLocalizedCurrentFrequency];

  return v3;
}

- (id)_tapticChimesCurrentSounds
{
  v2 = [MEMORY[0x277CE6FA8] sharedInstance];
  v3 = [v2 tapticChimesLocalizedCurrentSounds];

  return v3;
}

@end