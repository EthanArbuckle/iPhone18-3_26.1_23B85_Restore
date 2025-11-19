@interface AKFontListController
+ (id)attributedStringForFont:(id)a3;
- (AKFontListController)initWithController:(id)a3;
- (id)_createFontsList;
@end

@implementation AKFontListController

- (AKFontListController)initWithController:(id)a3
{
  v8.receiver = self;
  v8.super_class = AKFontListController;
  v3 = [(AKFontListController *)&v8 init];
  v4 = v3;
  if (v3)
  {
    v5 = [(AKFontListController *)v3 _createFontsList];
    fonts = v4->_fonts;
    v4->_fonts = v5;
  }

  return v4;
}

- (id)_createFontsList
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = +[AKController akBundle];
  v3 = [v2 URLForResource:@"FontPresets" withExtension:@"plist"];

  v16 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3];
  v4 = [v16 objectForKey:@"fonts"];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 valueForKey:@"fontFamily"];
        v12 = [v10 valueForKey:@"default"];
        v13 = [v12 BOOLValue];

        v14 = [MEMORY[0x277D74300] fontWithName:v11 size:18.0];
        if (v14)
        {
          [v5 addObject:v14];
          if (v13)
          {
            [(AKFontListController *)self setDefaultFont:v14];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  [(AKFontListController *)self setFonts:v5];

  return v5;
}

+ (id)attributedStringForFont:(id)a3
{
  v3 = a3;
  v4 = [v3 familyName];
  v5 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v4];
  [v5 addAttribute:*MEMORY[0x277D740A8] value:v3 range:{0, objc_msgSend(v4, "length")}];

  return v5;
}

@end