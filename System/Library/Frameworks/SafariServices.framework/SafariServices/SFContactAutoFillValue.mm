@interface SFContactAutoFillValue
- (SFContactAutoFillValue)initWithMatches:(id)matches displayValue:(id)value label:(id)label;
@end

@implementation SFContactAutoFillValue

- (SFContactAutoFillValue)initWithMatches:(id)matches displayValue:(id)value label:(id)label
{
  matchesCopy = matches;
  valueCopy = value;
  labelCopy = label;
  v21.receiver = self;
  v21.super_class = SFContactAutoFillValue;
  v11 = [(SFContactAutoFillValue *)&v21 init];
  v12 = v11;
  if (v11)
  {
    v11->_selected = 1;
    v13 = [matchesCopy copy];
    matches = v12->_matches;
    v12->_matches = v13;

    v15 = [valueCopy copy];
    displayValue = v12->_displayValue;
    v12->_displayValue = v15;

    v17 = [labelCopy copy];
    label = v12->_label;
    v12->_label = v17;

    v19 = v12;
  }

  return v12;
}

@end