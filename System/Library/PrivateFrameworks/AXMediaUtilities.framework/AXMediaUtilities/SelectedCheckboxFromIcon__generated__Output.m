@interface SelectedCheckboxFromIcon__generated__Output
- (SelectedCheckboxFromIcon__generated__Output)initWithLabelProbability:(id)a3 label:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation SelectedCheckboxFromIcon__generated__Output

- (SelectedCheckboxFromIcon__generated__Output)initWithLabelProbability:(id)a3 label:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self)
  {
    objc_storeStrong(&self->_labelProbability, a3);
    objc_storeStrong(&self->_label, a4);
  }

  return self;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"labelProbability"])
  {
    v5 = [MEMORY[0x1E695FE60] featureValueWithDictionary:self->_labelProbability error:0];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"label"])
  {
    v5 = [MEMORY[0x1E695FE60] featureValueWithString:self->_label];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end