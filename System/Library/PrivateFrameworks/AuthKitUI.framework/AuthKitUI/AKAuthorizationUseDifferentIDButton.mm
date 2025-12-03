@interface AKAuthorizationUseDifferentIDButton
- (AKAuthorizationUseDifferentIDButton)initWithCoder:(id)coder;
- (AKAuthorizationUseDifferentIDButton)initWithFrame:(CGRect)frame;
@end

@implementation AKAuthorizationUseDifferentIDButton

- (AKAuthorizationUseDifferentIDButton)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v9 = a2;
  v10 = 0;
  v8.receiver = self;
  v8.super_class = AKAuthorizationUseDifferentIDButton;
  v10 = [(AKAuthorizationUseDifferentIDButton *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v7.receiver = v10;
    v7.super_class = AKAuthorizationUseDifferentIDButton;
    [(AKAuthorizationButton *)&v7 setupButton];
    v5 = v10;
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(AKAuthorizationUseDifferentIDButton *)v5 setBackgroundColor:?];
    MEMORY[0x277D82BD8](systemGrayColor);
  }

  v4 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  return v4;
}

- (AKAuthorizationUseDifferentIDButton)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = AKAuthorizationUseDifferentIDButton;
  selfCopy = [(AKAuthorizationUseDifferentIDButton *)&v9 initWithCoder:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v8.receiver = selfCopy;
    v8.super_class = AKAuthorizationUseDifferentIDButton;
    [(AKAuthorizationButton *)&v8 setupButton];
    v6 = selfCopy;
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(AKAuthorizationUseDifferentIDButton *)v6 setBackgroundColor:?];
    MEMORY[0x277D82BD8](systemGrayColor);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

@end