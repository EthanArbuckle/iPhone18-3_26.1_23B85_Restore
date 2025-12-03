@interface AKTextualLinkButton
+ (id)buttonWithText:(id)text fontSize:(double)size target:(id)target action:(SEL)action;
@end

@implementation AKTextualLinkButton

+ (id)buttonWithText:(id)text fontSize:(double)size target:(id)target action:(SEL)action
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  sizeCopy = size;
  v18 = 0;
  objc_storeStrong(&v18, target);
  actionCopy = action;
  v16 = [MEMORY[0x277D75220] buttonWithType:1];
  MEMORY[0x277D82BD8](0);
  if (location[0])
  {
    [v16 setTitle:location[0] forState:0];
  }

  v6 = sizeCopy;
  if (sizeCopy > 0.0)
  {
    titleLabel = [v16 titleLabel];
    font = [titleLabel font];
    MEMORY[0x277D82BD8](titleLabel);
    v11 = [font fontWithSize:sizeCopy];
    titleLabel2 = [v16 titleLabel];
    [titleLabel2 setFont:v11];
    MEMORY[0x277D82BD8](titleLabel2);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&font, 0);
  }

  if (actionCopy)
  {
    [v16 addTarget:v18 action:actionCopy forControlEvents:{64, v6}];
  }

  [v16 sizeToFit];
  v8 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v8;
}

@end