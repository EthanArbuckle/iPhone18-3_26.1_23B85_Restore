@interface MFMessageInfoHeaderItem
- (MFMessageInfoHeaderItem)initWithName:(id)name identifier:(id)identifier;
@end

@implementation MFMessageInfoHeaderItem

- (MFMessageInfoHeaderItem)initWithName:(id)name identifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = MFMessageInfoHeaderItem;
  v9 = [(MFMessageInfoHeaderItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sectionName, name);
    objc_storeStrong(&v10->_identifier, identifier);
  }

  return v10;
}

@end