@interface MTSettingsGroup
+ (MTSettingsGroup)groupWithTitle:(id)title footerText:(id)text settings:(id)settings;
+ (MTSettingsGroup)groupWithTitle:(id)title footerText:(id)text settingsHandler:(id)handler;
+ (id)footerAttributedString:(id)string;
+ (id)footerAttributedString:(id)string additionalAttributeName:(id)name additionalAttributeValue:(id)value additionalAttributeRange:(_NSRange)range;
- (NSArray)groupSettings;
@end

@implementation MTSettingsGroup

+ (MTSettingsGroup)groupWithTitle:(id)title footerText:(id)text settings:(id)settings
{
  titleCopy = title;
  textCopy = text;
  settingsCopy = settings;
  v10 = objc_alloc_init(MTSettingsGroup);
  [(MTSettingsGroup *)v10 setGroupTitle:titleCopy];
  [(MTSettingsGroup *)v10 setGroupFooter:textCopy];
  [(MTSettingsGroup *)v10 setGroupSettings:settingsCopy];
  [(MTSettingsGroup *)v10 setCustomHeaderHeight:0.0];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = settingsCopy;
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

+ (MTSettingsGroup)groupWithTitle:(id)title footerText:(id)text settingsHandler:(id)handler
{
  handlerCopy = handler;
  textCopy = text;
  titleCopy = title;
  v10 = objc_alloc_init(MTSettingsGroup);
  [(MTSettingsGroup *)v10 setGroupTitle:titleCopy];

  [(MTSettingsGroup *)v10 setGroupFooter:textCopy];
  [(MTSettingsGroup *)v10 setSettingsHandler:handlerCopy];

  [(MTSettingsGroup *)v10 setCustomHeaderHeight:0.0];

  return v10;
}

+ (id)footerAttributedString:(id)string
{
  stringCopy = string;
  v4 = [[NSMutableAttributedString alloc] initWithString:stringCopy attributes:0];

  v5 = +[UIListContentConfiguration groupedFooterConfiguration];
  textProperties = [v5 textProperties];
  resolvedColor = [textProperties resolvedColor];
  [v4 addAttribute:NSForegroundColorAttributeName value:resolvedColor range:{0, objc_msgSend(v4, "length")}];

  v8 = +[UIFont sectionFooterFont];
  [v4 addAttribute:NSFontAttributeName value:v8 range:{0, objc_msgSend(v4, "length")}];

  return v4;
}

+ (id)footerAttributedString:(id)string additionalAttributeName:(id)name additionalAttributeValue:(id)value additionalAttributeRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  valueCopy = value;
  nameCopy = name;
  stringCopy = string;
  v13 = [NSMutableAttributedString alloc];
  v14 = [MTSettingsGroup footerAttributedString:stringCopy];

  v15 = [v13 initWithAttributedString:v14];
  [v15 addAttribute:nameCopy value:valueCopy range:{location, length}];

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