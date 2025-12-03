@interface AXUISettingsEditableTextCell
- (AXUISettingsEditableTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (BOOL)textFieldShouldReturn:(id)return;
- (id)textFieldValue:(id)value;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)initializeView;
- (void)layoutSubviews;
- (void)markNameTextFieldAccessible;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setSelectionStyle:(int64_t)style;
- (void)setTextFieldValue:(id)value specifier:(id)specifier;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateText;
@end

@implementation AXUISettingsEditableTextCell

- (AXUISettingsEditableTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = AXUISettingsEditableTextCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(AXUISettingsEditableTextCell *)v4 initializeView];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v9.receiver = self;
  v9.super_class = AXUISettingsEditableTextCell;
  [(PSTableCell *)&v9 refreshCellContentsWithSpecifier:specifierCopy];
  nameTextField = self->_nameTextField;
  v6 = [(AXUISettingsEditableTextCell *)self textFieldValue:specifierCopy];
  [(UITextField *)nameTextField setText:v6];

  v7 = [specifierCopy propertyForKey:@"ShouldDisableTextFieldWhenNotEditing"];
  -[AXUISettingsEditableTextCell setShouldDisableTextFieldWhenNotEditing:](self, "setShouldDisableTextFieldWhenNotEditing:", [v7 BOOLValue]);

  if ([(AXUISettingsEditableTextCell *)self shouldDisableTextFieldWhenNotEditing])
  {
    [(UITextField *)self->_nameTextField setEnabled:0];
  }

  v8 = [specifierCopy propertyForKey:@"ShouldAllowSelection"];
  -[AXUISettingsEditableTextCell setShouldAllowSelection:](self, "setShouldAllowSelection:", [v8 BOOLValue]);

  if ([(AXUISettingsEditableTextCell *)self shouldAllowSelection])
  {
    [(AXUISettingsEditableTextCell *)self setAccessoryType:1];
    [(AXUISettingsEditableTextCell *)self setUserInteractionEnabled:1];
  }

  else
  {
    [(AXUISettingsEditableTextCell *)self setSelectionStyle:0];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = AXUISettingsEditableTextCell;
  [(PSTableCell *)&v3 prepareForReuse];
  [(UITextField *)self->_nameTextField setDelegate:self];
  [(UITextField *)self->_nameTextField setReturnKeyType:9];
  [(AXUISettingsEditableTextCell *)self markNameTextFieldAccessible];
}

- (void)markNameTextFieldAccessible
{
  [(UITextField *)self->_nameTextField setIsAccessibilityElement:1];
  nameTextField = self->_nameTextField;

  [(UITextField *)nameTextField setAccessibilityRespondsToUserInteraction:1];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = AXUISettingsEditableTextCell;
  [(AXUISettingsEditableTextCell *)&v3 _accessibilityLoadAccessibilityInformation];
  [(AXUISettingsEditableTextCell *)self markNameTextFieldAccessible];
}

- (void)initializeView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
  nameTextField = self->_nameTextField;
  self->_nameTextField = v3;

  [(UITextField *)self->_nameTextField setDelegate:self];
  [(UITextField *)self->_nameTextField setReturnKeyType:9];
  v5 = self->_nameTextField;
  specifier = [(PSTableCell *)self specifier];
  v7 = [(AXUISettingsEditableTextCell *)self textFieldValue:specifier];
  [(UITextField *)v5 setText:v7];

  [(AXUISettingsEditableTextCell *)self markNameTextFieldAccessible];
  specifier2 = [(PSTableCell *)self specifier];
  v9 = [specifier2 propertyForKey:@"ShouldDisableTextFieldWhenNotEditing"];
  -[AXUISettingsEditableTextCell setShouldDisableTextFieldWhenNotEditing:](self, "setShouldDisableTextFieldWhenNotEditing:", [v9 BOOLValue]);

  if ([(AXUISettingsEditableTextCell *)self shouldDisableTextFieldWhenNotEditing])
  {
    [(UITextField *)self->_nameTextField setEnabled:0];
  }

  specifier3 = [(PSTableCell *)self specifier];
  v11 = [specifier3 propertyForKey:@"ShouldAllowSelection"];
  -[AXUISettingsEditableTextCell setShouldAllowSelection:](self, "setShouldAllowSelection:", [v11 BOOLValue]);

  if ([(AXUISettingsEditableTextCell *)self shouldAllowSelection])
  {
    [(AXUISettingsEditableTextCell *)self setAccessoryType:1];

    [(AXUISettingsEditableTextCell *)self setUserInteractionEnabled:1];
  }

  else
  {

    [(AXUISettingsEditableTextCell *)self setSelectionStyle:0];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v6.receiver = self;
  v6.super_class = AXUISettingsEditableTextCell;
  [(AXUISettingsEditableTextCell *)&v6 setEditing:editing animated:animated];
  if ([(AXUISettingsEditableTextCell *)self shouldDisableTextFieldWhenNotEditing])
  {
    [(UITextField *)self->_nameTextField setEnabled:editingCopy];
    if (!editingCopy)
    {
      [(UITextField *)self->_nameTextField resignFirstResponder];
    }
  }
}

