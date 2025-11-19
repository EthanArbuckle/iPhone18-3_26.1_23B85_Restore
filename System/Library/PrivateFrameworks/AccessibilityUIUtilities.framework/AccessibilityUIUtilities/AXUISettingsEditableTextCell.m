@interface AXUISettingsEditableTextCell
- (AXUISettingsEditableTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (BOOL)textFieldShouldReturn:(id)a3;
- (id)textFieldValue:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)initializeView;
- (void)layoutSubviews;
- (void)markNameTextFieldAccessible;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelectionStyle:(int64_t)a3;
- (void)setTextFieldValue:(id)a3 specifier:(id)a4;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateText;
@end

@implementation AXUISettingsEditableTextCell

- (AXUISettingsEditableTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = AXUISettingsEditableTextCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(AXUISettingsEditableTextCell *)v4 initializeView];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AXUISettingsEditableTextCell;
  [(PSTableCell *)&v9 refreshCellContentsWithSpecifier:v4];
  nameTextField = self->_nameTextField;
  v6 = [(AXUISettingsEditableTextCell *)self textFieldValue:v4];
  [(UITextField *)nameTextField setText:v6];

  v7 = [v4 propertyForKey:@"ShouldDisableTextFieldWhenNotEditing"];
  -[AXUISettingsEditableTextCell setShouldDisableTextFieldWhenNotEditing:](self, "setShouldDisableTextFieldWhenNotEditing:", [v7 BOOLValue]);

  if ([(AXUISettingsEditableTextCell *)self shouldDisableTextFieldWhenNotEditing])
  {
    [(UITextField *)self->_nameTextField setEnabled:0];
  }

  v8 = [v4 propertyForKey:@"ShouldAllowSelection"];
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
  v6 = [(PSTableCell *)self specifier];
  v7 = [(AXUISettingsEditableTextCell *)self textFieldValue:v6];
  [(UITextField *)v5 setText:v7];

  [(AXUISettingsEditableTextCell *)self markNameTextFieldAccessible];
  v8 = [(PSTableCell *)self specifier];
  v9 = [v8 propertyForKey:@"ShouldDisableTextFieldWhenNotEditing"];
  -[AXUISettingsEditableTextCell setShouldDisableTextFieldWhenNotEditing:](self, "setShouldDisableTextFieldWhenNotEditing:", [v9 BOOLValue]);

  if ([(AXUISettingsEditableTextCell *)self shouldDisableTextFieldWhenNotEditing])
  {
    [(UITextField *)self->_nameTextField setEnabled:0];
  }

  v10 = [(PSTableCell *)self specifier];
  v11 = [v10 propertyForKey:@"ShouldAllowSelection"];
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

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = AXUISettingsEditableTextCell;
  [(AXUISettingsEditableTextCell *)&v6 setEditing:a3 animated:a4];
  if ([(AXUISettingsEditableTextCell *)self shouldDisableTextFieldWhenNotEditing])
  {
    [(UITextField *)self->_nameTextField setEnabled:v4];
    if (!v4)
    {
      [(UITextField *)self->_nameTextField resignFirstResponder];
    }
  }
}

- (void)setSelectionStyle:(int64_t)a3
{
  if (![(AXUISettingsEditableTextCell *)self shouldAllowSelection])
  {
    v5.receiver = self;
    v5.super_class = AXUISettingsEditableTextCell;
    [(AXUISettingsEditableTextCell *)&v5 setSelectionStyle:a3];
  }
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = AXUISettingsEditableTextCell;
  [(PSTableCell *)&v15 layoutSubviews];
  v3 = [(AXUISettingsEditableTextCell *)self contentView];
  v4 = [(AXUISettingsEditableTextCell *)self textLabel];
  v5 = [v4 superview];

  if (v5 == v3)
  {
    [v4 removeFromSuperview];
  }

  v6 = [(UITextField *)self->_nameTextField superview];

  if (v6 != v3)
  {
    [v3 addSubview:self->_nameTextField];
  }

  nameTextField = self->_nameTextField;
  v8 = [v3 backgroundColor];
  [(UITextField *)nameTextField setBackgroundColor:v8];

  v9 = self->_nameTextField;
  v10 = [v4 font];
  [(UITextField *)v9 setFont:v10];

  v11 = self->_nameTextField;
  [v4 frame];
  [(UITextField *)v11 setFrame:?];
  v12 = self->_nameTextField;
  v13 = [MEMORY[0x1E69C5710] appearance];
  v14 = [v13 textColor];
  [(UITextField *)v12 setTextColor:v14];
}

- (void)updateText
{
  v4 = [(PSTableCell *)self specifier];
  v3 = [(AXUISettingsEditableTextCell *)self textFieldValue:v4];
  [(UITextField *)self->_nameTextField setText:v3];
}

- (id)textFieldValue:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 target];
    v6 = MEMORY[0x1E69C57D0];
    if (!v5 || (v7 = *&v4[*MEMORY[0x1E69C57D0]], v5, !v7))
    {
      _AXAssert();
    }

    v8 = [v4 target];
    v9 = [v8 performSelector:*&v4[*v6] withObject:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setTextFieldValue:(id)a3 specifier:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 target];
    v8 = MEMORY[0x1E69C57D8];
    if (!v7 || (v9 = *&v6[*MEMORY[0x1E69C57D8]], v7, !v9))
    {
      _AXAssert();
    }

    v10 = [v6 target];
    [v10 performSelector:*&v6[*v8] withObject:v11 withObject:v6];
  }

  else
  {
    _AXAssert();
  }
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  nameTextField = self->_nameTextField;
  if (nameTextField == a3)
  {
    [(UITextField *)nameTextField resignFirstResponder:v3];
  }

  return 0;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v7 = [(UITextField *)self->_nameTextField text];
  v4 = [(PSTableCell *)self specifier];
  if (v4)
  {
    v5 = [(AXUISettingsEditableTextCell *)self textFieldValue:v4];
    v6 = [v5 isEqualToString:v7];

    if ((v6 & 1) == 0)
    {
      [(AXUISettingsEditableTextCell *)self setTextFieldValue:v7 specifier:v4];
    }
  }
}

@end