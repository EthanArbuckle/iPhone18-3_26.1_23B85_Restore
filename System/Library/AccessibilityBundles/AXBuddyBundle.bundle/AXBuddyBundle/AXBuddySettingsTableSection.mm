@interface AXBuddySettingsTableSection
- (AXBuddySettingsTableSection)initWithName:(id)name subitems:(id)subitems;
- (AXBuddySettingsTableSection)initWithName:(id)name subitems:(id)subitems footerText:(id)text;
@end

@implementation AXBuddySettingsTableSection

- (AXBuddySettingsTableSection)initWithName:(id)name subitems:(id)subitems
{
  nameCopy = name;
  subitemsCopy = subitems;
  v14.receiver = self;
  v14.super_class = AXBuddySettingsTableSection;
  v8 = [(AXBuddySettingsTableSection *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [subitemsCopy copy];
    subitems = v8->_subitems;
    v8->_subitems = v11;
  }

  return v8;
}

- (AXBuddySettingsTableSection)initWithName:(id)name subitems:(id)subitems footerText:(id)text
{
  textCopy = text;
  v9 = [(AXBuddySettingsTableSection *)self initWithName:name subitems:subitems];
  if (v9)
  {
    v10 = [textCopy copy];
    footerText = v9->_footerText;
    v9->_footerText = v10;
  }

  return v9;
}

@end