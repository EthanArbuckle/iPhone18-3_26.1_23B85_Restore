@interface SafariSettingsVisualPickerImageButtonConfiguration
- (NSDictionary)dictionaryRepresentation;
- (SafariSettingsVisualPickerImageButtonConfiguration)initWithDictionaryRepresentation:(id)representation;
- (SafariSettingsVisualPickerImageButtonConfiguration)initWithTitle:(id)title preferenceValue:(id)value imageName:(id)name;
@end

@implementation SafariSettingsVisualPickerImageButtonConfiguration

- (SafariSettingsVisualPickerImageButtonConfiguration)initWithTitle:(id)title preferenceValue:(id)value imageName:(id)name
{
  titleCopy = title;
  valueCopy = value;
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = SafariSettingsVisualPickerImageButtonConfiguration;
  v11 = [(SafariSettingsVisualPickerImageButtonConfiguration *)&v20 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [nameCopy copy];
    imageName = v11->_imageName;
    v11->_imageName = v14;

    v16 = [valueCopy copy];
    preferenceValue = v11->_preferenceValue;
    v11->_preferenceValue = v16;

    v11->_enabled = 1;
    v18 = v11;
  }

  return v11;
}

- (SafariSettingsVisualPickerImageButtonConfiguration)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy safari_stringForKey:@"SafariSettingsVisualPickerButtonImageName"];
  v6 = [representationCopy safari_stringForKey:@"SafariSettingsVisualPickerButtonTitle"];
  v7 = [representationCopy safari_numberForKey:@"SafariSettingsVisualPickerButtonPreferenceValue"];
  v8 = v7;
  selfCopy = 0;
  if (v5 && v6 && v7)
  {
    self = [(SafariSettingsVisualPickerImageButtonConfiguration *)self initWithTitle:v6 preferenceValue:v7 imageName:v5];
    if (self)
    {
      self->_enabled = [representationCopy safari_BOOLForKey:@"SafariSettingsVisualPickerButtonEnabled"];
      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = *&self->_title;
  v6[0] = @"SafariSettingsVisualPickerButtonTitle";
  v6[1] = @"SafariSettingsVisualPickerButtonPreferenceValue";
  imageName = self->_imageName;
  v7 = v2;
  v6[2] = @"SafariSettingsVisualPickerButtonImageName";
  v6[3] = @"SafariSettingsVisualPickerButtonEnabled";
  v3 = [NSNumber numberWithBool:self->_enabled];
  v9 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:v6 count:4];

  return v4;
}

@end