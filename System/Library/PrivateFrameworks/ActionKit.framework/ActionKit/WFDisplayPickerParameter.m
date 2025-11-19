@interface WFDisplayPickerParameter
- (NSArray)displays;
- (WFDisplayPickerParameter)initWithDefinition:(id)a3;
- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4;
@end

@implementation WFDisplayPickerParameter

- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 value];
    v8 = [v7 name];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)displays
{
  displays = self->_displays;
  if (!displays)
  {
    self->_displays = MEMORY[0x277CBEBF8];
    displays = self->_displays;
  }

  return displays;
}

- (WFDisplayPickerParameter)initWithDefinition:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFDisplayPickerParameter;
  v3 = [(WFDynamicEnumerationParameter *)&v7 initWithDefinition:a3];
  v4 = v3;
  if (v3)
  {
    [(WFDynamicEnumerationParameter *)v3 setDataSource:v3];
    v5 = v4;
  }

  return v4;
}

@end