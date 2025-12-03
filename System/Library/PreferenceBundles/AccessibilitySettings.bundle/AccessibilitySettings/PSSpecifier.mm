@interface PSSpecifier
+ (id)voCommandItem:(id)item commandManager:(id)manager resolver:(id)resolver;
+ (id)voCommandSubmenuWithTitle:(id)title childViewControllerClass:(Class)class command:(id)command commandManager:(id)manager resolver:(id)resolver;
+ (id)voGenericSubmenuWithTitle:(id)title childViewControllerClass:(Class)class commandManager:(id)manager resolver:(id)resolver;
+ (id)voGestureItem:(id)item commandManager:(id)manager resolver:(id)resolver;
+ (id)voKeyboardShortcutBindingItem:(id)item commandManager:(id)manager resolver:(id)resolver;
+ (id)voKeyboardShortcutItem:(id)item commandManager:(id)manager resolver:(id)resolver;
+ (id)voQuickNavShortcutItem:(id)item commandManager:(id)manager resolver:(id)resolver;
+ (id)voSubmenuForCommandCategory:(id)category commandManager:(id)manager resolver:(id)resolver;
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
- (void)_axApplyGraphicIconNamed:(id)named;
- (void)ax_applyCustomAccessibilityGraphicIconNamed:(id)named;
- (void)ax_applyPredefinedGraphicIconNamed:(id)named;
- (void)setAx_assetDeleteButtonHidden:(BOOL)hidden;
- (void)setAx_assetDeleteButtonTapHandler:(id)handler;
- (void)setAx_assetDownloadButtonHidden:(BOOL)hidden;
- (void)setAx_assetDownloadButtonTapHandler:(id)handler;
- (void)setAx_assetDownloadBytesExpected:(int64_t)expected;
- (void)setAx_assetDownloadBytesReceived:(int64_t)received;
- (void)setAx_assetState:(int64_t)state;
- (void)setAx_assetUnarchivedFileSize:(int64_t)size;
@end

@implementation PSSpecifier

