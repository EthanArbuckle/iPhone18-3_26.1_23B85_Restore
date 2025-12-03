@interface CNPropertySimpleCell
- (id)labelView;
- (id)valueView;
@end

@implementation CNPropertySimpleCell

- (id)valueView
{
  valueLabel = self->_valueLabel;
  if (!valueLabel)
  {
    standardValueView = [(CNLabeledCell *)self standardValueView];
    v5 = self->_valueLabel;
    self->_valueLabel = standardValueView;

    valueLabel = self->_valueLabel;
  }

  return valueLabel;
}

- (id)labelView
{
  labelLabel = self->_labelLabel;
  if (!labelLabel)
  {
    standardLabelView = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_labelLabel;
    self->_labelLabel = standardLabelView;

    labelLabel = self->_labelLabel;
  }

  return labelLabel;
}

@end