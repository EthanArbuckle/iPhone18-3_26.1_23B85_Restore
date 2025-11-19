@interface HoverTypingTextStyleViewController
+ (id)visualTitleForEnumValue:(id)a3;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation HoverTypingTextStyleViewController

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v15 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v22[0] = UIFontTextStyleBody;
    v22[1] = UIFontTextStyleSubheadline;
    v22[2] = UIFontTextStyleHeadline;
    v22[3] = UIFontTextStyleTitle3;
    v22[4] = UIFontTextStyleTitle2;
    v22[5] = UIFontTextStyleTitle1;
    v22[6] = UIFontTextStyleLargeTitle;
    [NSArray arrayWithObjects:v22 count:7];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = v20 = 0u;
    v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      v8 = PSIDKey;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [HoverTypingTextStyleViewController visualTitleForEnumValue:v10];
          v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v12 setProperty:v10 forKey:v8];
          [v12 setCellType:3];
          [v4 addObject:v12];
        }

        v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v13 = *&self->AXUISettingsBaseListController_opaque[v15];
    *&self->AXUISettingsBaseListController_opaque[v15] = v4;

    v3 = *&self->AXUISettingsBaseListController_opaque[v15];
  }

  return v3;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 hoverTextTypingTextStyle];

  if (!v7)
  {
    v7 = UIFontTextStyleBody;
  }

  v11 = v5;
  v8 = [v11 specifier];
  v9 = [v8 propertyForKey:PSIDKey];
  v10 = [v9 isEqual:v7];

  [v11 setChecked:v10];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = HoverTypingTextStyleViewController;
  v6 = a4;
  [(HoverTypingTextStyleViewController *)&v10 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(HoverTypingTextStyleViewController *)self specifierAtIndex:[(HoverTypingTextStyleViewController *)self indexForIndexPath:v6, v10.receiver, v10.super_class]];
  v8 = [v7 propertyForKey:PSIDKey];
  v9 = +[AXSettings sharedInstance];
  [v9 setHoverTextTypingTextStyle:v8];

  [(HoverTypingTextStyleViewController *)self updateTableCheckedSelection:v6];
}

+ (id)visualTitleForEnumValue:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 isEqualToString:UIFontTextStyleBody] & 1) == 0)
  {
    if ([v4 isEqualToString:UIFontTextStyleSubheadline])
    {
      v5 = @"Subheadline";
    }

    else if ([v4 isEqualToString:UIFontTextStyleHeadline])
    {
      v5 = @"Headline";
    }

    else if ([v4 isEqualToString:UIFontTextStyleTitle3])
    {
      v5 = @"Title3";
    }

    else if ([v4 isEqualToString:UIFontTextStyleTitle2])
    {
      v5 = @"Title2";
    }

    else if ([v4 isEqualToString:UIFontTextStyleTitle1])
    {
      v5 = @"Title1";
    }

    else if ([v4 isEqualToString:UIFontTextStyleLargeTitle])
    {
      v5 = @"Large Title";
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = @"Body";
  }

  return v5;
}

@end