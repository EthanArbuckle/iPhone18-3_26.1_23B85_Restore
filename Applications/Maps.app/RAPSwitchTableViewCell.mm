@interface RAPSwitchTableViewCell
- (RAPSwitchTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier delegate:(id)delegate;
- (void)_updateContent;
- (void)setCorrectableFlag:(id)flag;
- (void)updateSwitchState:(BOOL)state;
- (void)updateValue:(id)value;
@end

@implementation RAPSwitchTableViewCell

- (void)updateSwitchState:(BOOL)state
{
  stateCopy = state;
  if ([(UISwitch *)self->_toggle isOn]!= state)
  {
    toggle = self->_toggle;

    [(UISwitch *)toggle setOn:stateCopy animated:1];
  }
}

- (void)updateValue:(id)value
{
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isOn = [valueCopy isOn];

  [WeakRetained switchTableViewCell:self changedValue:isOn];
}

- (void)_updateContent
{
  [(UISwitch *)self->_toggle setOn:[(RAPPlaceCorrectableFlag *)self->_correctableFlag value] animated:0];
  localizedTitle = [(RAPPlaceCorrectableFlag *)self->_correctableFlag localizedTitle];
  textLabel = [(RAPSingleLineTableViewCell *)self textLabel];
  [textLabel setText:localizedTitle];
}

- (void)setCorrectableFlag:(id)flag
{
  flagCopy = flag;
  if (self->_correctableFlag != flagCopy)
  {
    v6 = flagCopy;
    objc_storeStrong(&self->_correctableFlag, flag);
    [(RAPSwitchTableViewCell *)self _updateContent];
    flagCopy = v6;
  }
}

- (RAPSwitchTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier delegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = RAPSwitchTableViewCell;
  v9 = [(RAPSingleLineTableViewCell *)&v14 initWithStyle:style reuseIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v11 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    toggle = v10->_toggle;
    v10->_toggle = v11;

    [(UISwitch *)v10->_toggle addTarget:v10 action:"updateValue:" forControlEvents:4096];
    [(RAPSwitchTableViewCell *)v10 setAccessoryView:v10->_toggle];
    [(RAPSwitchTableViewCell *)v10 setSelectionStyle:0];
  }

  return v10;
}

@end