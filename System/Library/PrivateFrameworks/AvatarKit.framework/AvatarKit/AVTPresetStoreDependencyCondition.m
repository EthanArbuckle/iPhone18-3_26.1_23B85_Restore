@interface AVTPresetStoreDependencyCondition
- (id)displayString;
@end

@implementation AVTPresetStoreDependencyCondition

- (id)displayString
{
  v3 = MEMORY[0x1E696AEC0];
  specificPresetIdentifier = self->_specificPresetIdentifier;
  v5 = AVTPresetCategoryToString([(AVTPreset *)self->_presetOfOtherCategory category]);
  v6 = [(AVTPreset *)self->_presetOfOtherCategory identifier];
  v7 = v6;
  if (specificPresetIdentifier)
  {
    [v3 stringWithFormat:@"%@ is %@ and self is %@", v5, v6, self->_specificPresetIdentifier];
  }

  else
  {
    [v3 stringWithFormat:@"%@ is %@", v5, v6, v10];
  }
  v8 = ;

  return v8;
}

@end