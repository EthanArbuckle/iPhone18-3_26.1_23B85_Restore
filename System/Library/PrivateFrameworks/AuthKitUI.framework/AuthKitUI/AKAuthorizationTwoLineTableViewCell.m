@interface AKAuthorizationTwoLineTableViewCell
- (AKAuthorizationTwoLineTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setup;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation AKAuthorizationTwoLineTableViewCell

- (AKAuthorizationTwoLineTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9 = self;
  location[2] = a2;
  location[1] = a3;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v4 = v9;
  v9 = 0;
  v7.receiver = v4;
  v7.super_class = AKAuthorizationTwoLineTableViewCell;
  v9 = [(AKAuthorizationTwoLineTableViewCell *)&v7 initWithStyle:3 reuseIdentifier:location[0]];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    [(AKAuthorizationTwoLineTableViewCell *)v9 _setup];
  }

  v6 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v6;
}

- (void)_setup
{
  v2 = [MEMORY[0x277D75348] clearColor];
  [(AKAuthorizationTwoLineTableViewCell *)self setBackgroundColor:?];
  MEMORY[0x277D82BD8](v2);
  [(AKAuthorizationTwoLineTableViewCell *)self setSelectionStyle:1];
  v4 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76918] traits:0x8000];
  v3 = [(AKAuthorizationTwoLineTableViewCell *)self detailTextLabel];
  [v3 setFont:v4];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v6 = [MEMORY[0x277D75348] secondaryLabelColor];
  v5 = [(AKAuthorizationTwoLineTableViewCell *)self detailTextLabel];
  [v5 setTextColor:v6];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5 = a4;
  v4.receiver = self;
  v4.super_class = AKAuthorizationTwoLineTableViewCell;
  [(AKAuthorizationTwoLineTableViewCell *)&v4 setSelected:a3 animated:a4];
}

@end