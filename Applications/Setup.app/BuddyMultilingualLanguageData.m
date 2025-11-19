@interface BuddyMultilingualLanguageData
+ (id)languageShortFormat:(id)a3;
+ (id)withLanguage:(id)a3 defaults:(id)a4 editingOption:(unint64_t)a5;
+ (id)withLanguage:(id)a3 isDefault:(BOOL)a4 editingOption:(unint64_t)a5;
+ (id)withLanguageMainDisplayText:(id)a3 secondaryDisplayText:(id)a4 identifier:(id)a5 isDefault:(BOOL)a6 editingOption:(unint64_t)a7;
- (BOOL)isEqual:(id)a3;
- (id)detailText;
- (unint64_t)hash;
@end

@implementation BuddyMultilingualLanguageData

+ (id)withLanguageMainDisplayText:(id)a3 secondaryDisplayText:(id)a4 identifier:(id)a5 isDefault:(BOOL)a6 editingOption:(unint64_t)a7
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = a6;
  v16 = a7;
  v15 = objc_opt_new();
  v11 = [location[0] copy];
  [v15 setDisplayText:v11];

  v12 = [v19 copy];
  [v15 setSecondaryDisplayText:v12];

  [v15 setIsDefault:a6];
  [v15 setEditingOptions:v16];
  [v15 set_identifier:v18];
  [v15 setShowDetailText:1];
  v13 = v15;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v13;
}

+ (id)withLanguage:(id)a3 isDefault:(BOOL)a4 editingOption:(unint64_t)a5
{
  v12 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  v9[1] = a5;
  v9[0] = [v12 withLanguage:location[0] defaults:&__NSArray0__struct editingOption:a5];
  [v9[0] setIsDefault:a4];
  v7 = v9[0];
  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
  return v7;
}

+ (id)withLanguage:(id)a3 defaults:(id)a4 editingOption:(unint64_t)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = a5;
  v17 = [v19 containsObject:location[0]] & 1;
  v16 = objc_opt_new();
  v7 = [IPLanguage languageWithIdentifier:location[0]];
  v15 = [(IPLanguage *)v7 localizedStringForName];

  v8 = [v15 copy];
  [v16 setDisplayText:v8];

  v9 = [location[0] copy];
  [v16 set_identifier:v9];

  [v16 setIsDefault:v17 & 1];
  [v16 setSecondaryDisplayText:0];
  v10 = +[BuddyMultilingualDataModelProvider selectedLanguage];
  LOBYTE(a4) = [v10 isEqualToString:location[0]] ^ 1;

  if (a4)
  {
    v11 = [IPLanguage languageWithIdentifier:location[0]];
    v12 = [(IPLanguage *)v11 name];
    [v16 setSecondaryDisplayText:v12];
  }

  [v16 setEditingOptions:{v18, v15}];
  [v16 setShowDetailText:1];
  v13 = v16;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v13;
}

+ (id)languageShortFormat:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [NSLocale baseLanguageFromLanguage:location[0]];
  v3 = +[NSLocale currentLocale];
  v4 = [(NSLocale *)v3 localizedStringForLanguage:v6 context:3];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = objc_retainBlock(&stru_10032D3C0);
  if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyMultilingualDisplayableViewModel])
  {
    v27 = location[0];
    v3 = [(BuddyMultilingualLanguageData *)v30 identifier];
    v4 = (*(v28 + 2))(v28, v3);
    v5 = [v27 identifier];
    v6 = (*(v28 + 2))(v28, v5);
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
      v26 = [(BuddyMultilingualLanguageData *)v30 title];
      v25 = 1;
      v24 = (*(v28 + 2))(v28);
      v23 = 1;
      v22 = [v27 title];
      v21 = 1;
      v20 = (*(v28 + 2))(v28);
      v19 = 1;
      v9 = [v24 isEqual:?];
      v8 = 0;
      if (v9)
      {
        v18 = [(BuddyMultilingualLanguageData *)v30 detailText];
        v17 = 1;
        v16 = (*(v28 + 2))(v28);
        v15 = 1;
        v14 = [v27 detailText];
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
  v2 = [(BuddyMultilingualLanguageData *)self identifier];
  v3 = [(NSString *)v2 hash];
  v4 = [(BuddyMultilingualLanguageData *)self title];
  v5 = v3 ^ [v4 hash];
  v6 = [(BuddyMultilingualLanguageData *)self detailText];
  v7 = v5 ^ [v6 hash];

  return v7;
}

- (id)detailText
{
  v4 = 0;
  if ([(BuddyMultilingualLanguageData *)self showDetailText])
  {
    v2 = [(BuddyMultilingualLanguageData *)self secondaryDisplayText];
    v5 = v2;
    v4 = 1;
  }

  else
  {
    v2 = 0;
  }

  v7 = v2;
  if (v4)
  {
  }

  return v7;
}

@end