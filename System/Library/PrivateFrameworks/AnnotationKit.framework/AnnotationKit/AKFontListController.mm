@interface AKFontListController
+ (id)attributedStringForFont:(id)font;
- (AKFontListController)initWithController:(id)controller;
- (id)_createFontsList;
@end

@implementation AKFontListController

- (AKFontListController)initWithController:(id)controller
{
  v8.receiver = self;
  v8.super_class = AKFontListController;
  v3 = [(AKFontListController *)&v8 init];
  v4 = v3;
  if (v3)
  {
    _createFontsList = [(AKFontListController *)v3 _createFontsList];
    fonts = v4->_fonts;
    v4->_fonts = _createFontsList;
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
        bOOLValue = [v12 BOOLValue];

        v14 = [MEMORY[0x277D74300] fontWithName:v11 size:18.0];
        if (v14)
        {
          [v5 addObject:v14];
          if (bOOLValue)
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

+ (id)attributedStringForFont:(id)font
{
  fontCopy = font;
  familyName = [fontCopy familyName];
  v5 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:familyName];
  [v5 addAttribute:*MEMORY[0x277D740A8] value:fontCopy range:{0, objc_msgSend(familyName, "length")}];

  return v5;
}

@end