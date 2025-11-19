@interface AKMinimalTextColorUserInterfaceItem
- (id)convertTextAttributes:(id)a3;
@end

@implementation AKMinimalTextColorUserInterfaceItem

- (id)convertTextAttributes:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277D740C0];
  v6 = [v4 objectForKey:*MEMORY[0x277D740C0]];
  v7 = [(AKMinimalColorChooserUserInterfaceItem *)self color];
  if (!v6)
  {
    v6 = [MEMORY[0x277D75348] blackColor];
  }

  if ([v6 akIsEqualToColor:v7])
  {
    v8 = 0;
  }

  else
  {
    if (v4)
    {
      v9 = [v4 mutableCopy];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
    }

    v8 = v9;
    [v9 setObject:v7 forKey:v5];
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  v11 = v10;

  return v10;
}

@end