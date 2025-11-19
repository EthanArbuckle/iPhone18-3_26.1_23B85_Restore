@interface AVVCDuckSettings
- (AVVCDuckSettings)init;
- (id)description;
@end

@implementation AVVCDuckSettings

- (AVVCDuckSettings)init
{
  v8.receiver = self;
  v8.super_class = AVVCDuckSettings;
  v2 = [(AVVCDuckSettings *)&v8 init];
  v3 = v2;
  if (v2)
  {
    duckOverride = v2->_duckOverride;
    v2->_duckOverride = 0;

    duckLevel = v3->_duckLevel;
    v3->_duckLevel = 0;

    fadeDuration = v3->_fadeDuration;
    v3->_fadeDuration = 0;
  }

  return v3;
}

- (id)description
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<duckOverride(%@), duckLevel(%@), fadeDuration(%@)>", self->_duckOverride, self->_duckLevel, self->_fadeDuration];

  return v2;
}

@end