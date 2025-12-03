@interface WristFlickController
- (id)specifiers;
- (void)_updateCheckedStatusForCell:(id)cell;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation WristFlickController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(WristFlickController *)self loadSpecifiersFromPlistName:@"WristFlickSettings-twister" target:self];
    v6 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v7 = settingsLocString(@"WRIST_FLICK_SPEED_ROW_TITLE", @"WristFlickSettings-twister");
    [(WristFlickController *)self setTitle:v7];

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v25 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v23.receiver = self;
  v23.super_class = WristFlickController;
  [(WristFlickController *)&v23 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v22.receiver = self;
  v22.super_class = WristFlickController;
  v8 = [(WristFlickController *)&v22 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v8 specifier];
  v10 = [specifier propertyForKey:*MEMORY[0x277D3FFF0]];
  v11 = [(WristFlickController *)self _wristFlickSpeedFromSpecifierKey:v10];

  AXSetWristFlickSpeed(v11);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  visibleCells = [viewCopy visibleCells];
  v13 = [visibleCells countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(visibleCells);
        }

        [(WristFlickController *)self _updateCheckedStatusForCell:*(*(&v18 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [visibleCells countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v14);
  }

  [v8 setChecked:1];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updateCheckedStatusForCell:(id)cell
{
  cellCopy = cell;
  specifier = [cellCopy specifier];
  v5 = [specifier propertyForKey:*MEMORY[0x277D3FFF0]];
  v6 = [(WristFlickController *)self _wristFlickSpeedFromSpecifierKey:v5];

  [cellCopy setChecked:v6 == AXGetWristFlickSpeed()];
}

@end