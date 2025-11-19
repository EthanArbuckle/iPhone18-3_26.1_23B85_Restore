@interface AKAuthorizationUseDifferentIDButton
- (AKAuthorizationUseDifferentIDButton)initWithCoder:(id)a3;
- (AKAuthorizationUseDifferentIDButton)initWithFrame:(CGRect)a3;
@end

@implementation AKAuthorizationUseDifferentIDButton

- (AKAuthorizationUseDifferentIDButton)initWithFrame:(CGRect)a3
{
  v11 = a3;
  v9 = a2;
  v10 = 0;
  v8.receiver = self;
  v8.super_class = AKAuthorizationUseDifferentIDButton;
  v10 = [(AKAuthorizationUseDifferentIDButton *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v7.receiver = v10;
    v7.super_class = AKAuthorizationUseDifferentIDButton;
    [(AKAuthorizationButton *)&v7 setupButton];
    v5 = v10;
    v6 = [MEMORY[0x277D75348] systemGrayColor];
    [(AKAuthorizationUseDifferentIDButton *)v5 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v6);
  }

  v4 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  return v4;
}

- (AKAuthorizationUseDifferentIDButton)initWithCoder:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = AKAuthorizationUseDifferentIDButton;
  v11 = [(AKAuthorizationUseDifferentIDButton *)&v9 initWithCoder:location[0]];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    v8.receiver = v11;
    v8.super_class = AKAuthorizationUseDifferentIDButton;
    [(AKAuthorizationButton *)&v8 setupButton];
    v6 = v11;
    v7 = [MEMORY[0x277D75348] systemGrayColor];
    [(AKAuthorizationUseDifferentIDButton *)v6 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v7);
  }

  v5 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v5;
}

@end