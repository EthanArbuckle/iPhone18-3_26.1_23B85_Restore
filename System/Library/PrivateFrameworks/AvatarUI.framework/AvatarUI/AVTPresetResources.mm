@interface AVTPresetResources
- (AVTPresetResources)initWithPreset:(id)preset;
- (NSString)presetIdentifier;
- (id)resources;
- (id)volatileIdentifierForScope:(id)scope;
@end

@implementation AVTPresetResources

- (AVTPresetResources)initWithPreset:(id)preset
{
  presetCopy = preset;
  v9.receiver = self;
  v9.super_class = AVTPresetResources;
  v6 = [(AVTPresetResources *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preset, preset);
  }

  return v7;
}

- (NSString)presetIdentifier
{
  preset = [(AVTPresetResources *)self preset];
  identifier = [preset identifier];
  v4 = [identifier copy];

  return v4;
}

- (id)resources
{
  preset = [(AVTPresetResources *)self preset];
  cache = [preset cache];

  return cache;
}

- (id)volatileIdentifierForScope:(id)scope
{
  v4 = MEMORY[0x1E696AEC0];
  preset = [(AVTPresetResources *)self preset];
  category = [preset category];
  preset2 = [(AVTPresetResources *)self preset];
  identifier = [preset2 identifier];
  v9 = [v4 stringWithFormat:@"%ld_%@", category, identifier];

  return v9;
}

@end