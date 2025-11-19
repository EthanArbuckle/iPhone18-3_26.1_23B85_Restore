@interface AXSystemActionPickerController
- (AXSystemActionPickerController)init;
- (AXSystemActionPickerControllerDelegate)delegate;
- (id)prependedTopIcons;
- (id)specifiers;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AXSystemActionPickerController

- (id)prependedTopIcons
{
  v4[0] = @"__NONE__";
  v4[1] = AXAssistiveTouchIconTypeTripleClick;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (void)dealloc
{
  v3 = +[AXSiriShortcutsManager sharedManager];
  [v3 unregisterShortcutsDidChangeBlock:self->_siriShortcutToken];

  v4.receiver = self;
  v4.super_class = AXSystemActionPickerController;
  [(AXSystemActionPickerController *)&v4 dealloc];
}

- (AXSystemActionPickerController)init
{
  v10.receiver = self;
  v10.super_class = AXSystemActionPickerController;
  v2 = [(AXSystemActionPickerController *)&v10 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[AXSiriShortcutsManager sharedManager];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __38__AXSystemActionPickerController_init__block_invoke;
    v7[3] = &unk_256718;
    objc_copyWeak(&v8, &location);
    v4 = [v3 registerShortcutsDidChangeBlock:v7];
    siriShortcutToken = v2->_siriShortcutToken;
    v2->_siriShortcutToken = v4;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __38__AXSystemActionPickerController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [(AssistiveTouchCustomizeBaseActionPickerController *)self iconSpecifiers];
    [v5 addObjectsFromArray:v6];

    v7 = *&self->super.AXUISettingsBaseListController_opaque[v3];
    *&self->super.AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->super.AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)loadView
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __42__AXSystemActionPickerController_loadView__block_invoke;
  v4[3] = &unk_257E50;
  objc_copyWeak(&v5, &location);
  [(AssistiveTouchCustomizeBaseActionPickerController *)self setIconFilter:v4];
  v3.receiver = self;
  v3.super_class = AXSystemActionPickerController;
  [(AssistiveTouchCustomizeBaseActionPickerController *)&v3 loadView];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

id __42__AXSystemActionPickerController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 delegate];
    v9 = [v8 supportsIconType:v3];
  }

  else
  {
    v7 = AXSystemActionIconTypes();
    if ([v7 containsObject:v3])
    {
      v9 = &dword_0 + 1;
    }

    else
    {
      v9 = [v3 hasPrefix:AXASTSiriShortcutPrefixName];
    }
  }

  return v9;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(AXSystemActionPickerController *)self delegate];

  if (v5)
  {
    v6 = [(AXSystemActionPickerController *)self delegate];
    v7 = [v6 actionForActionPickerController:self];
    [(AssistiveTouchCustomizeBaseActionPickerController *)self setSelectedPopoverIcon:v7];
  }

  v8.receiver = self;
  v8.super_class = AXSystemActionPickerController;
  [(AXSystemActionPickerController *)&v8 viewWillAppear:v3];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = AXSystemActionPickerController;
  v6 = a4;
  v7 = a3;
  [(AXSystemActionPickerController *)&v11 tableView:v7 didSelectRowAtIndexPath:v6];
  [(AssistiveTouchCustomizeBaseActionPickerController *)self astTableView:v7 didSelectRowAtIndexPath:v6, v11.receiver, v11.super_class];

  v8 = [(AssistiveTouchCustomizeBaseActionPickerController *)self selectedPopoverIcon];
  v9 = [(AXSystemActionPickerController *)self delegate];

  if (v9)
  {
    v10 = [(AXSystemActionPickerController *)self delegate];
    [v10 actionPickerController:self didSelectAction:v8];
  }
}

- (AXSystemActionPickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end