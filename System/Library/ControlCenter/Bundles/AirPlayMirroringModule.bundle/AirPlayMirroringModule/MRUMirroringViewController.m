@interface MRUMirroringViewController
- (BOOL)isConnectedToExternalDisplay;
- (id)leadingImageForMenuItem:(id)a3;
- (void)mirroringController:(id)a3 didChangeOutputDevice:(id)a4;
- (void)mirroringController:(id)a3 didUpdateBusyIdenifiers:(id)a4;
- (void)selectOutputDevice:(id)a3;
- (void)setContentRenderingMode:(unint64_t)a3;
- (void)stopMirroringDismissOnComplete:(BOOL)a3;
- (void)updateFooter;
- (void)updateGlyphPackageDescription;
- (void)updateItems;
- (void)updateState;
- (void)viewDidLoad;
- (void)willTransitionToExpandedContentMode:(BOOL)a3;
@end

@implementation MRUMirroringViewController

- (void)viewDidLoad
{
  v28[1] = *MEMORY[0x29EDCA608];
  v21.receiver = self;
  v21.super_class = MRUMirroringViewController;
  [(CCUIMenuModuleViewController *)&v21 viewDidLoad];
  [(MRUMirroringViewController *)self updateGlyphPackageDescription];
  v3 = objc_opt_self();
  v28[0] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v28 count:1];
  v5 = [(MRUMirroringViewController *)self registerForTraitChanges:v4 withAction:sel_updateGlyphPackageDescription];

  v6 = [MEMORY[0x29EDC5910] screenMirroring];
  [(CCUIMenuModuleViewController *)self setTitle:v6];

  [(CCUIMenuModuleViewController *)self setMinimumMenuItems:4];
  [(CCUIMenuModuleViewController *)self setVisibleMenuItems:0.0];
  [(CCUIMenuModuleViewController *)self setIndentation:2];
  [(CCUIMenuModuleViewController *)self setUseTrailingCheckmarkLayout:1];
  v7 = objc_alloc_init(MEMORY[0x29EDC5908]);
  controller = self->_controller;
  self->_controller = v7;

  v9 = objc_alloc_init(MEMORY[0x29EDC11B0]);
  displayMonitor = self->_displayMonitor;
  self->_displayMonitor = v9;

  v11 = _MRLogCategoryMirroringView();
  v12 = os_signpost_id_generate(v11);

  v13 = _MRLogCategoryMirroringView();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v15 = [(FBSDisplayMonitor *)self->_displayMonitor mainConfiguration];
    v16 = [v15 deviceName];
    v17 = [(FBSDisplayMonitor *)self->_displayMonitor mainConfiguration];
    v18 = [v17 hardwareIdentifier];
    v19 = [(FBSDisplayMonitor *)self->_displayMonitor connectedIdentities];
    *buf = 138478339;
    v23 = v16;
    v24 = 2114;
    v25 = v18;
    v26 = 2112;
    v27 = v19;
    _os_signpost_emit_with_name_impl(&dword_29C950000, v14, OS_SIGNPOST_EVENT, v12, "MirrorModuleViewDidLoad", "EVENT DETAILS || displayMonitor (mainConfiguration) - deviceName:%{private}@, hardwareID:%{public}@}, connectedIdentities:%@", buf, 0x20u);
  }

  v20 = *MEMORY[0x29EDCA608];
}

- (void)setContentRenderingMode:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = MRUMirroringViewController;
  [(CCUIButtonModuleViewController *)&v4 setContentRenderingMode:a3];
  [(MRUMirroringViewController *)self updateState];
}

- (void)willTransitionToExpandedContentMode:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = MRUMirroringViewController;
  [(CCUIMenuModuleViewController *)&v7 willTransitionToExpandedContentMode:?];
  [(MRUMirroringViewController *)self updateState];
  controller = self->_controller;
  if (v3)
  {
    [(MRUMirroringController *)controller startDetailedDiscovery];
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = sub_29C951594;
    v6[3] = &unk_29F336670;
    v6[4] = self;
    [MEMORY[0x29EDC7DA0] performWithoutAnimation:v6];
  }

  else
  {
    [(MRUMirroringController *)controller stopDetailedDiscovery];
    [(CCUIMenuModuleViewController *)self setBusy:0];
  }
}

