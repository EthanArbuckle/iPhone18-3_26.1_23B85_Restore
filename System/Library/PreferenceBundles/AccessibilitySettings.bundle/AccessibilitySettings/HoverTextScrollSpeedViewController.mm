@interface HoverTextScrollSpeedViewController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation HoverTextScrollSpeedViewController

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v16 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [&off_27D040 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      v8 = PSTitleKey;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(&off_27D040);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = hoverTextScrollingSpeedLocString([v10 integerValue]);
          v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v12 setProperty:v10 forKey:@"HTScrollSpeed"];
          v13 = hoverTextScrollingSpeedLocString([v10 integerValue]);
          [v12 setProperty:v13 forKey:v8];

          [v12 setCellType:3];
          [v4 addObject:v12];
        }

        v6 = [&off_27D040 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v14 = *&self->AXUISettingsBaseListController_opaque[v16];
    *&self->AXUISettingsBaseListController_opaque[v16] = v4;

    v3 = *&self->AXUISettingsBaseListController_opaque[v16];
  }

  return v3;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  v6 = +[AXSettings sharedInstance];
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 hoverTextScrollingSpeed]);

  v11 = v5;
  v8 = [v11 specifier];
  v9 = [v8 propertyForKey:@"HTScrollSpeed"];
  v10 = [v9 isEqual:v7];

  [v11 setChecked:v10];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = HoverTextScrollSpeedViewController;
  v6 = a4;
  [(HoverTextScrollSpeedViewController *)&v11 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(HoverTextScrollSpeedViewController *)self specifierAtIndex:[(HoverTextScrollSpeedViewController *)self indexForIndexPath:v6, v11.receiver, v11.super_class]];
  v8 = [v7 propertyForKey:@"HTScrollSpeed"];
  v9 = [v8 integerValue];
  v10 = +[AXSettings sharedInstance];
  [v10 setHoverTextScrollingSpeed:v9];

  [(HoverTextScrollSpeedViewController *)self updateTableCheckedSelection:v6];
}

@end