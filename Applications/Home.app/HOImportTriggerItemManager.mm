@interface HOImportTriggerItemManager
- (id)_buildItemProvidersForHome:(id)home;
- (id)_identifierForSection:(unint64_t)section;
- (id)_sectionIdentifierForItem:(id)item;
- (id)_titleForSectionWithIdentifier:(id)identifier;
@end

@implementation HOImportTriggerItemManager

- (id)_buildItemProvidersForHome:(id)home
{
  homeCopy = home;
  v5 = [HUInstructionsItem alloc];
  v6 = HULocalizedString();
  v7 = [v5 initWithStyle:5 title:0 description:v6];
  [(HOImportTriggerItemManager *)self setInstructionsItem:v7];

  v8 = [HFStaticItemProvider alloc];
  instructionsItem = [(HOImportTriggerItemManager *)self instructionsItem];
  v17 = instructionsItem;
  v10 = [NSArray arrayWithObjects:&v17 count:1];
  v11 = [NSSet setWithArray:v10];
  v12 = [v8 initWithItems:v11];

  v13 = [[HUTriggerItemProvider alloc] initWithHome:homeCopy];
  v16[0] = v12;
  v16[1] = v13;
  v14 = [NSArray arrayWithObjects:v16 count:2];

  return v14;
}

- (id)_titleForSectionWithIdentifier:(id)identifier
{
  if ([identifier isEqualToString:@"HUImportTriggerSectionIdentifierTriggers"])
  {
    v3 = HULocalizedString();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_identifierForSection:(unint64_t)section
{
  if (!section)
  {
    return @"HUFImportTriggerSectionIdentifierInstructions";
  }

  if (section == 1)
  {
    return @"HUImportTriggerSectionIdentifierTriggers";
  }

  v7 = +[NSAssertionHandler currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"HOImportTriggerItemManager.m" lineNumber:64 description:{@"Couldn't find an identifier for section: %lu", section}];

  return 0;
}

- (id)_sectionIdentifierForItem:(id)item
{
  itemCopy = item;
  instructionsItem = [(HOImportTriggerItemManager *)self instructionsItem];
  v7 = [itemCopy isEqual:instructionsItem];

  if (v7)
  {
    v8 = @"HUFImportTriggerSectionIdentifierInstructions";
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = @"HUImportTriggerSectionIdentifierTriggers";
    }

    else
    {
      v9 = +[NSAssertionHandler currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"HOImportTriggerItemManager.m" lineNumber:74 description:{@"Couldn't find a section for item: %@", itemCopy}];

      v8 = 0;
    }
  }

  return v8;
}

@end