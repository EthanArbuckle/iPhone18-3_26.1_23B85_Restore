@interface AKMinimalTextColorUserInterfaceItem
- (id)convertTextAttributes:(id)attributes;
@end

@implementation AKMinimalTextColorUserInterfaceItem

- (id)convertTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = *MEMORY[0x277D740C0];
  blackColor = [attributesCopy objectForKey:*MEMORY[0x277D740C0]];
  color = [(AKMinimalColorChooserUserInterfaceItem *)self color];
  if (!blackColor)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  if ([blackColor akIsEqualToColor:color])
  {
    v8 = 0;
  }

  else
  {
    if (attributesCopy)
    {
      dictionary = [attributesCopy mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v8 = dictionary;
    [dictionary setObject:color forKey:v5];
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = attributesCopy;
  }

  v11 = v10;

  return v10;
}

@end