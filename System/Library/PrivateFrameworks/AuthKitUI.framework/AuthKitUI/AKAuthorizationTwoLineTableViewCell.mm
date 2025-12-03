@interface AKAuthorizationTwoLineTableViewCell
- (AKAuthorizationTwoLineTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setup;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation AKAuthorizationTwoLineTableViewCell

- (AKAuthorizationTwoLineTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  selfCopy = self;
  location[2] = a2;
  location[1] = style;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v4 = selfCopy;
  selfCopy = 0;
  v7.receiver = v4;
  v7.super_class = AKAuthorizationTwoLineTableViewCell;
  selfCopy = [(AKAuthorizationTwoLineTableViewCell *)&v7 initWithStyle:3 reuseIdentifier:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(AKAuthorizationTwoLineTableViewCell *)selfCopy _setup];
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)_setup
{
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(AKAuthorizationTwoLineTableViewCell *)self setBackgroundColor:?];
  MEMORY[0x277D82BD8](clearColor);
  [(AKAuthorizationTwoLineTableViewCell *)self setSelectionStyle:1];
  v4 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76918] traits:0x8000];
  detailTextLabel = [(AKAuthorizationTwoLineTableViewCell *)self detailTextLabel];
  [detailTextLabel setFont:v4];
  MEMORY[0x277D82BD8](detailTextLabel);
  MEMORY[0x277D82BD8](v4);
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  detailTextLabel2 = [(AKAuthorizationTwoLineTableViewCell *)self detailTextLabel];
  [detailTextLabel2 setTextColor:secondaryLabelColor];
  MEMORY[0x277D82BD8](detailTextLabel2);
  MEMORY[0x277D82BD8](secondaryLabelColor);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selfCopy = self;
  v7 = a2;
  selectedCopy = selected;
  animatedCopy = animated;
  v4.receiver = self;
  v4.super_class = AKAuthorizationTwoLineTableViewCell;
  [(AKAuthorizationTwoLineTableViewCell *)&v4 setSelected:selected animated:animated];
}

@end