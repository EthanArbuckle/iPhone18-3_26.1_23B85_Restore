@interface CPTextButton
- (CPControlDelegate)delegate;
- (CPTemplate)associatedTemplate;
- (CPTextButton)initWithCoder:(id)a3;
- (CPTextButton)initWithTitle:(NSString *)title textStyle:(CPTextButtonStyle)textStyle handler:(void *)handler;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
- (void)handlePrimaryAction;
- (void)setEnabled:(BOOL)a3;
- (void)setTitle:(NSString *)title;
@end

@implementation CPTextButton

- (CPTextButton)initWithTitle:(NSString *)title textStyle:(CPTextButtonStyle)textStyle handler:(void *)handler
{
  v8 = title;
  v9 = handler;
  v18.receiver = self;
  v18.super_class = CPTextButton;
  v10 = [(CPTextButton *)&v18 init];
  if (v10)
  {
    v11 = [MEMORY[0x277CCAD78] UUID];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v10->_enabled = 1;
    v13 = MEMORY[0x2383C2A40](v9);
    v14 = v10->_handler;
    v10->_handler = v13;

    v15 = [(NSString *)v8 copy];
    v16 = v10->_title;
    v10->_title = v15;

    v10->_textStyle = textStyle;
  }

  return v10;
}

- (CPTextButton)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPTextButton *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPControlIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_enabled = [v4 decodeBoolForKey:@"kCPControlEnabledKey"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPControlTitleKey"];
    title = v5->_title;
    v5->_title = v8;

    v5->_textStyle = [v4 decodeIntegerForKey:@"kCPTextButtonStyleKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(CPTextButton *)self identifier];
  [v6 encodeObject:v4 forKey:@"kCPControlIdentifierKey"];

  [v6 encodeBool:-[CPTextButton isEnabled](self forKey:{"isEnabled"), @"kCPControlEnabledKey"}];
  v5 = [(CPTextButton *)self title];
  [v6 encodeObject:v5 forKey:@"kCPControlTitleKey"];

  [v6 encodeInteger:-[CPTextButton textStyle](self forKey:{"textStyle"), @"kCPTextButtonStyleKey"}];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = CPTextButton;
  v4 = [(CPTextButton *)&v10 description];
  v5 = [(CPTextButton *)self identifier];
  v6 = CPSStringFromBOOL([(CPTextButton *)self isEnabled]);
  v7 = [(CPTextButton *)self title];
  v8 = [v3 stringWithFormat:@"%@ {UUID: %@, enabled: %@, title: %@}", v4, v5, v6, v7];

  return v8;
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    v5 = [(CPTextButton *)self delegate];
    [v5 control:self setEnabled:self->_enabled];
  }
}

- (void)setTitle:(NSString *)title
{
  v7 = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [(NSString *)v7 copy];
    v5 = self->_title;
    self->_title = v4;

    v6 = [(CPTextButton *)self associatedTemplate];
    [v6 setNeedsUpdate];
  }
}

- (void)handlePrimaryAction
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(CPTextButton *)self handler];

  v4 = CarPlayFrameworkGeneralLogging();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_INFO, "%@ will call action handler", &v7, 0xCu);
    }

    v5 = [(CPTextButton *)self handler];
    (*(v5 + 16))(v5, self);
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CPMapButton *)self handlePrimaryAction];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (CPControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CPTemplate)associatedTemplate
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedTemplate);

  return WeakRetained;
}

@end