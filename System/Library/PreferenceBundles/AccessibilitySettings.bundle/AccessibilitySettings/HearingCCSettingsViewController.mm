@interface HearingCCSettingsViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (HearingCCSettingsViewController)init;
- (id)_identifierAtIndexPath:(id)a3;
- (id)_identifiersInSection:(unint64_t)a3;
- (id)_specifierNameForOption:(unint64_t)a3;
- (id)_specifiersForIdentifiers:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (unint64_t)_indexForInsertingItemWithIdentifier:(id)a3 intoArray:(id)a4;
- (void)_includedIdentifierAtIndexPath:(id)a3;
- (void)_moreIdentifierAtIndexPath:(id)a3;
- (void)_repopulateModuleData;
- (void)_saveState;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
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

    v8 = [(HearingCCSettingsViewController *)self includedModulesGroupSpecifier];
    [v5 addObject:v8];

    v9 = [(HearingCCSettingsViewController *)self includedIdentifiers];
    v10 = [(HearingCCSettingsViewController *)self _specifiersForIdentifiers:v9];
    [v5 addObjectsFromArray:v10];

    [(HearingCCSettingsViewController *)self setMoreSectionIndex:1];
    v11 = settingsLocString(@"MORE_MODULES_SECTION_TITLE", @"Accessibility");
    v12 = [PSSpecifier groupSpecifierWithName:v11];
    [(HearingCCSettingsViewController *)self setMoreModulesGroupSpecifier:v12];

    v13 = [(HearingCCSettingsViewController *)self moreModulesGroupSpecifier];
    [v5 addObject:v13];

    v14 = [(HearingCCSettingsViewController *)self moreIdentifiers];
    v15 = [(HearingCCSettingsViewController *)self _specifiersForIdentifiers:v14];
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
  v5 = [v4 hearingControlCenterOrder];
  v6 = [v5 mutableCopy];

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

- (id)_identifiersInSection:(unint64_t)a3
{
  if ([(HearingCCSettingsViewController *)self includedSectionIndex]== a3)
  {
    v5 = [(HearingCCSettingsViewController *)self includedIdentifiers];
  }

  else if ([(HearingCCSettingsViewController *)self moreSectionIndex]== a3)
  {
    v5 = [(HearingCCSettingsViewController *)self moreIdentifiers];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_identifierAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v4 row];

  v7 = [(HearingCCSettingsViewController *)self _identifiersInSection:v5];
  v8 = [v7 objectAtIndex:v6];

  return v8;
}

- (unint64_t)_indexForInsertingItemWithIdentifier:(id)a3 intoArray:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 indexOfObject:v6 inSortedRange:0 options:objc_msgSend(v5 usingComparator:{"count"), 1024, &__block_literal_global_41}];

  return v7;
}

- (void)_includedIdentifierAtIndexPath:(id)a3
{
  v4 = a3;
  v16 = [(HearingCCSettingsViewController *)self _identifierAtIndexPath:v4];
  v5 = [(HearingCCSettingsViewController *)self includedIdentifiers];
  v6 = [v5 count];

  v7 = [(HearingCCSettingsViewController *)self moreModulesGroupSpecifier];
  v8 = [(HearingCCSettingsViewController *)self indexOfSpecifier:v7];
  v9 = [v4 row];

  v10 = &v9[v8];
  v11 = [(HearingCCSettingsViewController *)self includedModulesGroupSpecifier];
  v12 = [(HearingCCSettingsViewController *)self indexOfSpecifier:v11]+ v6;

  v13 = [(HearingCCSettingsViewController *)self specifierAtIndex:v10 + 1];
  v14 = [(HearingCCSettingsViewController *)self moreIdentifiers];
  [v14 removeObject:v16];

  v15 = [(HearingCCSettingsViewController *)self includedIdentifiers];
  [v15 insertObject:v16 atIndex:v6];

  [(HearingCCSettingsViewController *)self beginUpdates];
  [(HearingCCSettingsViewController *)self removeSpecifierAtIndex:v10 + 1 animated:1];
  [(HearingCCSettingsViewController *)self insertSpecifier:v13 atIndex:v12 + 1 animated:1];
  [(HearingCCSettingsViewController *)self endUpdates];
  [(HearingCCSettingsViewController *)self _saveState];
}

