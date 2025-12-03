@interface AVTPresetStoreDependencyCondition
- (id)displayString;
@end

@implementation AVTPresetStoreDependencyCondition

- (id)displayString
{
  v3 = MEMORY[0x1E696AEC0];
  specificPresetIdentifier = self->_specificPresetIdentifier;
  v5 = AVTPresetCategoryToString([(AVTPreset *)self->_presetOfOtherCategory category]);
  identifier = [(AVTPreset *)self->_presetOfOtherCategory identifier];
  v7 = identifier;
  if (specificPresetIdentifier)
  {
    [v3 stringWithFormat:@"%@ is %@ and self is %@", v5, identifier, self->_specificPresetIdentifier];
  }

  else
  {
    [v3 stringWithFormat:@"%@ is %@", v5, identifier, v10];
  }
  v8 = ;

  return v8;
}

@end