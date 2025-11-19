@interface CNCardiMessageEmailGroup
- (CNCardiMessageEmailGroup)initWithContact:(id)a3 propertyItem:(id)a4;
@end

@implementation CNCardiMessageEmailGroup

- (CNCardiMessageEmailGroup)initWithContact:(id)a3 propertyItem:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = CNCardiMessageEmailGroup;
  v7 = [(CNCardGroup *)&v11 initWithContact:a3];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DEC8] arrayWithObject:v6];
    displayItems = v7->_displayItems;
    v7->_displayItems = v8;
  }

  return v7;
}

@end