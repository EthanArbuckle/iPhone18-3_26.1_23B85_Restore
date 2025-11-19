@interface AXBuddySettingsTableSection
- (AXBuddySettingsTableSection)initWithName:(id)a3 subitems:(id)a4;
- (AXBuddySettingsTableSection)initWithName:(id)a3 subitems:(id)a4 footerText:(id)a5;
@end

@implementation AXBuddySettingsTableSection

- (AXBuddySettingsTableSection)initWithName:(id)a3 subitems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AXBuddySettingsTableSection;
  v8 = [(AXBuddySettingsTableSection *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    subitems = v8->_subitems;
    v8->_subitems = v11;
  }

  return v8;
}

- (AXBuddySettingsTableSection)initWithName:(id)a3 subitems:(id)a4 footerText:(id)a5
{
  v8 = a5;
  v9 = [(AXBuddySettingsTableSection *)self initWithName:a3 subitems:a4];
  if (v9)
  {
    v10 = [v8 copy];
    footerText = v9->_footerText;
    v9->_footerText = v10;
  }

  return v9;
}

@end