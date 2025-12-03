@interface VoiceOverGestureDirectionDetailController
- (VoiceOverGestureDirectionDetailController)init;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateTableCheckedSelection:(id)selection;
@end

@implementation VoiceOverGestureDirectionDetailController

- (VoiceOverGestureDirectionDetailController)init
{
  v11.receiver = self;
  v11.super_class = VoiceOverGestureDirectionDetailController;
  v2 = [(AccessibilityBridgeBaseController *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3032000000;
    v9[3] = __Block_byref_object_copy_;
    v9[4] = __Block_byref_object_dispose_;
    v4 = v2;
    v10 = v4;
    mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__VoiceOverGestureDirectionDetailController_init__block_invoke;
    v8[3] = &unk_278B90D48;
    v8[4] = v9;
    [mEMORY[0x277CE7E20] registerUpdateBlock:v8 forRetrieveSelector:sel_voiceOverNavigationDirectionMode withListener:v4];

    v6 = v4;
    _Block_object_dispose(v9, 8);
  }

  return v3;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"GestureDirectionMode" name:0];
    [v5 addObject:v6];
    v7 = MEMORY[0x277D3FAD8];
    v8 = settingsLocString(@"VOICEOVER_RTL_GESTURE_DIRECTION", @"VoiceOverSettings");
    v9 = [v7 preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v9 setProperty:&unk_284E7E570 forKey:@"GestureDirectionMode"];
    [v5 addObject:v9];
    v10 = MEMORY[0x277D3FAD8];
    v11 = settingsLocString(@"VOICEOVER_LTR_GESTURE_DIRECTION", @"VoiceOverSettings");
    v12 = [v10 preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v12 setProperty:&unk_284E7E588 forKey:@"GestureDirectionMode"];
    [v5 addObject:v12];
    v13 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = VoiceOverGestureDirectionDetailController;
  v5 = [(VoiceOverGestureDirectionDetailController *)&v12 tableView:view cellForRowAtIndexPath:path];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v7 = [accessibilityDomainAccessor objectForKey:@"VoiceOverNavigationDirectionMode"];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &unk_284E7E570;
  }

  specifier = [v5 specifier];
  v10 = [specifier propertyForKey:@"GestureDirectionMode"];

  if (v10)
  {
    [v5 setChecked:{objc_msgSend(v8, "isEqual:", v10)}];
  }

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = VoiceOverGestureDirectionDetailController;
  pathCopy = path;
  v8 = [(VoiceOverGestureDirectionDetailController *)&v12 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v8 specifier];
  v10 = [specifier propertyForKey:@"GestureDirectionMode"];

  if (v10)
  {
    [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v10 forKey:@"VoiceOverNavigationDirectionMode"];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  [(VoiceOverGestureDirectionDetailController *)self updateTableCheckedSelection:pathCopy];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"AXVoiceOverReloadNotification" object:0];
}

- (void)updateTableCheckedSelection:(id)selection
{
  selectionCopy = selection;
  v5 = *MEMORY[0x277D3FC60];
  v11 = selectionCopy;
  v6 = [*(&self->super.super.super.super.super.super.isa + v5) numberOfRowsInSection:{objc_msgSend(selectionCopy, "section")}];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:{objc_msgSend(v11, "section")}];
      v10 = [*(&self->super.super.super.super.super.super.isa + v5) cellForRowAtIndexPath:v9];
      [v10 setChecked:{objc_msgSend(v9, "isEqual:", v11)}];
    }
  }
}

@end