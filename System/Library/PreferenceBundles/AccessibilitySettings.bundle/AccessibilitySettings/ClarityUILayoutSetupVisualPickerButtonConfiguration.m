@interface ClarityUILayoutSetupVisualPickerButtonConfiguration
- (ClarityUILayoutSetupVisualPickerButtonConfiguration)initWithTitle:(id)a3 preferenceValue:(id)a4;
- (NSDictionary)_dictionaryRepresentation;
@end

@implementation ClarityUILayoutSetupVisualPickerButtonConfiguration

- (ClarityUILayoutSetupVisualPickerButtonConfiguration)initWithTitle:(id)a3 preferenceValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = ClarityUILayoutSetupVisualPickerButtonConfiguration;
  v8 = [(ClarityUILayoutSetupVisualPickerButtonConfiguration *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
    preferenceValue = v8->_preferenceValue;
    v8->_preferenceValue = v11;

    v13 = v8;
  }

  return v8;
}

- (NSDictionary)_dictionaryRepresentation
{
  title = self->_title;
  if (title && (preferenceValue = self->_preferenceValue) != 0)
  {
    v6[0] = @"ClarityUILayoutSetupVisualPickerButtonTitle";
    v6[1] = @"ClarityUILayoutSetupVisualPickerButtonPreferenceValue";
    v7[0] = title;
    v7[1] = preferenceValue;
    v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end