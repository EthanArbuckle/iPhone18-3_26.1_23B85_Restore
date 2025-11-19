@interface PSSpecifier
+ (id)voCommandItem:(id)a3 commandManager:(id)a4 resolver:(id)a5;
+ (id)voCommandSubmenuWithTitle:(id)a3 childViewControllerClass:(Class)a4 command:(id)a5 commandManager:(id)a6 resolver:(id)a7;
+ (id)voGenericSubmenuWithTitle:(id)a3 childViewControllerClass:(Class)a4 commandManager:(id)a5 resolver:(id)a6;
+ (id)voGestureItem:(id)a3 commandManager:(id)a4 resolver:(id)a5;
+ (id)voKeyboardShortcutBindingItem:(id)a3 commandManager:(id)a4 resolver:(id)a5;
+ (id)voKeyboardShortcutItem:(id)a3 commandManager:(id)a4 resolver:(id)a5;
+ (id)voQuickNavShortcutItem:(id)a3 commandManager:(id)a4 resolver:(id)a5;
+ (id)voSubmenuForCommandCategory:(id)a3 commandManager:(id)a4 resolver:(id)a5;
- (BOOL)ax_assetDeleteButtonHidden;
- (BOOL)ax_assetDownloadButtonHidden;
- (BOOL)isCaptionProfile;
- (BOOL)isEditableCaptionProfile;
- (VOSCommandManager)voCommandManager;
- (VOSCommandResolver)voCommandResolver;
- (int64_t)ax_assetDownloadBytesExpected;
- (int64_t)ax_assetDownloadBytesReceived;
- (int64_t)ax_assetState;
- (int64_t)ax_assetUnarchivedFileSize;
- (unint64_t)voBindingAvailability;
- (void)_axApplyGraphicIconNamed:(id)a3;
- (void)ax_applyCustomAccessibilityGraphicIconNamed:(id)a3;
- (void)ax_applyPredefinedGraphicIconNamed:(id)a3;
- (void)setAx_assetDeleteButtonHidden:(BOOL)a3;
- (void)setAx_assetDeleteButtonTapHandler:(id)a3;
- (void)setAx_assetDownloadButtonHidden:(BOOL)a3;
- (void)setAx_assetDownloadButtonTapHandler:(id)a3;
- (void)setAx_assetDownloadBytesExpected:(int64_t)a3;
- (void)setAx_assetDownloadBytesReceived:(int64_t)a3;
- (void)setAx_assetState:(int64_t)a3;
- (void)setAx_assetUnarchivedFileSize:(int64_t)a3;
@end

@implementation PSSpecifier

- (int64_t)ax_assetState
{
  v2 = [(PSSpecifier *)self propertyForKey:@"ax_AssetState"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setAx_assetState:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(PSSpecifier *)self setProperty:v4 forKey:@"ax_AssetState"];
}

- (int64_t)ax_assetDownloadBytesReceived
{
  v2 = [(PSSpecifier *)self propertyForKey:@"ax_assetDownloadBytesReceived"];
  v3 = [v2 longLongValue];

  return v3;
}

- (void)setAx_assetDownloadBytesReceived:(int64_t)a3
{
  v4 = [NSNumber numberWithLongLong:a3];
  [(PSSpecifier *)self setProperty:v4 forKey:@"ax_assetDownloadBytesReceived"];
}

- (int64_t)ax_assetDownloadBytesExpected
{
  v2 = [(PSSpecifier *)self propertyForKey:@"ax_assetDownloadBytesExpected"];
  v3 = [v2 longLongValue];

  return v3;
}

- (void)setAx_assetDownloadBytesExpected:(int64_t)a3
{
  v4 = [NSNumber numberWithLongLong:a3];
  [(PSSpecifier *)self setProperty:v4 forKey:@"ax_assetDownloadBytesExpected"];
}

- (int64_t)ax_assetUnarchivedFileSize
{
  v2 = [(PSSpecifier *)self propertyForKey:@"ax_assetUnarchivedFileSize"];
  v3 = [v2 longLongValue];

  return v3;
}

- (void)setAx_assetUnarchivedFileSize:(int64_t)a3
{
  v4 = [NSNumber numberWithLongLong:a3];
  [(PSSpecifier *)self setProperty:v4 forKey:@"ax_assetUnarchivedFileSize"];
}

- (void)setAx_assetDownloadButtonTapHandler:(id)a3
{
  v4 = objc_retainBlock(a3);
  [(PSSpecifier *)self setProperty:v4 forKey:@"ax_assetDownloadButtonTapHandler"];
}

