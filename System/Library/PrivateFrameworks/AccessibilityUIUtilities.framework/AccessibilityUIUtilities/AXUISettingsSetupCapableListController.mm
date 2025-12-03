@interface AXUISettingsSetupCapableListController
- (AXUISettingsSetupCapableListController)init;
- (AXUISettingsSetupCapableListController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableViewStyle;
- (void)dealloc;
- (void)filterBuddy:(id)buddy;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reload;
- (void)setAllSpecifiersUnsearchable:(id)unsearchable;
- (void)showController:(id)controller animate:(BOOL)animate;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AXUISettingsSetupCapableListController

- (AXUISettingsSetupCapableListController)init
{
  v4.receiver = self;
  v4.super_class = AXUISettingsSetupCapableListController;
  v2 = [(PSEditableListController *)&v4 init];
  if (v2)
  {
    [(AXUISettingsSetupCapableListController *)v2 setInSetup:AXProcessIsSetup()];
  }

  return v2;
}

- (void)dealloc
{
  AXUISettingsCleanUpWelcomeControllerTableViewObservations(self);
  v3.receiver = self;
  v3.super_class = AXUISettingsSetupCapableListController;
  [(AXUISettingsSetupCapableListController *)&v3 dealloc];
}

- (AXUISettingsSetupCapableListController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = AXUISettingsSetupCapableListController;
  v4 = [(AXUISettingsSetupCapableListController *)&v6 initWithNibName:name bundle:bundle];
  if (v4)
  {
    [(AXUISettingsSetupCapableListController *)v4 setInSetup:AXProcessIsSetup()];
  }

  return v4;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = AXUISettingsSetupCapableListController;
  [(AXUISettingsSetupCapableListController *)&v10 viewDidLoad];
  if (self->_inSetup)
  {
    v3 = sharedBFFStyle();
    backgroundColor = [v3 backgroundColor];
    view = [(AXUISettingsSetupCapableListController *)self view];
    [view setBackgroundColor:backgroundColor];

    v6 = sharedBFFStyle();
    backgroundColor2 = [v6 backgroundColor];
    [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x1E69C57C0]) setBackgroundColor:backgroundColor2];

    view2 = [(AXUISettingsSetupCapableListController *)self view];
    layer = [view2 layer];
    [layer setMasksToBounds:1];

    [(AXUISettingsSetupCapableListController *)self setExtendedLayoutIncludesOpaqueBars:1];
    [(AXUISettingsSetupCapableListController *)self setEdgesForExtendedLayout:1];
  }

  [(PSEditableListController *)self setEditingButtonHidden:1 animated:0];
}

- (void)reload
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x1E69C57B8]);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = *MEMORY[0x1E69C5820];
    v8 = MEMORY[0x1E695E118];
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * v9++) setObject:v8 forKeyedSubscript:v7];
      }

      while (v5 != v9);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10.receiver = self;
  v10.super_class = AXUISettingsSetupCapableListController;
  [(AXUISettingsSetupCapableListController *)&v10 reload];
}

- (void)filterBuddy:(id)buddy
{
  v19 = *MEMORY[0x1E69E9840];
  buddyCopy = buddy;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(AXUISettingsSetupCapableListController *)self inSetup])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = buddyCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v11 propertyForKey:{@"inBuddySetup", v14}];
          bOOLValue = [v12 BOOLValue];

          if ((bOOLValue & 1) == 0)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [v6 removeObjectsInArray:v5];
  }
}

