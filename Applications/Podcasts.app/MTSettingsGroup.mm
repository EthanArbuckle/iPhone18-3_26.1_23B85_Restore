@interface MTSettingsGroup
+ (MTSettingsGroup)groupWithTitle:(id)a3 footerText:(id)a4 settings:(id)a5;
+ (MTSettingsGroup)groupWithTitle:(id)a3 footerText:(id)a4 settingsHandler:(id)a5;
+ (id)footerAttributedString:(id)a3;
+ (id)footerAttributedString:(id)a3 additionalAttributeName:(id)a4 additionalAttributeValue:(id)a5 additionalAttributeRange:(_NSRange)a6;
- (NSArray)groupSettings;
@end

@implementation MTSettingsGroup

+ (MTSettingsGroup)groupWithTitle:(id)a3 footerText:(id)a4 settings:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MTSettingsGroup);
  [(MTSettingsGroup *)v10 setGroupTitle:v7];
  [(MTSettingsGroup *)v10 setGroupFooter:v8];
  [(MTSettingsGroup *)v10 setGroupSettings:v9];
  [(MTSettingsGroup *)v10 setCustomHeaderHeight:0.0];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * i) setGroup:{v10, v17}];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  return v10;
}

+ (MTSettingsGroup)groupWithTitle:(id)a3 footerText:(id)a4 settingsHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(MTSettingsGroup);
  [(MTSettingsGroup *)v10 setGroupTitle:v9];

  [(MTSettingsGroup *)v10 setGroupFooter:v8];
  [(MTSettingsGroup *)v10 setSettingsHandler:v7];

  [(MTSettingsGroup *)v10 setCustomHeaderHeight:0.0];

  return v10;
}

+ (id)footerAttributedString:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableAttributedString alloc] initWithString:v3 attributes:0];

  v5 = +[UIListContentConfiguration groupedFooterConfiguration];
  v6 = [v5 textProperties];
  v7 = [v6 resolvedColor];
  [v4 addAttribute:NSForegroundColorAttributeName value:v7 range:{0, objc_msgSend(v4, "length")}];

  v8 = +[UIFont sectionFooterFont];
  [v4 addAttribute:NSFontAttributeName value:v8 range:{0, objc_msgSend(v4, "length")}];

  return v4;
}

+ (id)footerAttributedString:(id)a3 additionalAttributeName:(id)a4 additionalAttributeValue:(id)a5 additionalAttributeRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [NSMutableAttributedString alloc];
  v14 = [MTSettingsGroup footerAttributedString:v12];

  v15 = [v13 initWithAttributedString:v14];
  [v15 addAttribute:v11 value:v10 range:{location, length}];

  return v15;
}

- (NSArray)groupSettings
{
  groupSettings = self->_groupSettings;
  if (!groupSettings)
  {
    groupSettings = self->_settingsHandler;
    if (groupSettings)
    {
      v4 = groupSettings[2](groupSettings, a2);
      v5 = self->_groupSettings;
      self->_groupSettings = v4;

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = self->_groupSettings;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v12 + 1) + 8 * v10) setGroup:{self, v12}];
            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }

      groupSettings = self->_groupSettings;
    }
  }

  return groupSettings;
}

@end