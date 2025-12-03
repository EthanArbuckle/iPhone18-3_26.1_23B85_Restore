@interface AKAuthorizationContinueButton
- (AKAuthorizationContinueButton)initWithCoder:(id)coder;
- (AKAuthorizationContinueButton)initWithFrame:(CGRect)frame;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation AKAuthorizationContinueButton

- (AKAuthorizationContinueButton)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v9 = a2;
  v10 = 0;
  v8.receiver = self;
  v8.super_class = AKAuthorizationContinueButton;
  v10 = [(AKAuthorizationContinueButton *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v7.receiver = v10;
    v7.super_class = AKAuthorizationContinueButton;
    [(AKAuthorizationButton *)&v7 setupButton];
    v5 = v10;
    v6 = +[AKAuthorizationAppearance continueButtonDefaultColor];
    [(AKAuthorizationContinueButton *)v5 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v6);
  }

  v4 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  return v4;
}

- (AKAuthorizationContinueButton)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = AKAuthorizationContinueButton;
  selfCopy = [(AKAuthorizationContinueButton *)&v9 initWithCoder:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v8.receiver = selfCopy;
    v8.super_class = AKAuthorizationContinueButton;
    [(AKAuthorizationButton *)&v8 setupButton];
    v6 = selfCopy;
    v7 = +[AKAuthorizationAppearance continueButtonDefaultColor];
    [(AKAuthorizationContinueButton *)v6 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v7);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  v9 = a2;
  highlightedCopy = highlighted;
  if ([(AKAuthorizationContinueButton *)self isHighlighted]!= highlighted)
  {
    v7.receiver = selfCopy;
    v7.super_class = AKAuthorizationContinueButton;
    [(AKAuthorizationContinueButton *)&v7 setHighlighted:highlightedCopy];
    if (highlightedCopy)
    {
      v5 = selfCopy;
      v6 = +[AKAuthorizationAppearance continueButtonHighlightedColor];
      [(AKAuthorizationContinueButton *)v5 setBackgroundColor:?];
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      v3 = selfCopy;
      v4 = +[AKAuthorizationAppearance continueButtonDefaultColor];
      [(AKAuthorizationContinueButton *)v3 setBackgroundColor:?];
      MEMORY[0x277D82BD8](v4);
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  selfCopy = self;
  v9 = a2;
  enabledCopy = enabled;
  if ([(AKAuthorizationContinueButton *)self isEnabled]!= enabled)
  {
    v7.receiver = selfCopy;
    v7.super_class = AKAuthorizationContinueButton;
    [(AKAuthorizationContinueButton *)&v7 setEnabled:enabledCopy];
    if (enabledCopy)
    {
      v5 = selfCopy;
      v6 = +[AKAuthorizationAppearance continueButtonDefaultColor];
      [(AKAuthorizationContinueButton *)v5 setBackgroundColor:?];
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      v3 = selfCopy;
      v4 = +[AKAuthorizationAppearance continueButtonDisabledColor];
      [(AKAuthorizationContinueButton *)v3 setBackgroundColor:?];
      MEMORY[0x277D82BD8](v4);
    }
  }
}

@end