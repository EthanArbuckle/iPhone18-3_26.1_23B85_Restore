@interface CNCardiMessageEmailGroup
- (CNCardiMessageEmailGroup)initWithContact:(id)contact propertyItem:(id)item;
@end

@implementation CNCardiMessageEmailGroup

- (CNCardiMessageEmailGroup)initWithContact:(id)contact propertyItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = CNCardiMessageEmailGroup;
  v7 = [(CNCardGroup *)&v11 initWithContact:contact];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DEC8] arrayWithObject:itemCopy];
    displayItems = v7->_displayItems;
    v7->_displayItems = v8;
  }

  return v7;
}

@end