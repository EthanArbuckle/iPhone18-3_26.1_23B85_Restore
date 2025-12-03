@interface BuddyMultilingualLanguageData
+ (id)languageShortFormat:(id)format;
+ (id)withLanguage:(id)language defaults:(id)defaults editingOption:(unint64_t)option;
+ (id)withLanguage:(id)language isDefault:(BOOL)default editingOption:(unint64_t)option;
+ (id)withLanguageMainDisplayText:(id)text secondaryDisplayText:(id)displayText identifier:(id)identifier isDefault:(BOOL)default editingOption:(unint64_t)option;
- (BOOL)isEqual:(id)equal;
- (id)detailText;
- (unint64_t)hash;
@end

@implementation BuddyMultilingualLanguageData

+ (id)withLanguageMainDisplayText:(id)text secondaryDisplayText:(id)displayText identifier:(id)identifier isDefault:(BOOL)default editingOption:(unint64_t)option
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  v19 = 0;
  objc_storeStrong(&v19, displayText);
  v18 = 0;
  objc_storeStrong(&v18, identifier);
  defaultCopy = default;
  optionCopy = option;
  v15 = objc_opt_new();
  v11 = [location[0] copy];
  [v15 setDisplayText:v11];

  v12 = [v19 copy];
  [v15 setSecondaryDisplayText:v12];

  [v15 setIsDefault:default];
  [v15 setEditingOptions:optionCopy];
  [v15 set_identifier:v18];
  [v15 setShowDetailText:1];
  v13 = v15;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v13;
}

+ (id)withLanguage:(id)language isDefault:(BOOL)default editingOption:(unint64_t)option
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, language);
  defaultCopy = default;
  v9[1] = option;
  v9[0] = [selfCopy withLanguage:location[0] defaults:&__NSArray0__struct editingOption:option];
  [v9[0] setIsDefault:default];
  v7 = v9[0];
  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
  return v7;
}

+ (id)withLanguage:(id)language defaults:(id)defaults editingOption:(unint64_t)option
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, language);
  v19 = 0;
  objc_storeStrong(&v19, defaults);
  optionCopy = option;
  v17 = [v19 containsObject:location[0]] & 1;
  v16 = objc_opt_new();
  v7 = [IPLanguage languageWithIdentifier:location[0]];
  localizedStringForName = [(IPLanguage *)v7 localizedStringForName];

  v8 = [localizedStringForName copy];
  [v16 setDisplayText:v8];

  v9 = [location[0] copy];
  [v16 set_identifier:v9];

  [v16 setIsDefault:v17 & 1];
  [v16 setSecondaryDisplayText:0];
  v10 = +[BuddyMultilingualDataModelProvider selectedLanguage];
  LOBYTE(defaults) = [v10 isEqualToString:location[0]] ^ 1;

  if (defaults)
  {
    v11 = [IPLanguage languageWithIdentifier:location[0]];
    name = [(IPLanguage *)v11 name];
    [v16 setSecondaryDisplayText:name];
  }

  [v16 setEditingOptions:{optionCopy, localizedStringForName}];
  [v16 setShowDetailText:1];
  v13 = v16;
  objc_storeStrong(&localizedStringForName, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v13;
}

+ (id)languageShortFormat:(id)format
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, format);
  v6 = [NSLocale baseLanguageFromLanguage:location[0]];
  v3 = +[NSLocale currentLocale];
  v4 = [(NSLocale *)v3 localizedStringForLanguage:v6 context:3];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  v28 = objc_retainBlock(&stru_10032D3C0);
  if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyMultilingualDisplayableViewModel])
  {
    v27 = location[0];
    identifier = [(BuddyMultilingualLanguageData *)selfCopy identifier];
    v4 = (*(v28 + 2))(v28, identifier);
    identifier2 = [v27 identifier];
    v6 = (*(v28 + 2))(v28, identifier2);
    v7 = [v4 isEqual:v6];
    v25 = 0;
    v23 = 0;
    v21 = 0;
    v19 = 0;
    v17 = 0;
    v15 = 0;
    v13 = 0;
    v11 = 0;
    v8 = 0;
    if (v7)
    {
      title = [(BuddyMultilingualLanguageData *)selfCopy title];
      v25 = 1;
      v24 = (*(v28 + 2))(v28);
      v23 = 1;
      title2 = [v27 title];
      v21 = 1;
      v20 = (*(v28 + 2))(v28);
      v19 = 1;
      v9 = [v24 isEqual:?];
      v8 = 0;
      if (v9)
      {
        detailText = [(BuddyMultilingualLanguageData *)selfCopy detailText];
        v17 = 1;
        v16 = (*(v28 + 2))(v28);
        v15 = 1;
        detailText2 = [v27 detailText];
        v13 = 1;
        v12 = (*(v28 + 2))(v28);
        v11 = 1;
        v8 = [v16 isEqual:?];
      }
    }

    v31 = v8 & 1;
    if (v11)
    {
    }

    if (v13)
    {
    }

    if (v15)
    {
    }

    if (v17)
    {
    }

    if (v19)
    {
    }

    if (v21)
    {
    }

    if (v23)
    {
    }

    if (v25)
    {
    }

    objc_storeStrong(&v27, 0);
  }

  else
  {
    v31 = 0;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  return v31 & 1;
}

- (unint64_t)hash
{
  identifier = [(BuddyMultilingualLanguageData *)self identifier];
  v3 = [(NSString *)identifier hash];
  title = [(BuddyMultilingualLanguageData *)self title];
  v5 = v3 ^ [title hash];
  detailText = [(BuddyMultilingualLanguageData *)self detailText];
  v7 = v5 ^ [detailText hash];

  return v7;
}

- (id)detailText
{
  v4 = 0;
  if ([(BuddyMultilingualLanguageData *)self showDetailText])
  {
    secondaryDisplayText = [(BuddyMultilingualLanguageData *)self secondaryDisplayText];
    v5 = secondaryDisplayText;
    v4 = 1;
  }

  else
  {
    secondaryDisplayText = 0;
  }

  v7 = secondaryDisplayText;
  if (v4)
  {
  }

  return v7;
}

@end