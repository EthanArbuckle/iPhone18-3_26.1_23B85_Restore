@interface ASTHeadTrackingTopLevelExpressionActionPickerController
- (id)prependedSystemIcons;
- (id)specifiers;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
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
    expression = [(ASTHeadTrackingTopLevelExpressionActionPickerController *)self expression];
    [v7 setProperty:expression forKey:@"TopLevelHeadTrackingExpression"];

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
    iconSpecifiers = [(AssistiveTouchCustomizeBaseActionPickerController *)self iconSpecifiers];
    [v5 axSafelyAddObjectsFromArray:iconSpecifiers];

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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = +[AXSettings sharedInstance];
  assistiveTouchHeadTrackingExpressionToActionMapping = [v5 assistiveTouchHeadTrackingExpressionToActionMapping];
  expression = [(ASTHeadTrackingTopLevelExpressionActionPickerController *)self expression];
  v8 = [assistiveTouchHeadTrackingExpressionToActionMapping objectForKeyedSubscript:expression];

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
  [(ASTHeadTrackingTopLevelExpressionActionPickerController *)&v11 viewWillAppear:appearCopy];
}

- (id)prependedSystemIcons
{
  v2 = [NSMutableArray arrayWithObject:@"__NONE__"];
  [v2 addObject:AXAssistiveTouchIconTypeOpenMenu];
  [v2 addObject:AXAssistiveTouchIconTypePassThroughToApp];
  [v2 addObject:AXAssistiveTouchIconTypeMousePrimaryClick];
  v3 = +[AXSettings sharedInstance];
  laserEnabled = [v3 laserEnabled];

  if (laserEnabled)
  {
    [v2 addObject:AXAssistiveTouchIconTypeMouseSecondaryClick];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[AXSiriShortcutsManager sharedManager];
  siriShortcutToken = [(ASTHeadTrackingTopLevelExpressionActionPickerController *)self siriShortcutToken];
  [v3 unregisterShortcutsDidChangeBlock:siriShortcutToken];

  v5.receiver = self;
  v5.super_class = ASTHeadTrackingTopLevelExpressionActionPickerController;
  [(ASTHeadTrackingTopLevelExpressionActionPickerController *)&v5 dealloc];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (-[ASTHeadTrackingTopLevelExpressionActionPickerController _sectionNeedsAdjustment:](self, "_sectionNeedsAdjustment:", [pathCopy section]))
  {
    v20.receiver = self;
    v20.super_class = ASTHeadTrackingTopLevelExpressionActionPickerController;
    [(ASTHeadTrackingTopLevelExpressionActionPickerController *)&v20 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }

  else
  {
    v8 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [pathCopy row], -[ASTHeadTrackingTopLevelExpressionActionPickerController _adjustedSection:](self, "_adjustedSection:", objc_msgSend(pathCopy, "section")));
    [(AssistiveTouchCustomizeBaseActionPickerController *)self astTableView:viewCopy didSelectRowAtIndexPath:v8];
    selectedPopoverIcon = [(AssistiveTouchCustomizeBaseActionPickerController *)self selectedPopoverIcon];
    v10 = +[AXSettings sharedInstance];
    assistiveTouchHeadTrackingExpressionToActionMapping = [v10 assistiveTouchHeadTrackingExpressionToActionMapping];
    expression = [(ASTHeadTrackingTopLevelExpressionActionPickerController *)self expression];
    v13 = [assistiveTouchHeadTrackingExpressionToActionMapping objectForKey:expression];

    if (selectedPopoverIcon && ([selectedPopoverIcon isEqualToString:v13] & 1) == 0)
    {
      v14 = +[AXSettings sharedInstance];
      assistiveTouchHeadTrackingExpressionToActionMapping2 = [v14 assistiveTouchHeadTrackingExpressionToActionMapping];
      v16 = [assistiveTouchHeadTrackingExpressionToActionMapping2 mutableCopy];

      if (!v16)
      {
        v16 = objc_alloc_init(NSMutableDictionary);
      }

      v17 = [selectedPopoverIcon copy];
      expression2 = [(ASTHeadTrackingTopLevelExpressionActionPickerController *)self expression];
      [v16 setObject:v17 forKeyedSubscript:expression2];

      v19 = +[AXSettings sharedInstance];
      [v19 setAssistiveTouchHeadTrackingExpressionToActionMapping:v16];
    }
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  if (!-[ASTHeadTrackingTopLevelExpressionActionPickerController _sectionNeedsAdjustment:](self, "_sectionNeedsAdjustment:", [pathCopy section]))
  {
    v10 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [pathCopy row], -[ASTHeadTrackingTopLevelExpressionActionPickerController _adjustedSection:](self, "_adjustedSection:", objc_msgSend(pathCopy, "section")));
    [(AssistiveTouchCustomizeBaseActionPickerController *)self astTableView:viewCopy willDisplayCell:cellCopy forRowAtIndexPath:v10];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (!section)
  {
    return 1;
  }

  v5 = [(ASTHeadTrackingTopLevelExpressionActionPickerController *)self _adjustedSection:section];

  return [(AssistiveTouchCustomizeBaseActionPickerController *)self astNumberOfRowsInSection:v5];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(ASTHeadTrackingTopLevelExpressionActionPickerController *)self _sectionNeedsAdjustment:section])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(AssistiveTouchCustomizeBaseActionPickerController *)self astTitleForSection:[(ASTHeadTrackingTopLevelExpressionActionPickerController *)self _adjustedSection:section]];
  }

  return v6;
}

@end