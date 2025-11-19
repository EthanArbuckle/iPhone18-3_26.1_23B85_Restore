@interface AVTPresetResources
- (AVTPresetResources)initWithPreset:(id)a3;
- (NSString)presetIdentifier;
- (id)resources;
- (id)volatileIdentifierForScope:(id)a3;
@end

@implementation AVTPresetResources

- (AVTPresetResources)initWithPreset:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVTPresetResources;
  v6 = [(AVTPresetResources *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preset, a3);
  }

  return v7;
}

- (NSString)presetIdentifier
{
  v2 = [(AVTPresetResources *)self preset];
  v3 = [v2 identifier];
  v4 = [v3 copy];

  return v4;
}

- (id)resources
{
  v2 = [(AVTPresetResources *)self preset];
  v3 = [v2 cache];

  return v3;
}

- (id)volatileIdentifierForScope:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(AVTPresetResources *)self preset];
  v6 = [v5 category];
  v7 = [(AVTPresetResources *)self preset];
  v8 = [v7 identifier];
  v9 = [v4 stringWithFormat:@"%ld_%@", v6, v8];

  return v9;
}

@end