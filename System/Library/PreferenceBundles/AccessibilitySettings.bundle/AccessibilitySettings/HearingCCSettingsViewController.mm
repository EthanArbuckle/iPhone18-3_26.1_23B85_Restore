@interface HearingCCSettingsViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (HearingCCSettingsViewController)init;
- (id)_identifierAtIndexPath:(id)path;
- (id)_identifiersInSection:(unint64_t)section;
- (id)_specifierNameForOption:(unint64_t)option;
- (id)_specifiersForIdentifiers:(id)identifiers;
- (id)specifiers;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (unint64_t)_indexForInsertingItemWithIdentifier:(id)identifier intoArray:(id)array;
- (void)_includedIdentifierAtIndexPath:(id)path;
- (void)_moreIdentifierAtIndexPath:(id)path;
- (void)_repopulateModuleData;
- (void)_saveState;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)viewDidLoad;
@end

@implementation HearingCCSettingsViewController

- (HearingCCSettingsViewController)init
{
  v8.receiver = self;
  v8.super_class = HearingCCSettingsViewController;
  v2 = [(AccessibilitySettingsBaseController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    includedIdentifiers = v2->_includedIdentifiers;
    v2->_includedIdentifiers = v3;

    v5 = objc_alloc_init(NSMutableArray);
    moreIdentifiers = v2->_moreIdentifiers;
    v2->_moreIdentifiers = v5;

    [(HearingCCSettingsViewController *)v2 _repopulateModuleData];
  }

  return v2;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HearingCCSettingsViewController;
  [(HearingCCSettingsViewController *)&v3 viewDidLoad];
  [*&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__table] setEditing:1 animated:0];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    [(HearingCCSettingsViewController *)self setIncludedSectionIndex:0];
    v6 = settingsLocString(@"INCLUDED_MODULES_SECTION_TITLE", @"Accessibility");
    v7 = [PSSpecifier groupSpecifierWithName:v6];
    [(HearingCCSettingsViewController *)self setIncludedModulesGroupSpecifier:v7];

    includedModulesGroupSpecifier = [(HearingCCSettingsViewController *)self includedModulesGroupSpecifier];
    [v5 addObject:includedModulesGroupSpecifier];

    includedIdentifiers = [(HearingCCSettingsViewController *)self includedIdentifiers];
    v10 = [(HearingCCSettingsViewController *)self _specifiersForIdentifiers:includedIdentifiers];
    [v5 addObjectsFromArray:v10];

    [(HearingCCSettingsViewController *)self setMoreSectionIndex:1];
    v11 = settingsLocString(@"MORE_MODULES_SECTION_TITLE", @"Accessibility");
    v12 = [PSSpecifier groupSpecifierWithName:v11];
    [(HearingCCSettingsViewController *)self setMoreModulesGroupSpecifier:v12];

    moreModulesGroupSpecifier = [(HearingCCSettingsViewController *)self moreModulesGroupSpecifier];
    [v5 addObject:moreModulesGroupSpecifier];

    moreIdentifiers = [(HearingCCSettingsViewController *)self moreIdentifiers];
    v15 = [(HearingCCSettingsViewController *)self _specifiersForIdentifiers:moreIdentifiers];
    [v5 addObjectsFromArray:v15];

    v16 = *&self->super.AXUISettingsListController_opaque[v3];
    *&self->super.AXUISettingsListController_opaque[v3] = v5;

    v4 = *&self->super.AXUISettingsListController_opaque[v3];
  }

  return v4;
}

- (void)_repopulateModuleData
{
  v3 = [NSArray arrayWithObjects:&off_27A548, &off_27A560, &off_27A578, &off_27A590, &off_27A5A8, &off_27A5C0, 0];
  v4 = +[HUHearingSettings sharedInstance];
  hearingControlCenterOrder = [v4 hearingControlCenterOrder];
  v6 = [hearingControlCenterOrder mutableCopy];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __56__HearingCCSettingsViewController__repopulateModuleData__block_invoke;
  v9[3] = &unk_257CD0;
  v10 = v6;
  v11 = objc_alloc_init(NSMutableArray);
  v7 = v11;
  v8 = v6;
  [v3 enumerateObjectsUsingBlock:v9];
  [v8 removeObject:&off_27A548];
  [v7 removeObject:&off_27A548];
  [v8 removeObject:&off_27A560];
  [v7 removeObject:&off_27A560];
  [(HearingCCSettingsViewController *)self setIncludedIdentifiers:v8];
  [(HearingCCSettingsViewController *)self setMoreIdentifiers:v7];
}

