@interface VoiceOverCommandPickerController
- (VoiceOverCommandPickerPresenter)presenter;
- (id)makeSpecifiers;
- (void)_resetCommandButtonTapped:(id)tapped;
- (void)_unassignCommandButtonTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation VoiceOverCommandPickerController

- (id)makeSpecifiers
{
  v3 = objc_opt_new();
  v4 = OBJC_IVAR___PSViewController__specifier;
  voCommandManager = [*&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandManager];
  v73 = v4;
  voCommandResolver = [*&self->AXUISettingsSearchableBaseListController_opaque[v4] voCommandResolver];
  v7 = PSListController_ptr;
  v74 = voCommandManager;
  v72 = voCommandResolver;
  if ([voCommandResolver isHandwritingScreenreaderMode])
  {
    v8 = +[PSSpecifier emptyGroupSpecifier];
    [v3 addObject:v8];
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v9 = +[VOSCommandCategory handwriting];
    commands = [v9 commands];

    obj = commands;
    v11 = [commands countByEnumeratingWithState:&v88 objects:v95 count:16];
    if (v11)
    {
      v12 = v11;
      v69 = v8;
      v75 = 0;
      v13 = *v89;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v89 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v88 + 1) + 8 * i);
          if ([v74 availabilityForCommand:v15 withResolver:voCommandResolver] != &dword_0 + 1)
          {
            v16 = v7[5];
            voCommandContext = [*&self->AXUISettingsSearchableBaseListController_opaque[v73] voCommandContext];
            resolver = [voCommandContext resolver];
            v19 = v16;
            voCommandResolver = v72;
            v20 = [v19 voCommandItem:v15 commandManager:v74 resolver:resolver];

            v7 = PSListController_ptr;
            [v3 addObject:v20];
            v75 = v20;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v88 objects:v95 count:16];
      }

      while (v12);
LABEL_22:
      v8 = v69;
      goto LABEL_46;
    }

LABEL_23:
    v75 = 0;
    goto LABEL_46;
  }

  if ([voCommandResolver isBSIScreenreaderMode])
  {
    v8 = +[PSSpecifier emptyGroupSpecifier];
    [v3 addObject:v8];
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v21 = +[VOSCommandCategory brailleScreenInput];
    commands2 = [v21 commands];

    obj = commands2;
    v23 = [commands2 countByEnumeratingWithState:&v84 objects:v94 count:16];
    if (v23)
    {
      v24 = v23;
      v69 = v8;
      v75 = 0;
      v25 = *v85;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v85 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v84 + 1) + 8 * j);
          if ([v74 availabilityForCommand:v27 withResolver:voCommandResolver] != &dword_0 + 1)
          {
            v28 = v7[5];
            voCommandContext2 = [*&self->AXUISettingsSearchableBaseListController_opaque[v73] voCommandContext];
            resolver2 = [voCommandContext2 resolver];
            v31 = v28;
            voCommandResolver = v72;
            v32 = [v31 voCommandItem:v27 commandManager:v74 resolver:resolver2];

            v7 = PSListController_ptr;
            [v3 addObject:v32];
            v75 = v32;
          }
        }

        v24 = [obj countByEnumeratingWithState:&v84 objects:v94 count:16];
      }

      while (v24);
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = +[VOSCommandCategory allCategories];
  v66 = [obj countByEnumeratingWithState:&v80 objects:v93 count:16];
  if (v66)
  {
    v75 = 0;
    v8 = 0;
    v65 = *v81;
    do
    {
      for (k = 0; k != v66; k = k + 1)
      {
        if (*v81 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v80 + 1) + 8 * k);
        commands3 = [v34 commands];
        if ([commands3 count])
        {
          v70 = k;
          selfCopy = self;
          v37 = v7[5];
          localizedCategoryName = [v34 localizedCategoryName];
          v39 = [v37 groupSpecifierWithName:localizedCategoryName];

          v40 = v3;
          v67 = v39;
          [v3 addObject:v39];
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v68 = commands3;
          v41 = commands3;
          v42 = [v41 countByEnumeratingWithState:&v76 objects:v92 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v77;
            v7 = PSListController_ptr;
            do
            {
              for (m = 0; m != v43; m = m + 1)
              {
                if (*v77 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                v46 = *(*(&v76 + 1) + 8 * m);
                if ([voCommandManager availabilityForCommand:v46 withResolver:voCommandResolver] != &dword_0 + 1)
                {
                  v47 = v7[5];
                  voCommandContext3 = [*&selfCopy->AXUISettingsSearchableBaseListController_opaque[v73] voCommandContext];
                  resolver3 = [voCommandContext3 resolver];
                  v50 = v47;
                  voCommandManager = v74;
                  v51 = [v50 voCommandItem:v46 commandManager:v74 resolver:resolver3];

                  voCommandResolver = v72;
                  v7 = PSListController_ptr;
                  [v40 addObject:v51];
                  v75 = v51;
                }
              }

              v43 = [v41 countByEnumeratingWithState:&v76 objects:v92 count:16];
            }

            while (v43);
          }

          else
          {
            v7 = PSListController_ptr;
          }

          v8 = v67;
          commands3 = v68;
          v3 = v40;
          self = selfCopy;
          k = v70;
        }
      }

      v66 = [obj countByEnumeratingWithState:&v80 objects:v93 count:16];
    }

    while (v66);
  }

  else
  {
    v75 = 0;
    v8 = 0;
  }

