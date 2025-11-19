@interface SFContactAutoFillValue
- (SFContactAutoFillValue)initWithMatches:(id)a3 displayValue:(id)a4 label:(id)a5;
@end

@implementation SFContactAutoFillValue

- (SFContactAutoFillValue)initWithMatches:(id)a3 displayValue:(id)a4 label:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = SFContactAutoFillValue;
  v11 = [(SFContactAutoFillValue *)&v21 init];
  v12 = v11;
  if (v11)
  {
    v11->_selected = 1;
    v13 = [v8 copy];
    matches = v12->_matches;
    v12->_matches = v13;

    v15 = [v9 copy];
    displayValue = v12->_displayValue;
    v12->_displayValue = v15;

    v17 = [v10 copy];
    label = v12->_label;
    v12->_label = v17;

    v19 = v12;
  }

  return v12;
}

@end