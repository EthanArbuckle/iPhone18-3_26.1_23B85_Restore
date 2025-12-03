@interface CPNowPlayingButton
- (CPControlDelegate)delegate;
- (CPNowPlayingButton)initWithCoder:(id)coder;
- (CPNowPlayingButton)initWithHandler:(void *)handler;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
- (void)handlePrimaryAction;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation CPNowPlayingButton

- (CPNowPlayingButton)initWithHandler:(void *)handler
{
  v4 = handler;
  v11.receiver = self;
  v11.super_class = CPNowPlayingButton;
  v5 = [(CPNowPlayingButton *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x2383C2A40](v4);
    v7 = v5->_handler;
    v5->_handler = v6;

    v5->_enabled = 1;
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v5->_identifier;
    v5->_identifier = uUID;

    v5->_selected = 0;
  }

  return v5;
}

- (CPNowPlayingButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CPNowPlayingButton *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPNowPlayingButtonIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_enabled = [coderCopy decodeBoolForKey:@"CPNowPlayingButtonEnabled"];
    v5->_selected = [coderCopy decodeBoolForKey:@"kCPNowPlayingButtonSelectedKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CPNowPlayingButton *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"CPNowPlayingButtonIdentifier"];

  [coderCopy encodeBool:-[CPNowPlayingButton isEnabled](self forKey:{"isEnabled"), @"CPNowPlayingButtonEnabled"}];
  [coderCopy encodeBool:-[CPNowPlayingButton isSelected](self forKey:{"isSelected"), @"kCPNowPlayingButtonSelectedKey"}];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = CPNowPlayingButton;
  v4 = [(CPNowPlayingButton *)&v10 description];
  identifier = [(CPNowPlayingButton *)self identifier];
  v6 = CPSStringFromBOOL([(CPNowPlayingButton *)self isEnabled]);
  v7 = CPSStringFromBOOL([(CPNowPlayingButton *)self isSelected]);
  v8 = [v3 stringWithFormat:@"%@ {UUID: %@, enabled: %@, selected: %@}", v4, identifier, v6, v7];

  return v8;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    delegate = [(CPNowPlayingButton *)self delegate];
    [delegate control:self setEnabled:self->_enabled];
  }
}

- (void)handlePrimaryAction
{
  v9 = *MEMORY[0x277D85DE8];
  handler = [(CPNowPlayingButton *)self handler];

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

    handler2 = [(CPNowPlayingButton *)self handler];
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

@end