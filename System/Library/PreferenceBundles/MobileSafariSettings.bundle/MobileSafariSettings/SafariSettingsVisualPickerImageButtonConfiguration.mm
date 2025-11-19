@interface SafariSettingsVisualPickerImageButtonConfiguration
- (NSDictionary)dictionaryRepresentation;
- (SafariSettingsVisualPickerImageButtonConfiguration)initWithDictionaryRepresentation:(id)a3;
- (SafariSettingsVisualPickerImageButtonConfiguration)initWithTitle:(id)a3 preferenceValue:(id)a4 imageName:(id)a5;
@end

@implementation SafariSettingsVisualPickerImageButtonConfiguration

- (SafariSettingsVisualPickerImageButtonConfiguration)initWithTitle:(id)a3 preferenceValue:(id)a4 imageName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = SafariSettingsVisualPickerImageButtonConfiguration;
  v11 = [(SafariSettingsVisualPickerImageButtonConfiguration *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [v10 copy];
    imageName = v11->_imageName;
    v11->_imageName = v14;

    v16 = [v9 copy];
    preferenceValue = v11->_preferenceValue;
    v11->_preferenceValue = v16;

    v11->_enabled = 1;
    v18 = v11;
  }

  return v11;
}

- (SafariSettingsVisualPickerImageButtonConfiguration)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 safari_stringForKey:@"SafariSettingsVisualPickerButtonImageName"];
  v6 = [v4 safari_stringForKey:@"SafariSettingsVisualPickerButtonTitle"];
  v7 = [v4 safari_numberForKey:@"SafariSettingsVisualPickerButtonPreferenceValue"];
  v8 = v7;
  v9 = 0;
  if (v5 && v6 && v7)
  {
    self = [(SafariSettingsVisualPickerImageButtonConfiguration *)self initWithTitle:v6 preferenceValue:v7 imageName:v5];
    if (self)
    {
      self->_enabled = [v4 safari_BOOLForKey:@"SafariSettingsVisualPickerButtonEnabled"];
      self = self;
      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
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