@interface VoiceOverCommandPickerController
- (VoiceOverCommandPickerPresenter)presenter;
- (id)makeSpecifiers;
- (void)_resetCommandButtonTapped:(id)a3;
- (void)_unassignCommandButtonTapped:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation VoiceOverCommandPickerController

- (id)makeSpecifiers
{
  v3 = objc_opt_new();
  v4 = OBJC_IVAR___PSViewController__specifier;
  v5 = [*&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandManager];
  v73 = v4;
  v6 = [*&self->AXUISettingsSearchableBaseListController_opaque[v4] voCommandResolver];
  v7 = PSListController_ptr;
  v74 = v5;
  v72 = v6;
  if ([v6 isHandwritingScreenreaderMode])
  {
    v8 = +[PSSpecifier emptyGroupSpecifier];
    [v3 addObject:v8];
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v9 = +[VOSCommandCategory handwriting];
    v10 = [v9 commands];

    obj = v10;
    v11 = [v10 countByEnumeratingWithState:&v88 objects:v95 count:16];
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
          if ([v74 availabilityForCommand:v15 withResolver:v6] != &dword_0 + 1)
          {
            v16 = v7[5];
            v17 = [*&self->AXUISettingsSearchableBaseListController_opaque[v73] voCommandContext];
            v18 = [v17 resolver];
            v19 = v16;
            v6 = v72;
            v20 = [v19 voCommandItem:v15 commandManager:v74 resolver:v18];

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

  if ([v6 isBSIScreenreaderMode])
  {
    v8 = +[PSSpecifier emptyGroupSpecifier];
    [v3 addObject:v8];
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v21 = +[VOSCommandCategory brailleScreenInput];
    v22 = [v21 commands];

    obj = v22;
    v23 = [v22 countByEnumeratingWithState:&v84 objects:v94 count:16];
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
          if ([v74 availabilityForCommand:v27 withResolver:v6] != &dword_0 + 1)
          {
            v28 = v7[5];
            v29 = [*&self->AXUISettingsSearchableBaseListController_opaque[v73] voCommandContext];
            v30 = [v29 resolver];
            v31 = v28;
            v6 = v72;
            v32 = [v31 voCommandItem:v27 commandManager:v74 resolver:v30];

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
        v35 = [v34 commands];
        if ([v35 count])
        {
          v70 = k;
          v36 = self;
          v37 = v7[5];
          v38 = [v34 localizedCategoryName];
          v39 = [v37 groupSpecifierWithName:v38];

          v40 = v3;
          v67 = v39;
          [v3 addObject:v39];
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v68 = v35;
          v41 = v35;
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
                if ([v5 availabilityForCommand:v46 withResolver:v6] != &dword_0 + 1)
                {
                  v47 = v7[5];
                  v48 = [*&v36->AXUISettingsSearchableBaseListController_opaque[v73] voCommandContext];
                  v49 = [v48 resolver];
                  v50 = v47;
                  v5 = v74;
                  v51 = [v50 voCommandItem:v46 commandManager:v74 resolver:v49];

                  v6 = v72;
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
          v35 = v68;
          v3 = v40;
          self = v36;
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

  v52 = [v7[5] emptyGroupSpecifier];

  [v3 addObject:v52];
  v53 = v7[5];
  v54 = settingsLocString(@"vo.reset.command", @"VoiceOverSettings");
  v55 = [v53 deleteButtonSpecifierWithName:v54 target:self action:"_resetCommandButtonTapped:"];
  resetCommandSpecifier = self->_resetCommandSpecifier;
  self->_resetCommandSpecifier = v55;

  [v3 addObject:self->_resetCommandSpecifier];
  v57 = [*&self->AXUISettingsSearchableBaseListController_opaque[v73] voCommandContext];
  v58 = [v57 command];

  if (v58)
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

- (void)_resetCommandButtonTapped:(id)a3
{
  v4 = [(VoiceOverCommandPickerController *)self presenter];
  v5 = [v4 userSelectedCommandBlock];

  if (v5)
  {
    v6 = OBJC_IVAR___PSViewController__specifier;
    v7 = [*&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandContext];
    v12 = [v7 command];

    v8 = [*&self->AXUISettingsSearchableBaseListController_opaque[v6] voCommandContext];
    v9 = [v8 gesture];

    v10 = [(VoiceOverCommandPickerController *)self presenter];
    v11 = [v10 userSelectedCommandBlock];
    (v11)[2](v11, v12, v9, 2);
  }
}

- (void)_unassignCommandButtonTapped:(id)a3
{
  v4 = [(VoiceOverCommandPickerController *)self presenter];
  v5 = [v4 userSelectedCommandBlock];

  if (v5)
  {
    v6 = OBJC_IVAR___PSViewController__specifier;
    v7 = [*&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandContext];
    v12 = [v7 command];

    v8 = [*&self->AXUISettingsSearchableBaseListController_opaque[v6] voCommandContext];
    v9 = [v8 gesture];

    v10 = [(VoiceOverCommandPickerController *)self presenter];
    v11 = [v10 userSelectedCommandBlock];
    (v11)[2](v11, v12, v9, 1);
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = *&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier];
  v8 = a5;
  v9 = a4;
  v10 = [v7 voCommandContext];
  v14 = [v10 command];

  v11 = [(VoiceOverCommandPickerController *)self specifierForIndexPath:v8];

  v12 = [v11 voCommandContext];
  v13 = [v12 command];

  [v9 setChecked:{objc_msgSend(v14, "isEqual:", v13)}];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  v8 = [(VoiceOverCommandPickerController *)self specifierForIndexPath:v7];
  v9 = v8;
  if (v8 == self->_unassignButtonSpecifier || v8 == self->_resetCommandSpecifier)
  {
    v22.receiver = self;
    v22.super_class = VoiceOverCommandPickerController;
    [(VoiceOverCommandPickerController *)&v22 tableView:v6 didSelectRowAtIndexPath:v7];
  }

  else
  {
    v10 = OBJC_IVAR___PSViewController__specifier;
    v11 = [*&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandContext];
    v12 = [v11 command];

    v13 = [*&self->AXUISettingsSearchableBaseListController_opaque[v10] voCommandContext];
    v14 = [v13 gesture];

    v15 = [(PSSpecifier *)v9 voCommandContext];
    v16 = [v15 command];

    v17 = [v16 isEqual:v12];
    v18 = [(VoiceOverCommandPickerController *)self presenter];
    v19 = [v18 userSelectedCommandBlock];

    if (v19)
    {
      v20 = [(VoiceOverCommandPickerController *)self presenter];
      v21 = [v20 userSelectedCommandBlock];
      (v21)[2](v21, v16, v14, v17);
    }
  }
}

- (VoiceOverCommandPickerPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end