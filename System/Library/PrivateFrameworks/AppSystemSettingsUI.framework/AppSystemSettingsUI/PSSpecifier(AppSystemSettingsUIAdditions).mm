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
  v2 = [self propertyForKey:*MEMORY[0x277D3FFC0]];
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
  name = [self name];
  v3 = [name length];

  if (v3)
  {
    name2 = [self name];
    v5 = [name2 copy];
LABEL_3:
    v6 = v5;

    goto LABEL_7;
  }

  cellType = [self cellType];
  if ((cellType > 0xD || ((1 << cellType) & 0x200A) == 0) && [self hasValidGetter])
  {
    objc_opt_class();
    name2 = [self performGetter];
    if (objc_opt_isKindOfClass())
    {
      v9 = name2;
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
  if (![self hasValidGetter] || (objc_msgSend(self, "performGetter"), (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_14:
    v3 = [self propertyForKey:*MEMORY[0x277D401A8]];
    goto LABEL_15;
  }

  v3 = v2;
  if ([self cellType] == 9)
  {
    goto LABEL_15;
  }

  if ([self cellType] == 2 || objc_msgSend(self, "cellType") == 4)
  {
    shortTitleDictionary = [self shortTitleDictionary];
  }

  else
  {
    shortTitleDictionary = [self titleDictionary];
  }

  v5 = shortTitleDictionary;
  if (shortTitleDictionary && ([shortTitleDictionary objectForKeyedSubscript:v3], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
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
  if ([self cellType])
  {
    v2 = 0;
  }

  else
  {
    objc_opt_class();
    v3 = [self propertyForKey:*MEMORY[0x277D3FF88]];
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
  if ([self cellType] != 6 || !objc_msgSend(self, "hasValidSetter") || !objc_msgSend(self, "hasValidGetter"))
  {
    return 0;
  }

  performGetter = [self performGetter];
  objc_opt_class();
  v3 = performGetter;
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
    bOOLValue = NSBOOLFromString();
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
      bOOLValue = [v10 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

- (uint64_t)setAu_BOOLValue:()AppSystemSettingsUIAdditions
{
  [self willChangeValueForKey:@"au_BOOLValue"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [self performSetterWithValue:v5];

  return [self didChangeValueForKey:@"au_BOOLValue"];
}

- (uint64_t)au_prefersSubtitleAppearance
{
  v2 = [self propertyForKey:*MEMORY[0x277D3FE58]];
  if (!v2)
  {
    return 0;
  }

  v3 = NSStringFromClass(v2);
  identifier = [self identifier];
  if ([@"NOTIFICATIONS" isEqualToString:identifier])
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
  if ([self au_prefersSubtitleAppearance])
  {
    au_createCellInstance = [self au_createCellInstance];
    if (au_createCellInstance)
    {
      v5 = au_createCellInstance;
      [au_createCellInstance refreshCellContentsWithSpecifier:self];
      detailTextLabel = [v5 detailTextLabel];
      text = [detailTextLabel text];

      if ([text length])
      {
        [self setProperty:text forKey:*MEMORY[0x277D401A8]];
      }

      au_createCellInstance = v5;
    }
  }
}

- (uint64_t)au_isUserInteractive
{
  if (![self controllerLoadAction] && (CFPreferencesGetAppBooleanValue(@"kDontUseOldAction", @"com.apple.Preferences", 0) || !*&self[*MEMORY[0x277D3FC80]]) && !*&self[*MEMORY[0x277D3FCB0]] && !*&self[*MEMORY[0x277D3FCA0]] && !*&self[*MEMORY[0x277D3FC98]])
  {
    v2 = [self propertyForKey:*MEMORY[0x277D40000]];
    if (v2 || ([self propertyForKey:*MEMORY[0x277D3FFC0]], (v2 = objc_claimAutoreleasedReturnValue()) != 0) || ((v3 = *&self[*MEMORY[0x277D3FC90]], (v3 - 3) >= 2) ? (v4 = v3 == 13) : (v4 = 1), v4))
    {
    }

    else if (v3 != 15)
    {
      v12 = [self propertyForKey:@"ASBundleName"];

      if (!v12)
      {
        return 0;
      }
    }
  }

  objc_opt_class();
  v5 = *MEMORY[0x277D3FF38];
  v6 = [self propertyForKey:*MEMORY[0x277D3FF38]];
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

  v9 = [self propertyForKey:v5];
  bOOLValue = [v9 BOOLValue];

  return bOOLValue;
}

- (id)au_createCellInstance
{
  v2 = [MEMORY[0x277D3FB38] cellClassForSpecifier:self];
  if ([(objc_class *)v2 isSubclassOfClass:objc_opt_class()])
  {
    v3 = [v2 alloc];
    cellStyle = [(objc_class *)v2 cellStyle];
    v5 = [(objc_class *)v2 reuseIdentifierForSpecifier:self];
    v6 = [v3 initWithStyle:cellStyle reuseIdentifier:v5 specifier:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end