- (BOOL)ax_assetDownloadButtonHidden
{
  v2 = [(PSSpecifier *)self propertyForKey:@"ax_assetDownloadButtonHidden"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setAx_assetDownloadButtonHidden:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  [(PSSpecifier *)self setProperty:v4 forKey:@"ax_assetDownloadButtonHidden"];
}

- (void)setAx_assetDeleteButtonTapHandler:(id)a3
{
  v4 = objc_retainBlock(a3);
  [(PSSpecifier *)self setProperty:v4 forKey:@"ax_assetDeleteButtonTapHandler"];
}

- (BOOL)ax_assetDeleteButtonHidden
{
  v2 = [(PSSpecifier *)self propertyForKey:@"ax_assetDeleteButtonHidden"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setAx_assetDeleteButtonHidden:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  [(PSSpecifier *)self setProperty:v4 forKey:@"ax_assetDeleteButtonHidden"];
}

- (BOOL)isCaptionProfile
{
  v2 = [(PSSpecifier *)self propertyForKey:@"IsCaptionProfile"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isEditableCaptionProfile
{
  v3 = [(PSSpecifier *)self propertyForKey:@"IsCaptionProfile"];
  v4 = [v3 BOOLValue];

  if (!v4)
  {
    return 0;
  }

  v5 = [(PSSpecifier *)self propertyForKey:@"CaptionProfileID"];
  v6 = MACaptionAppearancePrefIsProfileEditable() != 0;

  return v6;
}

- (void)_axApplyGraphicIconNamed:(id)a3
{
  v4 = PSLazyIconLoading;
  v5 = a3;
  [(PSSpecifier *)self setObject:&__kCFBooleanTrue forKeyedSubscript:v4];
  [(PSSpecifier *)self setObject:v5 forKeyedSubscript:PSIconUTTypeIdentifierKey];
}

- (void)ax_applyCustomAccessibilityGraphicIconNamed:(id)a3
{
  v4 = [NSString stringWithFormat:@"com.apple.AccessibilityUIServer.%@", a3];
  [(PSSpecifier *)self _axApplyGraphicIconNamed:v4];
}

- (void)ax_applyPredefinedGraphicIconNamed:(id)a3
{
  v4 = [NSString stringWithFormat:@"com.apple.graphic-icon.%@", a3];
  [(PSSpecifier *)self _axApplyGraphicIconNamed:v4];
}

- (VOSCommandManager)voCommandManager
{
  v2 = [(PSSpecifier *)self voCommandContext];
  v3 = [v2 commandManager];

  return v3;
}

+ (id)voGenericSubmenuWithTitle:(id)a3 childViewControllerClass:(Class)a4 commandManager:(id)a5 resolver:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = [PSSpecifier preferenceSpecifierNamed:a3 target:a1 set:0 get:0 detail:a4 cell:2 edit:0];
  v13 = [VOCommandContext genericContextWithCommandManager:v11 resolver:v10];

  [v12 setVoCommandContext:v13];

  return v12;
}

+ (id)voCommandSubmenuWithTitle:(id)a3 childViewControllerClass:(Class)a4 command:(id)a5 commandManager:(id)a6 resolver:(id)a7
{
  v11 = a3;
  v12 = [VOCommandContext commandContextWithCommand:a5 commandManager:a6 resolver:a7];
  v13 = [PSSpecifier preferenceSpecifierNamed:v11 target:v12 set:0 get:"gestureDescription:" detail:a4 cell:2 edit:0];

  [v13 setProperty:&__kCFBooleanFalse forKey:PSSpecifierIsSearchableKey];
  [v13 setVoCommandContext:v12];

  return v13;
}

+ (id)voSubmenuForCommandCategory:(id)a3 commandManager:(id)a4 resolver:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 localizedCategoryName];
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:a1 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  v13 = [VOCommandContext commandCategoryContextWithCategory:v10 commandManager:v9 resolver:v8];

  [v12 setVoCommandContext:v13];

  return v12;
}

+ (id)voCommandItem:(id)a3 commandManager:(id)a4 resolver:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 localizedName];
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:a1 set:0 get:0 detail:0 cell:3 edit:0];

  v13 = [VOCommandContext commandContextWithCommand:v10 commandManager:v9 resolver:v8];

  [v12 setVoCommandContext:v13];

  return v12;
}

+ (id)voGestureItem:(id)a3 commandManager:(id)a4 resolver:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 localizedName];
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:a1 set:0 get:0 detail:0 cell:4 edit:0];

  v13 = [VOCommandContext gestureContextWithGesture:v10 commandManager:v9 resolver:v8];

  [v12 setVoCommandContext:v13];

  return v12;
}

+ (id)voKeyboardShortcutItem:(id)a3 commandManager:(id)a4 resolver:(id)a5
{
  v6 = a3;
  v7 = [v6 keyChord];
  v8 = [v7 accessibilitySpeakableDisplayValue];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:a1 set:0 get:0 detail:0 cell:4 edit:0];

  [v9 setVoCommandContext:v6];

  return v9;
}

+ (id)voKeyboardShortcutBindingItem:(id)a3 commandManager:(id)a4 resolver:(id)a5
{
  v6 = a3;
  v7 = [v6 command];
  v8 = [v7 localizedName];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:a1 set:0 get:0 detail:0 cell:4 edit:0];

  [v9 setVoCommandContext:v6];

  return v9;
}

+ (id)voQuickNavShortcutItem:(id)a3 commandManager:(id)a4 resolver:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 accessibilitySpeakableDisplayValue];
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:a1 set:0 get:0 detail:0 cell:4 edit:0];

  v13 = [VOCommandContext quickNavShortcutContextWithKeyChord:v10 commandManager:v9 resolver:v8];

  [v12 setVoCommandContext:v13];

  return v12;
}

- (VOSCommandResolver)voCommandResolver
{
  v2 = [(PSSpecifier *)self voCommandContext];
  v3 = [v2 resolver];

  if (!v3)
  {
    v3 = +[VOSCommandResolver resolverForCurrentHost];
  }

  return v3;
}

- (unint64_t)voBindingAvailability
{
  v2 = [(PSSpecifier *)self voCommandContext];
  v3 = [v2 bindingAvailability];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end