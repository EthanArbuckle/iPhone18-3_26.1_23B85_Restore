@interface PSSpecifier(AppSystemSettingsUIAdditions)
- (id)au_createCellInstance;
- (id)au_footerString;
- (id)au_image;
- (id)au_titleString;
- (uint64_t)au_BOOLValue;
- (uint64_t)au_isUserInteractive;
- (uint64_t)au_prefersSubtitleAppearance;
- (uint64_t)setAu_BOOLValue:()AppSystemSettingsUIAdditions;
- (void)au_detailString;
- (void)au_loadValueFromCell;
@end

@implementation PSSpecifier(AppSystemSettingsUIAdditions)

- (id)au_image
{
  objc_opt_class();
  v2 = [a1 propertyForKey:*MEMORY[0x277D3FFC0]];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)au_titleString
{
  v2 = [a1 name];
  v3 = [v2 length];

  if (v3)
  {
    v4 = [a1 name];
    v5 = [v4 copy];
LABEL_3:
    v6 = v5;

    goto LABEL_7;
  }

  v7 = [a1 cellType];
  if ((v7 > 0xD || ((1 << v7) & 0x200A) == 0) && [a1 hasValidGetter])
  {
    objc_opt_class();
    v4 = [a1 performGetter];
    if (objc_opt_isKindOfClass())
    {
      v9 = v4;
    }

    else
    {
      v9 = 0;
    }

    v5 = v9;
    goto LABEL_3;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)au_detailString
{
  if (![a1 hasValidGetter] || (objc_msgSend(a1, "performGetter"), (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_14:
    v3 = [a1 propertyForKey:*MEMORY[0x277D401A8]];
    goto LABEL_15;
  }

  v3 = v2;
  if ([a1 cellType] == 9)
  {
    goto LABEL_15;
  }

  if ([a1 cellType] == 2 || objc_msgSend(a1, "cellType") == 4)
  {
    v4 = [a1 shortTitleDictionary];
  }

  else
  {
    v4 = [a1 titleDictionary];
  }

  v5 = v4;
  if (v4 && ([v4 objectForKeyedSubscript:v3], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    objc_opt_class();
    v7 = [v5 objectForKeyedSubscript:v3];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v3 = v7;
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

LABEL_15:
  objc_opt_class();
  v10 = v3;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)au_footerString
{
  if ([a1 cellType])
  {
    v2 = 0;
  }

  else
  {
    objc_opt_class();
    v3 = [a1 propertyForKey:*MEMORY[0x277D3FF88]];
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v2 = v4;
  }

  return v2;
}

- (uint64_t)au_BOOLValue
{
  if ([a1 cellType] != 6 || !objc_msgSend(a1, "hasValidSetter") || !objc_msgSend(a1, "hasValidGetter"))
  {
    return 0;
  }

  v2 = [a1 performGetter];
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = NSBOOLFromString();
  }

  else
  {
    objc_opt_class();
    v8 = v3;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      v6 = [v10 BOOLValue];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (uint64_t)setAu_BOOLValue:()AppSystemSettingsUIAdditions
{
  [a1 willChangeValueForKey:@"au_BOOLValue"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [a1 performSetterWithValue:v5];

  return [a1 didChangeValueForKey:@"au_BOOLValue"];
}

- (uint64_t)au_prefersSubtitleAppearance
{
  v2 = [a1 propertyForKey:*MEMORY[0x277D3FE58]];
  if (!v2)
  {
    return 0;
  }

  v3 = NSStringFromClass(v2);
  v4 = [a1 identifier];
  if ([@"NOTIFICATIONS" isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [@"PSAppDataUsagePolicyTernaryControlTableCell" isEqualToString:v3];
  }

  return v5;
}

- (void)au_loadValueFromCell
{
  if ([a1 au_prefersSubtitleAppearance])
  {
    v2 = [a1 au_createCellInstance];
    if (v2)
    {
      v5 = v2;
      [v2 refreshCellContentsWithSpecifier:a1];
      v3 = [v5 detailTextLabel];
      v4 = [v3 text];

      if ([v4 length])
      {
        [a1 setProperty:v4 forKey:*MEMORY[0x277D401A8]];
      }

      v2 = v5;
    }
  }
}

- (uint64_t)au_isUserInteractive
{
  if (![a1 controllerLoadAction] && (CFPreferencesGetAppBooleanValue(@"kDontUseOldAction", @"com.apple.Preferences", 0) || !*&a1[*MEMORY[0x277D3FC80]]) && !*&a1[*MEMORY[0x277D3FCB0]] && !*&a1[*MEMORY[0x277D3FCA0]] && !*&a1[*MEMORY[0x277D3FC98]])
  {
    v2 = [a1 propertyForKey:*MEMORY[0x277D40000]];
    if (v2 || ([a1 propertyForKey:*MEMORY[0x277D3FFC0]], (v2 = objc_claimAutoreleasedReturnValue()) != 0) || ((v3 = *&a1[*MEMORY[0x277D3FC90]], (v3 - 3) >= 2) ? (v4 = v3 == 13) : (v4 = 1), v4))
    {
    }

    else if (v3 != 15)
    {
      v12 = [a1 propertyForKey:@"ASBundleName"];

      if (!v12)
      {
        return 0;
      }
    }
  }

  objc_opt_class();
  v5 = *MEMORY[0x277D3FF38];
  v6 = [a1 propertyForKey:*MEMORY[0x277D3FF38]];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8)
  {
    return 1;
  }

  v9 = [a1 propertyForKey:v5];
  v10 = [v9 BOOLValue];

  return v10;
}

- (id)au_createCellInstance
{
  v2 = [MEMORY[0x277D3FB38] cellClassForSpecifier:a1];
  if ([(objc_class *)v2 isSubclassOfClass:objc_opt_class()])
  {
    v3 = [v2 alloc];
    v4 = [(objc_class *)v2 cellStyle];
    v5 = [(objc_class *)v2 reuseIdentifierForSpecifier:a1];
    v6 = [v3 initWithStyle:v4 reuseIdentifier:v5 specifier:a1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end