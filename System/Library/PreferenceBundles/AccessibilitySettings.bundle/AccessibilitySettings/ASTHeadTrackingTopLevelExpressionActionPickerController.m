@interface ASTHeadTrackingTopLevelExpressionActionPickerController
- (id)prependedSystemIcons;
- (id)specifiers;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ASTHeadTrackingTopLevelExpressionActionPickerController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = AXParameterizedLocalizedString();
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v7 setProperty:@"HeadTrackingExpressionActionsSensitivityKey" forKey:PSIDKey];
    v8 = [(ASTHeadTrackingTopLevelExpressionActionPickerController *)self expression];
    [v7 setProperty:v8 forKey:@"TopLevelHeadTrackingExpression"];

    [v7 setProperty:&__kCFBooleanTrue forKey:@"BelongsToTopLevelHeadTracking"];
    v19 = v7;
    v9 = [NSArray arrayWithObjects:&v19 count:1];
    [v5 addObjectsFromArray:v9];

    objc_initWeak(&location, self);
    v10 = +[AXSiriShortcutsManager sharedManager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __69__ASTHeadTrackingTopLevelExpressionActionPickerController_specifiers__block_invoke;
    v16[3] = &unk_256718;
    objc_copyWeak(&v17, &location);
    v11 = [v10 registerShortcutsDidChangeBlock:v16];
    siriShortcutToken = self->_siriShortcutToken;
    self->_siriShortcutToken = v11;

    [(AssistiveTouchCustomizeBaseActionPickerController *)self reloadASTDataSource];
    v13 = [(AssistiveTouchCustomizeBaseActionPickerController *)self iconSpecifiers];
    [v5 axSafelyAddObjectsFromArray:v13];

    v14 = *&self->super.AXUISettingsBaseListController_opaque[v3];
    *&self->super.AXUISettingsBaseListController_opaque[v3] = v5;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);

    v4 = *&self->super.AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

void __69__ASTHeadTrackingTopLevelExpressionActionPickerController_specifiers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (void)loadView
{
  AXAssistiveTouchDisallowedBaseActions();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __67__ASTHeadTrackingTopLevelExpressionActionPickerController_loadView__block_invoke;
  v6 = v5[3] = &unk_256D30;
  v3 = v6;
  [(AssistiveTouchCustomizeBaseActionPickerController *)self setIconFilter:v5];
  [(AssistiveTouchCustomizeBaseActionPickerController *)self setPrependHeadTrackingIcons:1];
  v4.receiver = self;
  v4.super_class = ASTHeadTrackingTopLevelExpressionActionPickerController;
  [(AssistiveTouchCustomizeBaseActionPickerController *)&v4 loadView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 assistiveTouchHeadTrackingExpressionToActionMapping];
  v7 = [(ASTHeadTrackingTopLevelExpressionActionPickerController *)self expression];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = AXAssistiveTouchDisallowedBaseActions();
  if ([v9 containsObject:v8])
  {

    v8 = 0;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"__NONE__";
  }

  [(AssistiveTouchCustomizeBaseActionPickerController *)self setSelectedPopoverIcon:v10];
  v11.receiver = self;
  v11.super_class = ASTHeadTrackingTopLevelExpressionActionPickerController;
  [(ASTHeadTrackingTopLevelExpressionActionPickerController *)&v11 viewWillAppear:v3];
}

- (id)prependedSystemIcons
{
  v2 = [NSMutableArray arrayWithObject:@"__NONE__"];
  [v2 addObject:AXAssistiveTouchIconTypeOpenMenu];
  [v2 addObject:AXAssistiveTouchIconTypePassThroughToApp];
  [v2 addObject:AXAssistiveTouchIconTypeMousePrimaryClick];
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 laserEnabled];

  if (v4)
  {
    [v2 addObject:AXAssistiveTouchIconTypeMouseSecondaryClick];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[AXSiriShortcutsManager sharedManager];
  v4 = [(ASTHeadTrackingTopLevelExpressionActionPickerController *)self siriShortcutToken];
  [v3 unregisterShortcutsDidChangeBlock:v4];

  v5.receiver = self;
  v5.super_class = ASTHeadTrackingTopLevelExpressionActionPickerController;
  [(ASTHeadTrackingTopLevelExpressionActionPickerController *)&v5 dealloc];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[ASTHeadTrackingTopLevelExpressionActionPickerController _sectionNeedsAdjustment:](self, "_sectionNeedsAdjustment:", [v7 section]))
  {
    v20.receiver = self;
    v20.super_class = ASTHeadTrackingTopLevelExpressionActionPickerController;
    [(ASTHeadTrackingTopLevelExpressionActionPickerController *)&v20 tableView:v6 didSelectRowAtIndexPath:v7];
  }

  else
  {
    v8 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v7 row], -[ASTHeadTrackingTopLevelExpressionActionPickerController _adjustedSection:](self, "_adjustedSection:", objc_msgSend(v7, "section")));
    [(AssistiveTouchCustomizeBaseActionPickerController *)self astTableView:v6 didSelectRowAtIndexPath:v8];
    v9 = [(AssistiveTouchCustomizeBaseActionPickerController *)self selectedPopoverIcon];
    v10 = +[AXSettings sharedInstance];
    v11 = [v10 assistiveTouchHeadTrackingExpressionToActionMapping];
    v12 = [(ASTHeadTrackingTopLevelExpressionActionPickerController *)self expression];
    v13 = [v11 objectForKey:v12];

    if (v9 && ([v9 isEqualToString:v13] & 1) == 0)
    {
      v14 = +[AXSettings sharedInstance];
      v15 = [v14 assistiveTouchHeadTrackingExpressionToActionMapping];
      v16 = [v15 mutableCopy];

      if (!v16)
      {
        v16 = objc_alloc_init(NSMutableDictionary);
      }

      v17 = [v9 copy];
      v18 = [(ASTHeadTrackingTopLevelExpressionActionPickerController *)self expression];
      [v16 setObject:v17 forKeyedSubscript:v18];

      v19 = +[AXSettings sharedInstance];
      [v19 setAssistiveTouchHeadTrackingExpressionToActionMapping:v16];
    }
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (!-[ASTHeadTrackingTopLevelExpressionActionPickerController _sectionNeedsAdjustment:](self, "_sectionNeedsAdjustment:", [v9 section]))
  {
    v10 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v9 row], -[ASTHeadTrackingTopLevelExpressionActionPickerController _adjustedSection:](self, "_adjustedSection:", objc_msgSend(v9, "section")));
    [(AssistiveTouchCustomizeBaseActionPickerController *)self astTableView:v11 willDisplayCell:v8 forRowAtIndexPath:v10];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (!a4)
  {
    return 1;
  }

  v5 = [(ASTHeadTrackingTopLevelExpressionActionPickerController *)self _adjustedSection:a4];

  return [(AssistiveTouchCustomizeBaseActionPickerController *)self astNumberOfRowsInSection:v5];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if ([(ASTHeadTrackingTopLevelExpressionActionPickerController *)self _sectionNeedsAdjustment:a4])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(AssistiveTouchCustomizeBaseActionPickerController *)self astTitleForSection:[(ASTHeadTrackingTopLevelExpressionActionPickerController *)self _adjustedSection:a4]];
  }

  return v6;
}

@end