- (id)leadingImageForMenuItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x29EDC7AD0] configurationWithPointSize:4 weight:3 scale:17.0];
    v5 = MEMORY[0x29EDC7AC8];
    v6 = [v3 symbolName];
    v7 = [v5 _systemImageNamed:v6];

    v8 = [v7 imageWithConfiguration:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)mirroringController:(id)a3 didChangeOutputDevice:(id)a4
{
  [(MRUMirroringViewController *)self updateState:a3];
  [(MRUMirroringViewController *)self updateItems];

  MEMORY[0x2A1C70FE8](self, sel_updateFooter);
}

- (void)mirroringController:(id)a3 didUpdateBusyIdenifiers:(id)a4
{
  if ([(CCUIButtonModuleViewController *)self isExpanded:a3])
  {
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = sub_29C951778;
    v5[3] = &unk_29F336670;
    v5[4] = self;
    [MEMORY[0x29EDC7DA0] performWithoutAnimation:v5];
  }
}

- (void)updateItems
{
  v62 = *MEMORY[0x29EDCA608];
  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    v37 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v34 = [(MRUMirroringController *)self->_controller availableOutputDevices];
    v3 = [v34 msv_filter:&unk_2A23E3258];
    v48[0] = MEMORY[0x29EDCA5F8];
    v48[1] = 3221225472;
    v48[2] = sub_29C951DF8;
    v48[3] = &unk_29F3366B8;
    v33 = v3;
    v49 = v33;
    v32 = [v34 msv_filter:v48];
    if (-[MRUMirroringViewController showMoreExpanded](self, "showMoreExpanded") || ![v33 count])
    {
      v4 = [v33 arrayByAddingObjectsFromArray:v32];
    }

    else
    {
      v4 = v33;
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v4;
    v38 = [obj countByEnumeratingWithState:&v44 objects:v61 count:16];
    if (v38)
    {
      v36 = *v45;
      do
      {
        v5 = 0;
        do
        {
          if (*v45 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v44 + 1) + 8 * v5);
          v7 = [(MRUMirroringController *)self->_controller busyIdentifiers];
          v8 = [v6 deviceID];
          v9 = [v7 containsObject:v8];

          v10 = [(MRUMirroringController *)self->_controller selectedOutputDevice];
          v11 = [v6 isEqual:v10];

          objc_initWeak(location, self);
          v12 = [MRUMirroringMenuModuleItem alloc];
          v13 = [v6 name];
          v14 = [v6 deviceID];
          v40[0] = MEMORY[0x29EDCA5F8];
          v40[1] = 3221225472;
          v40[2] = sub_29C951E1C;
          v40[3] = &unk_29F3366E0;
          objc_copyWeak(&v41, location);
          v42 = v11;
          v43 = v9;
          v40[4] = v6;
          v15 = [(CCUIMenuModuleItem *)v12 initWithTitle:v13 identifier:v14 handler:v40];

          v16 = [MEMORY[0x29EDC5908] symbolNameForOutputDevice:v6];
          [(MRUMirroringMenuModuleItem *)v15 setSymbolName:v16];

          [(CCUIMenuModuleItem *)v15 setBusy:v9];
          [(CCUIMenuModuleItem *)v15 setSelected:v11];
          [v37 addObject:v15];

          objc_destroyWeak(&v41);
          objc_destroyWeak(location);
          ++v5;
        }

        while (v38 != v5);
        v38 = [obj countByEnumeratingWithState:&v44 objects:v61 count:16];
      }

      while (v38);
    }

    if (![(MRUMirroringViewController *)self showMoreExpanded])
    {
      v17 = [v34 count];
      if (v17 > [obj count])
      {
        v18 = [MRUMirroringMenuModuleItem alloc];
        v19 = [MEMORY[0x29EDC5910] routingFooterShowMoreTitle];
        v39[0] = MEMORY[0x29EDCA5F8];
        v39[1] = 3221225472;
        v39[2] = sub_29C951E80;
        v39[3] = &unk_29F336708;
        v39[4] = self;
        v20 = [(CCUIMenuModuleItem *)v18 initWithTitle:v19 identifier:@"showmore" handler:v39];
        [v37 addObject:v20];
      }
    }

    [(CCUIMenuModuleViewController *)self setMenuItems:v37];
    -[CCUIMenuModuleViewController setBusy:](self, "setBusy:", [v37 count] == 0);
    v21 = _MRLogCategoryMirroringView();
    v22 = os_signpost_id_generate(v21);

    v23 = _MRLogCategoryMirroringView();
    v24 = v23;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v37, "count")}];
      v26 = [v37 valueForKey:@"symbolName"];
      v27 = [v37 valueForKey:@"title"];
      v28 = [v37 valueForKey:@"identifier"];
      v29 = [v37 valueForKey:@"busy"];
      v30 = [v37 valueForKey:@"selected"];
      *location = 138544643;
      *&location[4] = v25;
      v51 = 2114;
      v52 = v26;
      v53 = 2113;
      v54 = v27;
      v55 = 2114;
      v56 = v28;
      v57 = 2114;
      v58 = v29;
      v59 = 2114;
      v60 = v30;
      _os_signpost_emit_with_name_impl(&dword_29C950000, v24, OS_SIGNPOST_EVENT, v22, "UpdatedMirrorMenuItems", "EVENT DETAILS || menuItems - count:%{public}@, items - symbolName:%{public}@, title:%{private}@, identifier:%{public}@, isBusy:%{public}@, isSelected:%{public}@", location, 0x3Eu);
    }
  }

  v31 = *MEMORY[0x29EDCA608];
}