void __56__HearingCCSettingsViewController__repopulateModuleData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (id)_identifiersInSection:(unint64_t)section
{
  if ([(HearingCCSettingsViewController *)self includedSectionIndex]== section)
  {
    includedIdentifiers = [(HearingCCSettingsViewController *)self includedIdentifiers];
  }

  else if ([(HearingCCSettingsViewController *)self moreSectionIndex]== section)
  {
    includedIdentifiers = [(HearingCCSettingsViewController *)self moreIdentifiers];
  }

  else
  {
    includedIdentifiers = 0;
  }

  return includedIdentifiers;
}

- (id)_identifierAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  v6 = [pathCopy row];

  v7 = [(HearingCCSettingsViewController *)self _identifiersInSection:section];
  v8 = [v7 objectAtIndex:v6];

  return v8;
}

- (unint64_t)_indexForInsertingItemWithIdentifier:(id)identifier intoArray:(id)array
{
  arrayCopy = array;
  identifierCopy = identifier;
  v7 = [arrayCopy indexOfObject:identifierCopy inSortedRange:0 options:objc_msgSend(arrayCopy usingComparator:{"count"), 1024, &__block_literal_global_41}];

  return v7;
}

- (void)_includedIdentifierAtIndexPath:(id)path
{
  pathCopy = path;
  v16 = [(HearingCCSettingsViewController *)self _identifierAtIndexPath:pathCopy];
  includedIdentifiers = [(HearingCCSettingsViewController *)self includedIdentifiers];
  v6 = [includedIdentifiers count];

  moreModulesGroupSpecifier = [(HearingCCSettingsViewController *)self moreModulesGroupSpecifier];
  v8 = [(HearingCCSettingsViewController *)self indexOfSpecifier:moreModulesGroupSpecifier];
  v9 = [pathCopy row];

  v10 = &v9[v8];
  includedModulesGroupSpecifier = [(HearingCCSettingsViewController *)self includedModulesGroupSpecifier];
  v12 = [(HearingCCSettingsViewController *)self indexOfSpecifier:includedModulesGroupSpecifier]+ v6;

  v13 = [(HearingCCSettingsViewController *)self specifierAtIndex:v10 + 1];
  moreIdentifiers = [(HearingCCSettingsViewController *)self moreIdentifiers];
  [moreIdentifiers removeObject:v16];

  includedIdentifiers2 = [(HearingCCSettingsViewController *)self includedIdentifiers];
  [includedIdentifiers2 insertObject:v16 atIndex:v6];

  [(HearingCCSettingsViewController *)self beginUpdates];
  [(HearingCCSettingsViewController *)self removeSpecifierAtIndex:v10 + 1 animated:1];
  [(HearingCCSettingsViewController *)self insertSpecifier:v13 atIndex:v12 + 1 animated:1];
  [(HearingCCSettingsViewController *)self endUpdates];
  [(HearingCCSettingsViewController *)self _saveState];
}

- (void)_moreIdentifierAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(HearingCCSettingsViewController *)self _identifierAtIndexPath:pathCopy];
  moreIdentifiers = [(HearingCCSettingsViewController *)self moreIdentifiers];
  v7 = [(HearingCCSettingsViewController *)self _indexForInsertingItemWithIdentifier:v5 intoArray:moreIdentifiers];

  includedModulesGroupSpecifier = [(HearingCCSettingsViewController *)self includedModulesGroupSpecifier];
  v9 = [(HearingCCSettingsViewController *)self indexOfSpecifier:includedModulesGroupSpecifier];
  v10 = [pathCopy row];

  v11 = v10 + v9 + 1;
  moreModulesGroupSpecifier = [(HearingCCSettingsViewController *)self moreModulesGroupSpecifier];
  v13 = [(HearingCCSettingsViewController *)self indexOfSpecifier:moreModulesGroupSpecifier]+ v7;

  v14 = [(HearingCCSettingsViewController *)self specifierAtIndex:v11];
  includedIdentifiers = [(HearingCCSettingsViewController *)self includedIdentifiers];
  [includedIdentifiers removeObject:v5];

  moreIdentifiers2 = [(HearingCCSettingsViewController *)self moreIdentifiers];
  [moreIdentifiers2 insertObject:v5 atIndex:v7];

  table = [(HearingCCSettingsViewController *)self table];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __62__HearingCCSettingsViewController__moreIdentifierAtIndexPath___block_invoke;
  v22[3] = &unk_255B80;
  v22[4] = self;
  v22[5] = v11;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __62__HearingCCSettingsViewController__moreIdentifierAtIndexPath___block_invoke_2;
  v19[3] = &unk_257D18;
  v19[4] = self;
  v20 = v14;
  v21 = v13;
  v18 = v14;
  [table performBatchUpdates:v22 completion:v19];
}

