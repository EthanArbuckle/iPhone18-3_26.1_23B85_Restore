@interface AKTextualLinkButton
+ (id)buttonWithText:(id)a3 fontSize:(double)a4 target:(id)a5 action:(SEL)a6;
@end

@implementation AKTextualLinkButton

+ (id)buttonWithText:(id)a3 fontSize:(double)a4 target:(id)a5 action:(SEL)a6
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = a4;
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = a6;
  v16 = [MEMORY[0x277D75220] buttonWithType:1];
  MEMORY[0x277D82BD8](0);
  if (location[0])
  {
    [v16 setTitle:location[0] forState:0];
  }

  v6 = v19;
  if (v19 > 0.0)
  {
    v9 = [v16 titleLabel];
    v15 = [v9 font];
    MEMORY[0x277D82BD8](v9);
    v11 = [v15 fontWithSize:v19];
    v10 = [v16 titleLabel];
    [v10 setFont:v11];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v15, 0);
  }

  if (v17)
  {
    [v16 addTarget:v18 action:v17 forControlEvents:{64, v6}];
  }

  [v16 sizeToFit];
  v8 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v8;
}

@end