- (void)setAllSpecifiersUnsearchable:(id)unsearchable
{
  v15 = *MEMORY[0x1E69E9840];
  unsearchableCopy = unsearchable;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [unsearchableCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    v7 = *MEMORY[0x1E69C5978];
    v8 = MEMORY[0x1E695E110];
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(unsearchableCopy);
        }

        [*(*(&v10 + 1) + 8 * v9++) setProperty:v8 forKey:v7];
      }

      while (v5 != v9);
      v5 = [unsearchableCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ((AXUISettingsHandleWelcomeControllerTableViewUpdate(self, pathCopy, objectCopy) & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = AXUISettingsSetupCapableListController;
    [(AXUISettingsSetupCapableListController *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(AXUISettingsSetupCapableListController *)self isEditing])
  {
    v11.receiver = self;
    v11.super_class = AXUISettingsSetupCapableListController;
    v8 = [(PSEditableListController *)&v11 tableView:viewCopy willSelectRowAtIndexPath:pathCopy];
  }

  else
  {
    v8 = pathCopy;
  }

  v9 = v8;

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(AXUISettingsSetupCapableListController *)self indexForIndexPath:pathCopy];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8;
    if (([(AXUISettingsSetupCapableListController *)self isShowingSetupController]& 1) == 0)
    {
      if ([(AXUISettingsSetupCapableListController *)self inSetup])
      {
        v10 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x1E69C57B8]) objectAtIndex:v9];
        if (*&v10[*MEMORY[0x1E69C57C8]] != 2)
        {
          v11 = 0;
LABEL_22:

          goto LABEL_12;
        }

        v11 = [(AXUISettingsSetupCapableListController *)self selectSpecifier:v10];
        if (!v11)
        {
LABEL_19:
          if ([v10 controllerLoadAction])
          {
            indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
            [viewCopy deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        null = [MEMORY[0x1E695DFB0] null];
        if (v11 != null)
        {
          navigationController = [(AXUISettingsSetupCapableListController *)self navigationController];
          topViewController = [navigationController topViewController];
          if (topViewController == self)
          {
            v18 = [v11 conformsToProtocol:&unk_1F40A2850];

            if (v18)
            {
              goto LABEL_19;
            }

            goto LABEL_16;
          }

          v22 = navigationController;
          navigationController2 = [(AXUISettingsSetupCapableListController *)self navigationController];
          topViewController2 = [navigationController2 topViewController];
          childViewControllers = [topViewController2 childViewControllers];
          if ([childViewControllers containsObject:self])
          {
            v21 = [v11 conformsToProtocol:&unk_1F40A2850];

            if (v21)
            {
              goto LABEL_19;
            }

LABEL_16:
            name = [v10 name];
            indexPathForSelectedRow = AXUISettingsCreatePreferencesController(v11, name);

            [(AXUISettingsSetupCapableListController *)self showController:indexPathForSelectedRow];
LABEL_21:

            goto LABEL_13;
          }
        }

        goto LABEL_19;
      }
    }
  }

  v11 = 0;
LABEL_12:
  v23.receiver = self;
  v23.super_class = AXUISettingsSetupCapableListController;
  [(AXUISettingsSetupCapableListController *)&v23 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
LABEL_13:
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(PSEditableListController *)self editable])
  {
    v10.receiver = self;
    v10.super_class = AXUISettingsSetupCapableListController;
    v8 = [(PSEditableListController *)&v10 tableView:viewCopy editingStyleForRowAtIndexPath:pathCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)showController:(id)controller animate:(BOOL)animate
{
  animateCopy = animate;
  controllerCopy = controller;
  if (![controllerCopy conformsToProtocol:&unk_1F40A2850] || (v7 = controllerCopy, objc_msgSend(v7, "setSetupMode:", -[AXUISettingsSetupCapableListController inSetup](self, "inSetup")), v8 = objc_msgSend(v7, "presentWithController:", self), v7, (v8 & 1) == 0))
  {
    v9.receiver = self;
    v9.super_class = AXUISettingsSetupCapableListController;
    [(AXUISettingsSetupCapableListController *)&v9 showController:controllerCopy animate:animateCopy];
  }
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = AXUISettingsSetupCapableListController;
  [(AXUISettingsSetupCapableListController *)&v12 viewDidLayoutSubviews];
  if ([(AXUISettingsSetupCapableListController *)self inSetup])
  {
    view = [(AXUISettingsSetupCapableListController *)self view];
    [view bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x1E69C57C0]) setFrame:{v5, v7, v9, v11}];
    AXPerformSafeBlock();
  }
}

- (int64_t)tableViewStyle
{
  if ([(AXUISettingsSetupCapableListController *)self inSetup])
  {
    return 2;
  }

  v4.receiver = self;
  v4.super_class = AXUISettingsSetupCapableListController;
  return [(AXUISettingsSetupCapableListController *)&v4 tableViewStyle];
}

@end