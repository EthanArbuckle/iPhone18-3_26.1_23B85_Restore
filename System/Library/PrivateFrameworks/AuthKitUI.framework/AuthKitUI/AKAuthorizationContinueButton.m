@interface AKAuthorizationContinueButton
- (AKAuthorizationContinueButton)initWithCoder:(id)a3;
- (AKAuthorizationContinueButton)initWithFrame:(CGRect)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation AKAuthorizationContinueButton

- (AKAuthorizationContinueButton)initWithFrame:(CGRect)a3
{
  v11 = a3;
  v9 = a2;
  v10 = 0;
  v8.receiver = self;
  v8.super_class = AKAuthorizationContinueButton;
  v10 = [(AKAuthorizationContinueButton *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (AKAuthorizationContinueButton)initWithCoder:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = AKAuthorizationContinueButton;
  v11 = [(AKAuthorizationContinueButton *)&v9 initWithCoder:location[0]];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    v8.receiver = v11;
    v8.super_class = AKAuthorizationContinueButton;
    [(AKAuthorizationButton *)&v8 setupButton];
    v6 = v11;
    v7 = +[AKAuthorizationAppearance continueButtonDefaultColor];
    [(AKAuthorizationContinueButton *)v6 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v7);
  }

  v5 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v5;
}

- (void)setHighlighted:(BOOL)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  if ([(AKAuthorizationContinueButton *)self isHighlighted]!= a3)
  {
    v7.receiver = v10;
    v7.super_class = AKAuthorizationContinueButton;
    [(AKAuthorizationContinueButton *)&v7 setHighlighted:v8];
    if (v8)
    {
      v5 = v10;
      v6 = +[AKAuthorizationAppearance continueButtonHighlightedColor];
      [(AKAuthorizationContinueButton *)v5 setBackgroundColor:?];
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      v3 = v10;
      v4 = +[AKAuthorizationAppearance continueButtonDefaultColor];
      [(AKAuthorizationContinueButton *)v3 setBackgroundColor:?];
      MEMORY[0x277D82BD8](v4);
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  if ([(AKAuthorizationContinueButton *)self isEnabled]!= a3)
  {
    v7.receiver = v10;
    v7.super_class = AKAuthorizationContinueButton;
    [(AKAuthorizationContinueButton *)&v7 setEnabled:v8];
    if (v8)
    {
      v5 = v10;
      v6 = +[AKAuthorizationAppearance continueButtonDefaultColor];
      [(AKAuthorizationContinueButton *)v5 setBackgroundColor:?];
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      v3 = v10;
      v4 = +[AKAuthorizationAppearance continueButtonDisabledColor];
      [(AKAuthorizationContinueButton *)v3 setBackgroundColor:?];
      MEMORY[0x277D82BD8](v4);
    }
  }
}

@end