- (void)_moreIdentifierAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(HearingCCSettingsViewController *)self _identifierAtIndexPath:v4];
  v6 = [(HearingCCSettingsViewController *)self moreIdentifiers];
  v7 = [(HearingCCSettingsViewController *)self _indexForInsertingItemWithIdentifier:v5 intoArray:v6];

  v8 = [(HearingCCSettingsViewController *)self includedModulesGroupSpecifier];
  v9 = [(HearingCCSettingsViewController *)self indexOfSpecifier:v8];
  v10 = [v4 row];

  v11 = v10 + v9 + 1;
  v12 = [(HearingCCSettingsViewController *)self moreModulesGroupSpecifier];
  v13 = [(HearingCCSettingsViewController *)self indexOfSpecifier:v12]+ v7;

  v14 = [(HearingCCSettingsViewController *)self specifierAtIndex:v11];
  v15 = [(HearingCCSettingsViewController *)self includedIdentifiers];
  [v15 removeObject:v5];

  v16 = [(HearingCCSettingsViewController *)self moreIdentifiers];
  [v16 insertObject:v5 atIndex:v7];

  v17 = [(HearingCCSettingsViewController *)self table];
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
  [v17 performBatchUpdates:v22 completion:v19];
}

id __62__HearingCCSettingsViewController__moreIdentifierAtIndexPath___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) insertSpecifier:*(a1 + 40) atIndex:*(a1 + 48) animated:1];
  v2 = *(a1 + 32);

  return [v2 _saveState];
}

- (id)_specifiersForIdentifiers:(id)a3
{
  v4 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __61__HearingCCSettingsViewController__specifiersForIdentifiers___block_invoke;
  v9[3] = &unk_257CD0;
  v9[4] = self;
  v5 = objc_alloc_init(NSMutableArray);
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

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

- (id)_specifierNameForOption:(unint64_t)a3
{
  v3 = 0;
  v4 = __ROR8__(a3 - 24, 1);
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
  v2 = [(HearingCCSettingsViewController *)self includedIdentifiers];
  v4 = [v2 mutableCopy];

  [v4 insertObject:&off_27A560 atIndex:0];
  [v4 insertObject:&off_27A548 atIndex:0];
  v3 = +[HUHearingSettings sharedInstance];
  [v3 setHearingControlCenterOrder:v4];
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  if (v6 == [(HearingCCSettingsViewController *)self includedSectionIndex])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v5 section];
    v7 = v8 == [(HearingCCSettingsViewController *)self moreSectionIndex];
  }

  return v7;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v13 = [(HearingCCSettingsViewController *)self _identifierAtIndexPath:v8];
  v9 = [v8 section];

  v10 = [(HearingCCSettingsViewController *)self _identifiersInSection:v9];
  [v10 removeObject:v13];
  v11 = -[HearingCCSettingsViewController _identifiersInSection:](self, "_identifiersInSection:", [v7 section]);
  v12 = [v7 row];

  [v11 insertObject:v13 atIndex:v12];
  [(HearingCCSettingsViewController *)self reloadSpecifiers];
  [(HearingCCSettingsViewController *)self _saveState];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == [(HearingCCSettingsViewController *)self includedSectionIndex])
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HearingCCSettingsViewController;
    v9 = [(HearingCCSettingsViewController *)&v11 tableView:v6 shouldHighlightRowAtIndexPath:v7];
  }

  return v9;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v9 = a3;
  v8 = a5;
  if (v8)
  {
    if (a4 == 1)
    {
      [(HearingCCSettingsViewController *)self _moreIdentifierAtIndexPath:v8];
    }

    else if (a4 == 2)
    {
      [(HearingCCSettingsViewController *)self _includedIdentifierAtIndexPath:v8];
    }
  }
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  if (v6 == [(HearingCCSettingsViewController *)self includedSectionIndex])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v5 section];
    v7 = 2 * (v8 == [(HearingCCSettingsViewController *)self moreSectionIndex]);
  }

  return v7;
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v8 section];
  if (v9 >= [(HearingCCSettingsViewController *)self includedSectionIndex])
  {
    v12 = [v8 section];
    v10 = v8;
    if (v12 < [(HearingCCSettingsViewController *)self moreSectionIndex])
    {
      goto LABEL_6;
    }

    v11 = [(HearingCCSettingsViewController *)self _identifierAtIndexPath:v7];
    v13 = [(HearingCCSettingsViewController *)self moreIdentifiers];
    v14 = [(HearingCCSettingsViewController *)self _indexForInsertingItemWithIdentifier:v11 intoArray:v13];

    v10 = [NSIndexPath indexPathForRow:v14 inSection:[(HearingCCSettingsViewController *)self moreSectionIndex]];
  }

  else
  {
    v10 = [NSIndexPath indexPathForRow:0 inSection:[(HearingCCSettingsViewController *)self includedSectionIndex]];
    v11 = v8;
  }

LABEL_6:

  return v10;
}

@end