- (void)updateFooter
{
  location[1] = *MEMORY[0x29EDCA608];
  v3 = [(MRUMirroringController *)self->_controller selectedOutputDevice];

  if (v3)
  {
    objc_initWeak(location, self);
    v4 = [MEMORY[0x29EDC5910] stopMirroring];
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = sub_29C952128;
    v15[3] = &unk_29F336730;
    objc_copyWeak(&v16, location);
    [(CCUIMenuModuleViewController *)self setFooterButtonTitle:v4 handler:v15];

    v5 = _MRLogCategoryMirroringView();
    v6 = os_signpost_id_generate(v5);

    v7 = _MRLogCategoryMirroringView();
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v9 = [(CCUIMenuModuleViewController *)self hasFooterButton];
      *buf = 67109120;
      v18 = v9;
      _os_signpost_emit_with_name_impl(&dword_29C950000, v8, OS_SIGNPOST_EVENT, v6, "SetMirrorModuleFooterButton", "EVENT DETAILS || hasFooterButton:%{BOOL}u", buf, 8u);
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(location);
  }

  else
  {
    [(CCUIMenuModuleViewController *)self removeFooterButton];
    v10 = _MRLogCategoryMirroringView();
    v11 = os_signpost_id_generate(v10);

    v12 = _MRLogCategoryMirroringView();
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LODWORD(location[0]) = 67109120;
      HIDWORD(location[0]) = [(CCUIMenuModuleViewController *)self hasFooterButton];
      _os_signpost_emit_with_name_impl(&dword_29C950000, v13, OS_SIGNPOST_EVENT, v11, "RemovedMirrorModuleFooterButton", "EVENT DETAILS || hasFooterButton:%{BOOL}u", location, 8u);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (void)updateGlyphPackageDescription
{
  v3 = [(MRUMirroringViewController *)self traitCollection];
  v4 = [v3 accessibilityContrast];
  v5 = @"Mirroring";
  if (v4 == 1)
  {
    v5 = @"Mirroring_IC";
  }

  v6 = v5;

  v7 = [MEMORY[0x29EDC58E8] packageDescriptionWithName:v6];

  [(CCUIMenuModuleViewController *)self setGlyphPackageDescription:v7];
}

- (void)updateState
{
  v33 = *MEMORY[0x29EDCA608];
  if ([(CCUIButtonModuleViewController *)self contentRenderingMode]== 1)
  {
    v3 = [(CCUIButtonModuleViewController *)self buttonView];
    [v3 setGlyphState:@"off"];

    [(CCUIButtonModuleViewController *)self setSelected:0];
    v4 = _MRLogCategoryMirroringView();
    v5 = os_signpost_id_generate(v4);

    v6 = _MRLogCategoryMirroringView();
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v8 = [(CCUIButtonModuleViewController *)self isExpanded];
      v9 = [(CCUIButtonModuleViewController *)self isSelected];
      v10 = [(CCUIButtonModuleViewController *)self buttonView];
      v11 = [v10 glyphState];
      v27 = 67109634;
      v28 = v8;
      v29 = 1024;
      v30 = v9;
      v31 = 2114;
      v32 = v11;
      v12 = "UpdatedMirroringModuleStateModePreview";
LABEL_15:
      _os_signpost_emit_with_name_impl(&dword_29C950000, v7, OS_SIGNPOST_EVENT, v5, v12, "EVENT DETAILS || isModuleExpanded:%{BOOL}u, isModuleSelected:%{BOOL}u, glyphState:%{public}@", &v27, 0x18u);
    }
  }

  else if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    [(CCUIButtonModuleViewController *)self setSelected:0];
    v13 = [(CCUIButtonModuleViewController *)self buttonView];
    [v13 setGlyphState:@"off"];

    v14 = _MRLogCategoryMirroringView();
    v5 = os_signpost_id_generate(v14);

    v15 = _MRLogCategoryMirroringView();
    v7 = v15;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v16 = [(CCUIButtonModuleViewController *)self isExpanded];
      v17 = [(CCUIButtonModuleViewController *)self isSelected];
      v10 = [(CCUIButtonModuleViewController *)self buttonView];
      v11 = [v10 glyphState];
      v27 = 67109634;
      v28 = v16;
      v29 = 1024;
      v30 = v17;
      v31 = 2114;
      v32 = v11;
      v12 = "UpdatedMirroringModuleStateIsExpanded";
      goto LABEL_15;
    }
  }

  else
  {
    v18 = [(MRUMirroringController *)self->_controller selectedOutputDevice];
    [(CCUIButtonModuleViewController *)self setSelected:v18 != 0];

    v19 = [(MRUMirroringController *)self->_controller selectedOutputDevice];
    if (v19)
    {
      v20 = @"on";
    }

    else
    {
      v20 = @"off";
    }

    v21 = [(CCUIButtonModuleViewController *)self buttonView];
    [v21 setGlyphState:v20];

    v22 = _MRLogCategoryMirroringView();
    v5 = os_signpost_id_generate(v22);

    v23 = _MRLogCategoryMirroringView();
    v7 = v23;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v24 = [(CCUIButtonModuleViewController *)self isExpanded];
      v25 = [(CCUIButtonModuleViewController *)self isSelected];
      v10 = [(CCUIButtonModuleViewController *)self buttonView];
      v11 = [v10 glyphState];
      v27 = 67109634;
      v28 = v24;
      v29 = 1024;
      v30 = v25;
      v31 = 2114;
      v32 = v11;
      v12 = "UpdatedMirroringModuleState";
      goto LABEL_15;
    }
  }

  v26 = *MEMORY[0x29EDCA608];
}

