@interface WFDisplayPickerParameter
- (NSArray)displays;
- (WFDisplayPickerParameter)initWithDefinition:(id)definition;
- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state;
@end

@implementation WFDisplayPickerParameter

- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state
{
  enumerationCopy = enumeration;
  stateCopy = state;
  if (stateCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    value = [stateCopy value];
    name = [value name];
  }

  else
  {
    name = 0;
  }

  return name;
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

- (WFDisplayPickerParameter)initWithDefinition:(id)definition
{
  v7.receiver = self;
  v7.super_class = WFDisplayPickerParameter;
  v3 = [(WFDynamicEnumerationParameter *)&v7 initWithDefinition:definition];
  v4 = v3;
  if (v3)
  {
    [(WFDynamicEnumerationParameter *)v3 setDataSource:v3];
    v5 = v4;
  }

  return v4;
}

@end