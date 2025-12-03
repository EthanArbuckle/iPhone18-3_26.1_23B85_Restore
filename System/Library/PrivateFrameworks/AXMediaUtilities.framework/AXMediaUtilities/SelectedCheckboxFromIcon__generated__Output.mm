@interface SelectedCheckboxFromIcon__generated__Output
- (SelectedCheckboxFromIcon__generated__Output)initWithLabelProbability:(id)probability label:(id)label;
- (id)featureValueForName:(id)name;
@end

@implementation SelectedCheckboxFromIcon__generated__Output

- (SelectedCheckboxFromIcon__generated__Output)initWithLabelProbability:(id)probability label:(id)label
{
  probabilityCopy = probability;
  labelCopy = label;
  if (self)
  {
    objc_storeStrong(&self->_labelProbability, probability);
    objc_storeStrong(&self->_label, label);
  }

  return self;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"labelProbability"])
  {
    v5 = [MEMORY[0x1E695FE60] featureValueWithDictionary:self->_labelProbability error:0];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"label"])
  {
    v5 = [MEMORY[0x1E695FE60] featureValueWithString:self->_label];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end