- (void)selectOutputDevice:(id)a3
{
  v12 = a3;
  if ([(MRUMirroringViewController *)self isConnectedToExternalDisplay]&& ([(MRUMirroringController *)self->_controller selectedOutputDevice], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = MEMORY[0x29EDC7928];
    v6 = [MEMORY[0x29EDC5910] airPlayErrorTitle];
    v7 = [MEMORY[0x29EDC5910] airplayErrorExternalDisplay];
    v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

    v9 = MEMORY[0x29EDC7920];
    v10 = [MEMORY[0x29EDC5910] ok];
    v11 = [v9 actionWithTitle:v10 style:0 handler:&unk_2A23E3278];
    [v8 addAction:v11];

    [(MRUMirroringViewController *)self showViewController:v8 sender:self];
  }

  else
  {
    [(MRUMirroringController *)self->_controller startMirroringToOutputDevice:v12 completion:0];
  }
}

- (void)stopMirroringDismissOnComplete:(BOOL)a3
{
  objc_initWeak(&location, self);
  controller = self->_controller;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = sub_29C9527A4;
  v6[3] = &unk_29F336778;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  [(MRUMirroringController *)controller stopMirroringWithCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (BOOL)isConnectedToExternalDisplay
{
  v14 = *MEMORY[0x29EDCA608];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(FBSDisplayMonitor *)self->_displayMonitor connectedIdentities];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isExternal] && objc_msgSend(v6, "connectionType") == 1)
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

@end