- (int64_t)ax_assetState
{
  v2 = [(PSSpecifier *)self propertyForKey:@"ax_AssetState"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setAx_assetState:(int64_t)state
{
  v4 = [NSNumber numberWithInteger:state];
  [(PSSpecifier *)self setProperty:v4 forKey:@"ax_AssetState"];
}

- (int64_t)ax_assetDownloadBytesReceived
{
  v2 = [(PSSpecifier *)self propertyForKey:@"ax_assetDownloadBytesReceived"];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (void)setAx_assetDownloadBytesReceived:(int64_t)received
{
  v4 = [NSNumber numberWithLongLong:received];
  [(PSSpecifier *)self setProperty:v4 forKey:@"ax_assetDownloadBytesReceived"];
}

- (int64_t)ax_assetDownloadBytesExpected
{
  v2 = [(PSSpecifier *)self propertyForKey:@"ax_assetDownloadBytesExpected"];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (void)setAx_assetDownloadBytesExpected:(int64_t)expected
{
  v4 = [NSNumber numberWithLongLong:expected];
  [(PSSpecifier *)self setProperty:v4 forKey:@"ax_assetDownloadBytesExpected"];
}

- (int64_t)ax_assetUnarchivedFileSize
{
  v2 = [(PSSpecifier *)self propertyForKey:@"ax_assetUnarchivedFileSize"];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (void)setAx_assetUnarchivedFileSize:(int64_t)size
{
  v4 = [NSNumber numberWithLongLong:size];
  [(PSSpecifier *)self setProperty:v4 forKey:@"ax_assetUnarchivedFileSize"];
}

- (void)setAx_assetDownloadButtonTapHandler:(id)handler
{
  v4 = objc_retainBlock(handler);
  [(PSSpecifier *)self setProperty:v4 forKey:@"ax_assetDownloadButtonTapHandler"];
}

- (BOOL)ax_assetDownloadButtonHidden
{
  v2 = [(PSSpecifier *)self propertyForKey:@"ax_assetDownloadButtonHidden"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setAx_assetDownloadButtonHidden:(BOOL)hidden
{
  v4 = [NSNumber numberWithBool:hidden];
  [(PSSpecifier *)self setProperty:v4 forKey:@"ax_assetDownloadButtonHidden"];
}

- (void)setAx_assetDeleteButtonTapHandler:(id)handler
{
  v4 = objc_retainBlock(handler);
  [(PSSpecifier *)self setProperty:v4 forKey:@"ax_assetDeleteButtonTapHandler"];
}

- (BOOL)ax_assetDeleteButtonHidden
{
  v2 = [(PSSpecifier *)self propertyForKey:@"ax_assetDeleteButtonHidden"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setAx_assetDeleteButtonHidden:(BOOL)hidden
{
  v4 = [NSNumber numberWithBool:hidden];
  [(PSSpecifier *)self setProperty:v4 forKey:@"ax_assetDeleteButtonHidden"];
}

- (BOOL)isCaptionProfile
{
  v2 = [(PSSpecifier *)self propertyForKey:@"IsCaptionProfile"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isEditableCaptionProfile
{
  v3 = [(PSSpecifier *)self propertyForKey:@"IsCaptionProfile"];
  bOOLValue = [v3 BOOLValue];

  if (!bOOLValue)
  {
    return 0;
  }

  v5 = [(PSSpecifier *)self propertyForKey:@"CaptionProfileID"];
  v6 = MACaptionAppearancePrefIsProfileEditable() != 0;

  return v6;
}

- (void)_axApplyGraphicIconNamed:(id)named
{
  v4 = PSLazyIconLoading;
  namedCopy = named;
  [(PSSpecifier *)self setObject:&__kCFBooleanTrue forKeyedSubscript:v4];
  [(PSSpecifier *)self setObject:namedCopy forKeyedSubscript:PSIconUTTypeIdentifierKey];
}

- (void)ax_applyCustomAccessibilityGraphicIconNamed:(id)named
{
  named = [NSString stringWithFormat:@"com.apple.AccessibilityUIServer.%@", named];
  [(PSSpecifier *)self _axApplyGraphicIconNamed:named];
}

- (void)ax_applyPredefinedGraphicIconNamed:(id)named
{
  named = [NSString stringWithFormat:@"com.apple.graphic-icon.%@", named];
  [(PSSpecifier *)self _axApplyGraphicIconNamed:named];
}

- (VOSCommandManager)voCommandManager
{
  voCommandContext = [(PSSpecifier *)self voCommandContext];
  commandManager = [voCommandContext commandManager];

  return commandManager;
}

+ (id)voGenericSubmenuWithTitle:(id)title childViewControllerClass:(Class)class commandManager:(id)manager resolver:(id)resolver
{
  resolverCopy = resolver;
  managerCopy = manager;
  v12 = [PSSpecifier preferenceSpecifierNamed:title target:self set:0 get:0 detail:class cell:2 edit:0];
  v13 = [VOCommandContext genericContextWithCommandManager:managerCopy resolver:resolverCopy];

  [v12 setVoCommandContext:v13];

  return v12;
}

+ (id)voCommandSubmenuWithTitle:(id)title childViewControllerClass:(Class)class command:(id)command commandManager:(id)manager resolver:(id)resolver
{
  titleCopy = title;
  v12 = [VOCommandContext commandContextWithCommand:command commandManager:manager resolver:resolver];
  v13 = [PSSpecifier preferenceSpecifierNamed:titleCopy target:v12 set:0 get:"gestureDescription:" detail:class cell:2 edit:0];

  [v13 setProperty:&__kCFBooleanFalse forKey:PSSpecifierIsSearchableKey];
  [v13 setVoCommandContext:v12];

  return v13;
}

+ (id)voSubmenuForCommandCategory:(id)category commandManager:(id)manager resolver:(id)resolver
{
  resolverCopy = resolver;
  managerCopy = manager;
  categoryCopy = category;
  localizedCategoryName = [categoryCopy localizedCategoryName];
  v12 = [PSSpecifier preferenceSpecifierNamed:localizedCategoryName target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  v13 = [VOCommandContext commandCategoryContextWithCategory:categoryCopy commandManager:managerCopy resolver:resolverCopy];

  [v12 setVoCommandContext:v13];

  return v12;
}

+ (id)voCommandItem:(id)item commandManager:(id)manager resolver:(id)resolver
{
  resolverCopy = resolver;
  managerCopy = manager;
  itemCopy = item;
  localizedName = [itemCopy localizedName];
  v12 = [PSSpecifier preferenceSpecifierNamed:localizedName target:self set:0 get:0 detail:0 cell:3 edit:0];

  v13 = [VOCommandContext commandContextWithCommand:itemCopy commandManager:managerCopy resolver:resolverCopy];

  [v12 setVoCommandContext:v13];

  return v12;
}

+ (id)voGestureItem:(id)item commandManager:(id)manager resolver:(id)resolver
{
  resolverCopy = resolver;
  managerCopy = manager;
  itemCopy = item;
  localizedName = [itemCopy localizedName];
  v12 = [PSSpecifier preferenceSpecifierNamed:localizedName target:self set:0 get:0 detail:0 cell:4 edit:0];

  v13 = [VOCommandContext gestureContextWithGesture:itemCopy commandManager:managerCopy resolver:resolverCopy];

  [v12 setVoCommandContext:v13];

  return v12;
}

+ (id)voKeyboardShortcutItem:(id)item commandManager:(id)manager resolver:(id)resolver
{
  itemCopy = item;
  keyChord = [itemCopy keyChord];
  accessibilitySpeakableDisplayValue = [keyChord accessibilitySpeakableDisplayValue];
  v9 = [PSSpecifier preferenceSpecifierNamed:accessibilitySpeakableDisplayValue target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v9 setVoCommandContext:itemCopy];

  return v9;
}

+ (id)voKeyboardShortcutBindingItem:(id)item commandManager:(id)manager resolver:(id)resolver
{
  itemCopy = item;
  command = [itemCopy command];
  localizedName = [command localizedName];
  v9 = [PSSpecifier preferenceSpecifierNamed:localizedName target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v9 setVoCommandContext:itemCopy];

  return v9;
}

+ (id)voQuickNavShortcutItem:(id)item commandManager:(id)manager resolver:(id)resolver
{
  resolverCopy = resolver;
  managerCopy = manager;
  itemCopy = item;
  accessibilitySpeakableDisplayValue = [itemCopy accessibilitySpeakableDisplayValue];
  v12 = [PSSpecifier preferenceSpecifierNamed:accessibilitySpeakableDisplayValue target:self set:0 get:0 detail:0 cell:4 edit:0];

  v13 = [VOCommandContext quickNavShortcutContextWithKeyChord:itemCopy commandManager:managerCopy resolver:resolverCopy];

  [v12 setVoCommandContext:v13];

  return v12;
}

- (VOSCommandResolver)voCommandResolver
{
  voCommandContext = [(PSSpecifier *)self voCommandContext];
  resolver = [voCommandContext resolver];

  if (!resolver)
  {
    resolver = +[VOSCommandResolver resolverForCurrentHost];
  }

  return resolver;
}

- (unint64_t)voBindingAvailability
{
  voCommandContext = [(PSSpecifier *)self voCommandContext];
  bindingAvailability = [voCommandContext bindingAvailability];

  if (bindingAvailability)
  {
    unsignedIntegerValue = [bindingAvailability unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

@end