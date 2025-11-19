@interface CNPostalAddressFormattingSpecification
- (CNPostalAddressFormattingSpecification)initWithDisplayFieldArrangement:(id)a3 editingFieldArrangement:(id)a4 fieldLabelMap:(id)a5;
- (id)localizedPlaceholderForKey:(id)a3;
@end

@implementation CNPostalAddressFormattingSpecification

- (CNPostalAddressFormattingSpecification)initWithDisplayFieldArrangement:(id)a3 editingFieldArrangement:(id)a4 fieldLabelMap:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = CNPostalAddressFormattingSpecification;
  v11 = [(CNPostalAddressFormattingSpecification *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    displayFieldArrangement = v11->_displayFieldArrangement;
    v11->_displayFieldArrangement = v12;

    v14 = [v9 copy];
    editingFieldArrangement = v11->_editingFieldArrangement;
    v11->_editingFieldArrangement = v14;

    v16 = [v10 copy];
    fieldLabelMap = v11->_fieldLabelMap;
    v11->_fieldLabelMap = v16;

    v18 = v11;
  }

  return v11;
}

- (id)localizedPlaceholderForKey:(id)a3
{
  v4 = a3;
  v5 = [(CNPostalAddressFormattingSpecification *)self fieldLabelMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

@end