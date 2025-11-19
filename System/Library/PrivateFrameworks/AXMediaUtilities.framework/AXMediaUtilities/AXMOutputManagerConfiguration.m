@interface AXMOutputManagerConfiguration
- (id)description;
@end

@implementation AXMOutputManagerConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  components = self->_components;
  if (components)
  {
    [v3 addObject:@"Speech"];
    components = self->_components;
    if ((components & 2) == 0)
    {
LABEL_3:
      if ((components & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((components & 2) == 0)
  {
    goto LABEL_3;
  }

  [v4 addObject:@"Sounds"];
  if ((self->_components & 4) != 0)
  {
LABEL_4:
    [v4 addObject:@"Haptics"];
  }

LABEL_5:
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v4 componentsJoinedByString:{@", "}];
  v8 = [v6 stringWithFormat:@"[%@] usesPrivateAudioSession=%ld hapticEngineUsesAutoShutdown=%ld hapticEngineAutoShutdownTimeout=%.2f hapticEngineUsesHapticsOnly=%ld", v7, self->_usesPrivateAudioSession, self->_hapticEngineUsesAutoShutdown, *&self->_hapticEngineAutoShutdownTimeout, self->_hapticEngineUsesHapticsOnly];

  return v8;
}

@end