- (void)setSelectionStyle:(int64_t)style
{
  if (![(AXUISettingsEditableTextCell *)self shouldAllowSelection])
  {
    v5.receiver = self;
    v5.super_class = AXUISettingsEditableTextCell;
    [(AXUISettingsEditableTextCell *)&v5 setSelectionStyle:style];
  }
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = AXUISettingsEditableTextCell;
  [(PSTableCell *)&v15 layoutSubviews];
  contentView = [(AXUISettingsEditableTextCell *)self contentView];
  textLabel = [(AXUISettingsEditableTextCell *)self textLabel];
  superview = [textLabel superview];

  if (superview == contentView)
  {
    [textLabel removeFromSuperview];
  }

  superview2 = [(UITextField *)self->_nameTextField superview];

  if (superview2 != contentView)
  {
    [contentView addSubview:self->_nameTextField];
  }

  nameTextField = self->_nameTextField;
  backgroundColor = [contentView backgroundColor];
  [(UITextField *)nameTextField setBackgroundColor:backgroundColor];

  v9 = self->_nameTextField;
  font = [textLabel font];
  [(UITextField *)v9 setFont:font];

  v11 = self->_nameTextField;
  [textLabel frame];
  [(UITextField *)v11 setFrame:?];
  v12 = self->_nameTextField;
  appearance = [MEMORY[0x1E69C5710] appearance];
  textColor = [appearance textColor];
  [(UITextField *)v12 setTextColor:textColor];
}

- (void)updateText
{
  specifier = [(PSTableCell *)self specifier];
  v3 = [(AXUISettingsEditableTextCell *)self textFieldValue:specifier];
  [(UITextField *)self->_nameTextField setText:v3];
}

- (id)textFieldValue:(id)value
{
  valueCopy = value;
  v4 = valueCopy;
  if (valueCopy)
  {
    target = [valueCopy target];
    v6 = MEMORY[0x1E69C57D0];
    if (!target || (v7 = *&v4[*MEMORY[0x1E69C57D0]], target, !v7))
    {
      _AXAssert();
    }

    target2 = [v4 target];
    v9 = [target2 performSelector:*&v4[*v6] withObject:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setTextFieldValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  v6 = specifierCopy;
  if (specifierCopy)
  {
    target = [specifierCopy target];
    v8 = MEMORY[0x1E69C57D8];
    if (!target || (v9 = *&v6[*MEMORY[0x1E69C57D8]], target, !v9))
    {
      _AXAssert();
    }

    target2 = [v6 target];
    [target2 performSelector:*&v6[*v8] withObject:valueCopy withObject:v6];
  }

  else
  {
    _AXAssert();
  }
}

- (BOOL)textFieldShouldReturn:(id)return
{
  nameTextField = self->_nameTextField;
  if (nameTextField == return)
  {
    [(UITextField *)nameTextField resignFirstResponder:v3];
  }

  return 0;
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [(UITextField *)self->_nameTextField text];
  specifier = [(PSTableCell *)self specifier];
  if (specifier)
  {
    v5 = [(AXUISettingsEditableTextCell *)self textFieldValue:specifier];
    v6 = [v5 isEqualToString:text];

    if ((v6 & 1) == 0)
    {
      [(AXUISettingsEditableTextCell *)self setTextFieldValue:text specifier:specifier];
    }
  }
}

@end