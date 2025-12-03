@interface CNPostalAddressFormattingSpecification
- (CNPostalAddressFormattingSpecification)initWithDisplayFieldArrangement:(id)arrangement editingFieldArrangement:(id)fieldArrangement fieldLabelMap:(id)map;
- (id)localizedPlaceholderForKey:(id)key;
@end

@implementation CNPostalAddressFormattingSpecification

- (CNPostalAddressFormattingSpecification)initWithDisplayFieldArrangement:(id)arrangement editingFieldArrangement:(id)fieldArrangement fieldLabelMap:(id)map
{
  arrangementCopy = arrangement;
  fieldArrangementCopy = fieldArrangement;
  mapCopy = map;
  v20.receiver = self;
  v20.super_class = CNPostalAddressFormattingSpecification;
  v11 = [(CNPostalAddressFormattingSpecification *)&v20 init];
  if (v11)
  {
    v12 = [arrangementCopy copy];
    displayFieldArrangement = v11->_displayFieldArrangement;
    v11->_displayFieldArrangement = v12;

    v14 = [fieldArrangementCopy copy];
    editingFieldArrangement = v11->_editingFieldArrangement;
    v11->_editingFieldArrangement = v14;

    v16 = [mapCopy copy];
    fieldLabelMap = v11->_fieldLabelMap;
    v11->_fieldLabelMap = v16;

    v18 = v11;
  }

  return v11;
}

- (id)localizedPlaceholderForKey:(id)key
{
  keyCopy = key;
  fieldLabelMap = [(CNPostalAddressFormattingSpecification *)self fieldLabelMap];
  v6 = [fieldLabelMap objectForKeyedSubscript:keyCopy];

  return v6;
}

@end