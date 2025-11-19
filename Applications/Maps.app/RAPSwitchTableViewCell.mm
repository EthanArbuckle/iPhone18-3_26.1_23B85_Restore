@interface RAPSwitchTableViewCell
- (RAPSwitchTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 delegate:(id)a5;
- (void)_updateContent;
- (void)setCorrectableFlag:(id)a3;
- (void)updateSwitchState:(BOOL)a3;
- (void)updateValue:(id)a3;
@end

@implementation RAPSwitchTableViewCell

- (void)updateSwitchState:(BOOL)a3
{
  v3 = a3;
  if ([(UISwitch *)self->_toggle isOn]!= a3)
  {
    toggle = self->_toggle;

    [(UISwitch *)toggle setOn:v3 animated:1];
  }
}

- (void)updateValue:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v4 isOn];

  [WeakRetained switchTableViewCell:self changedValue:v5];
}

- (void)_updateContent
{
  [(UISwitch *)self->_toggle setOn:[(RAPPlaceCorrectableFlag *)self->_correctableFlag value] animated:0];
  v4 = [(RAPPlaceCorrectableFlag *)self->_correctableFlag localizedTitle];
  v3 = [(RAPSingleLineTableViewCell *)self textLabel];
  [v3 setText:v4];
}

- (void)setCorrectableFlag:(id)a3
{
  v5 = a3;
  if (self->_correctableFlag != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_correctableFlag, a3);
    [(RAPSwitchTableViewCell *)self _updateContent];
    v5 = v6;
  }
}

- (RAPSwitchTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 delegate:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = RAPSwitchTableViewCell;
  v9 = [(RAPSingleLineTableViewCell *)&v14 initWithStyle:a3 reuseIdentifier:a4];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
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