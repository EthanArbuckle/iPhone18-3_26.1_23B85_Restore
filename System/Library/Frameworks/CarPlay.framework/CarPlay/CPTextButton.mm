@interface CPTextButton
- (CPControlDelegate)delegate;
- (CPTemplate)associatedTemplate;
- (CPTextButton)initWithCoder:(id)coder;
- (CPTextButton)initWithTitle:(NSString *)title textStyle:(CPTextButtonStyle)textStyle handler:(void *)handler;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
- (void)handlePrimaryAction;
- (void)setEnabled:(BOOL)enabled;
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
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v10->_identifier;
    v10->_identifier = uUID;

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

- (CPTextButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CPTextButton *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPControlIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_enabled = [coderCopy decodeBoolForKey:@"kCPControlEnabledKey"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPControlTitleKey"];
    title = v5->_title;
    v5->_title = v8;

    v5->_textStyle = [coderCopy decodeIntegerForKey:@"kCPTextButtonStyleKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CPTextButton *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kCPControlIdentifierKey"];

  [coderCopy encodeBool:-[CPTextButton isEnabled](self forKey:{"isEnabled"), @"kCPControlEnabledKey"}];
  title = [(CPTextButton *)self title];
  [coderCopy encodeObject:title forKey:@"kCPControlTitleKey"];

  [coderCopy encodeInteger:-[CPTextButton textStyle](self forKey:{"textStyle"), @"kCPTextButtonStyleKey"}];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = CPTextButton;
  v4 = [(CPTextButton *)&v10 description];
  identifier = [(CPTextButton *)self identifier];
  v6 = CPSStringFromBOOL([(CPTextButton *)self isEnabled]);
  title = [(CPTextButton *)self title];
  v8 = [v3 stringWithFormat:@"%@ {UUID: %@, enabled: %@, title: %@}", v4, identifier, v6, title];

  return v8;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    delegate = [(CPTextButton *)self delegate];
    [delegate control:self setEnabled:self->_enabled];
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

    associatedTemplate = [(CPTextButton *)self associatedTemplate];
    [associatedTemplate setNeedsUpdate];
  }
}

- (void)handlePrimaryAction
{
  v9 = *MEMORY[0x277D85DE8];
  handler = [(CPTextButton *)self handler];

  v4 = CarPlayFrameworkGeneralLogging();
  handler2 = v4;
  if (handler)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_236ED4000, handler2, OS_LOG_TYPE_INFO, "%@ will call action handler", &v7, 0xCu);
    }

    handler2 = [(CPTextButton *)self handler];
    (*(handler2 + 16))(handler2, self);
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