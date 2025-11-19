@interface HOImportTriggerItemManager
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_identifierForSection:(unint64_t)a3;
- (id)_sectionIdentifierForItem:(id)a3;
- (id)_titleForSectionWithIdentifier:(id)a3;
@end

@implementation HOImportTriggerItemManager

- (id)_buildItemProvidersForHome:(id)a3
{
  v4 = a3;
  v5 = [HUInstructionsItem alloc];
  v6 = HULocalizedString();
  v7 = [v5 initWithStyle:5 title:0 description:v6];
  [(HOImportTriggerItemManager *)self setInstructionsItem:v7];

  v8 = [HFStaticItemProvider alloc];
  v9 = [(HOImportTriggerItemManager *)self instructionsItem];
  v17 = v9;
  v10 = [NSArray arrayWithObjects:&v17 count:1];
  v11 = [NSSet setWithArray:v10];
  v12 = [v8 initWithItems:v11];

  v13 = [[HUTriggerItemProvider alloc] initWithHome:v4];
  v16[0] = v12;
  v16[1] = v13;
  v14 = [NSArray arrayWithObjects:v16 count:2];

  return v14;
}

- (id)_titleForSectionWithIdentifier:(id)a3
{
  if ([a3 isEqualToString:@"HUImportTriggerSectionIdentifierTriggers"])
  {
    v3 = HULocalizedString();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_identifierForSection:(unint64_t)a3
{
  if (!a3)
  {
    return @"HUFImportTriggerSectionIdentifierInstructions";
  }

  if (a3 == 1)
  {
    return @"HUImportTriggerSectionIdentifierTriggers";
  }

  v7 = +[NSAssertionHandler currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"HOImportTriggerItemManager.m" lineNumber:64 description:{@"Couldn't find an identifier for section: %lu", a3}];

  return 0;
}

- (id)_sectionIdentifierForItem:(id)a3
{
  v5 = a3;
  v6 = [(HOImportTriggerItemManager *)self instructionsItem];
  v7 = [v5 isEqual:v6];

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
      [v9 handleFailureInMethod:a2 object:self file:@"HOImportTriggerItemManager.m" lineNumber:74 description:{@"Couldn't find a section for item: %@", v5}];

      v8 = 0;
    }
  }

  return v8;
}

@end