LABEL_46:

  emptyGroupSpecifier = [v7[5] emptyGroupSpecifier];

  [v3 addObject:emptyGroupSpecifier];
  v53 = v7[5];
  v54 = settingsLocString(@"vo.reset.command", @"VoiceOverSettings");
  v55 = [v53 deleteButtonSpecifierWithName:v54 target:self action:"_resetCommandButtonTapped:"];
  resetCommandSpecifier = self->_resetCommandSpecifier;
  self->_resetCommandSpecifier = v55;

  [v3 addObject:self->_resetCommandSpecifier];
  voCommandContext4 = [*&self->AXUISettingsSearchableBaseListController_opaque[v73] voCommandContext];
  command = [voCommandContext4 command];

  if (command)
  {
    v59 = v7[5];
    v60 = settingsLocString(@"vo.unassign.command", @"VoiceOverSettings");
    v61 = [v59 deleteButtonSpecifierWithName:v60 target:self action:"_unassignCommandButtonTapped:"];
    unassignButtonSpecifier = self->_unassignButtonSpecifier;
    self->_unassignButtonSpecifier = v61;

    [v3 addObject:self->_unassignButtonSpecifier];
  }

  [(VoiceOverCommandPickerController *)self setupLongTitleSpecifiers:v3];
  v63 = v3;

  return v3;
}

- (void)_resetCommandButtonTapped:(id)tapped
{
  presenter = [(VoiceOverCommandPickerController *)self presenter];
  userSelectedCommandBlock = [presenter userSelectedCommandBlock];

  if (userSelectedCommandBlock)
  {
    v6 = OBJC_IVAR___PSViewController__specifier;
    voCommandContext = [*&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandContext];
    command = [voCommandContext command];

    voCommandContext2 = [*&self->AXUISettingsSearchableBaseListController_opaque[v6] voCommandContext];
    gesture = [voCommandContext2 gesture];

    presenter2 = [(VoiceOverCommandPickerController *)self presenter];
    userSelectedCommandBlock2 = [presenter2 userSelectedCommandBlock];
    (userSelectedCommandBlock2)[2](userSelectedCommandBlock2, command, gesture, 2);
  }
}

- (void)_unassignCommandButtonTapped:(id)tapped
{
  presenter = [(VoiceOverCommandPickerController *)self presenter];
  userSelectedCommandBlock = [presenter userSelectedCommandBlock];

  if (userSelectedCommandBlock)
  {
    v6 = OBJC_IVAR___PSViewController__specifier;
    voCommandContext = [*&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandContext];
    command = [voCommandContext command];

    voCommandContext2 = [*&self->AXUISettingsSearchableBaseListController_opaque[v6] voCommandContext];
    gesture = [voCommandContext2 gesture];

    presenter2 = [(VoiceOverCommandPickerController *)self presenter];
    userSelectedCommandBlock2 = [presenter2 userSelectedCommandBlock];
    (userSelectedCommandBlock2)[2](userSelectedCommandBlock2, command, gesture, 1);
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v7 = *&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier];
  pathCopy = path;
  cellCopy = cell;
  voCommandContext = [v7 voCommandContext];
  command = [voCommandContext command];

  v11 = [(VoiceOverCommandPickerController *)self specifierForIndexPath:pathCopy];

  voCommandContext2 = [v11 voCommandContext];
  command2 = [voCommandContext2 command];

  [cellCopy setChecked:{objc_msgSend(command, "isEqual:", command2)}];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [(VoiceOverCommandPickerController *)self specifierForIndexPath:pathCopy];
  v9 = v8;
  if (v8 == self->_unassignButtonSpecifier || v8 == self->_resetCommandSpecifier)
  {
    v22.receiver = self;
    v22.super_class = VoiceOverCommandPickerController;
    [(VoiceOverCommandPickerController *)&v22 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }

  else
  {
    v10 = OBJC_IVAR___PSViewController__specifier;
    voCommandContext = [*&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandContext];
    command = [voCommandContext command];

    voCommandContext2 = [*&self->AXUISettingsSearchableBaseListController_opaque[v10] voCommandContext];
    gesture = [voCommandContext2 gesture];

    voCommandContext3 = [(PSSpecifier *)v9 voCommandContext];
    command2 = [voCommandContext3 command];

    v17 = [command2 isEqual:command];
    presenter = [(VoiceOverCommandPickerController *)self presenter];
    userSelectedCommandBlock = [presenter userSelectedCommandBlock];

    if (userSelectedCommandBlock)
    {
      presenter2 = [(VoiceOverCommandPickerController *)self presenter];
      userSelectedCommandBlock2 = [presenter2 userSelectedCommandBlock];
      (userSelectedCommandBlock2)[2](userSelectedCommandBlock2, command2, gesture, v17);
    }
  }
}

- (VoiceOverCommandPickerPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end