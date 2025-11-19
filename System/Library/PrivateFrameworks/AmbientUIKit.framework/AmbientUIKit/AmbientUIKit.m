id AMUIRedModeAnimationSettings()
{
  v0 = MEMORY[0x277CF0B70];
  v1 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  v2 = [v0 settingsWithDuration:v1 timingFunction:1.2];

  return v2;
}