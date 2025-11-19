@interface CPNowPlayingButton
- (CPControlDelegate)delegate;
- (CPNowPlayingButton)initWithCoder:(id)a3;
- (CPNowPlayingButton)initWithHandler:(void *)handler;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
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
    v8 = [MEMORY[0x277CCAD78] UUID];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v5->_selected = 0;
  }

  return v5;
}

- (CPNowPlayingButton)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPNowPlayingButton *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPNowPlayingButtonIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_enabled = [v4 decodeBoolForKey:@"CPNowPlayingButtonEnabled"];
    v5->_selected = [v4 decodeBoolForKey:@"kCPNowPlayingButtonSelectedKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CPNowPlayingButton *)self identifier];
  [v5 encodeObject:v4 forKey:@"CPNowPlayingButtonIdentifier"];

  [v5 encodeBool:-[CPNowPlayingButton isEnabled](self forKey:{"isEnabled"), @"CPNowPlayingButtonEnabled"}];
  [v5 encodeBool:-[CPNowPlayingButton isSelected](self forKey:{"isSelected"), @"kCPNowPlayingButtonSelectedKey"}];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = CPNowPlayingButton;
  v4 = [(CPNowPlayingButton *)&v10 description];
  v5 = [(CPNowPlayingButton *)self identifier];
  v6 = CPSStringFromBOOL([(CPNowPlayingButton *)self isEnabled]);
  v7 = CPSStringFromBOOL([(CPNowPlayingButton *)self isSelected]);
  v8 = [v3 stringWithFormat:@"%@ {UUID: %@, enabled: %@, selected: %@}", v4, v5, v6, v7];

  return v8;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    v5 = [(CPNowPlayingButton *)self delegate];
    [v5 control:self setEnabled:self->_enabled];
  }
}

- (void)handlePrimaryAction
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(CPNowPlayingButton *)self handler];

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

    v5 = [(CPNowPlayingButton *)self handler];
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

@end