id __62__HearingCCSettingsViewController__moreIdentifierAtIndexPath___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) insertSpecifier:*(a1 + 40) atIndex:*(a1 + 48) animated:1];
  v2 = *(a1 + 32);

  return [v2 _saveState];
}

- (id)_specifiersForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __61__HearingCCSettingsViewController__specifiersForIdentifiers___block_invoke;
  v9[3] = &unk_257CD0;
  v9[4] = self;
  v5 = objc_alloc_init(NSMutableArray);
  v10 = v5;
  [identifiersCopy enumerateObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __61__HearingCCSettingsViewController__specifiersForIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) _specifierNameForOption:{objc_msgSend(a2, "unsignedIntValue")}];
  v3 = [[PSSpecifier alloc] initWithName:v4 target:*(a1 + 32) set:0 get:0 detail:0 cell:3 edit:0];
  [*(a1 + 40) addObject:v3];
}

- (id)_specifierNameForOption:(unint64_t)option
{
  v3 = 0;
  v4 = __ROR8__(option - 24, 1);
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v3 = paLocString();
    }

    else if (v4 == 5)
    {
      v3 = settingsLocString(@"PERSONAL_AUDIO", @"Accessibility");
    }
  }

  else if (!v4 || v4 == 3)
  {
    v3 = hearingLocString();
  }

  return v3;
}

- (void)_saveState
{
  includedIdentifiers = [(HearingCCSettingsViewController *)self includedIdentifiers];
  v4 = [includedIdentifiers mutableCopy];

  [v4 insertObject:&off_27A560 atIndex:0];
  [v4 insertObject:&off_27A548 atIndex:0];
  v3 = +[HUHearingSettings sharedInstance];
  [v3 setHearingControlCenterOrder:v4];
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(HearingCCSettingsViewController *)self includedSectionIndex])
  {
    v7 = 1;
  }

  else
  {
    section2 = [pathCopy section];
    v7 = section2 == [(HearingCCSettingsViewController *)self moreSectionIndex];
  }

  return v7;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  v13 = [(HearingCCSettingsViewController *)self _identifierAtIndexPath:pathCopy];
  section = [pathCopy section];

  v10 = [(HearingCCSettingsViewController *)self _identifiersInSection:section];
  [v10 removeObject:v13];
  v11 = -[HearingCCSettingsViewController _identifiersInSection:](self, "_identifiersInSection:", [indexPathCopy section]);
  v12 = [indexPathCopy row];

  [v11 insertObject:v13 atIndex:v12];
  [(HearingCCSettingsViewController *)self reloadSpecifiers];
  [(HearingCCSettingsViewController *)self _saveState];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(HearingCCSettingsViewController *)self includedSectionIndex])
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HearingCCSettingsViewController;
    v9 = [(HearingCCSettingsViewController *)&v11 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
  }

  return v9;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (pathCopy)
  {
    if (style == 1)
    {
      [(HearingCCSettingsViewController *)self _moreIdentifierAtIndexPath:pathCopy];
    }

    else if (style == 2)
    {
      [(HearingCCSettingsViewController *)self _includedIdentifierAtIndexPath:pathCopy];
    }
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(HearingCCSettingsViewController *)self includedSectionIndex])
  {
    v7 = 1;
  }

  else
  {
    section2 = [pathCopy section];
    v7 = 2 * (section2 == [(HearingCCSettingsViewController *)self moreSectionIndex]);
  }

  return v7;
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  section = [indexPathCopy section];
  if (section >= [(HearingCCSettingsViewController *)self includedSectionIndex])
  {
    section2 = [indexPathCopy section];
    v10 = indexPathCopy;
    if (section2 < [(HearingCCSettingsViewController *)self moreSectionIndex])
    {
      goto LABEL_6;
    }

    v11 = [(HearingCCSettingsViewController *)self _identifierAtIndexPath:pathCopy];
    moreIdentifiers = [(HearingCCSettingsViewController *)self moreIdentifiers];
    v14 = [(HearingCCSettingsViewController *)self _indexForInsertingItemWithIdentifier:v11 intoArray:moreIdentifiers];

    v10 = [NSIndexPath indexPathForRow:v14 inSection:[(HearingCCSettingsViewController *)self moreSectionIndex]];
  }

  else
  {
    v10 = [NSIndexPath indexPathForRow:0 inSection:[(HearingCCSettingsViewController *)self includedSectionIndex]];
    v11 = indexPathCopy;
  }

LABEL_6:

  return v10;
}

@end