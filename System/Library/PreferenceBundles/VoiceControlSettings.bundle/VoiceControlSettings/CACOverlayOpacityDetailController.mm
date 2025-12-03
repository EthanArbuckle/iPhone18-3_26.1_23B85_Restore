@interface CACOverlayOpacityDetailController
- (id)overlayOpacity:(id)opacity;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)setOverlayOpacity:(id)opacity specifier:(id)specifier;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation CACOverlayOpacityDetailController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [PSSpecifier groupSpecifierWithID:@"OVERLAY_OPACITY_GROUP" name:0];
    v7 = settingsLocString(@"OVERLAY_FADE_OPACITY_FOOTER", @"CommandAndControlSettings");
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v8 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setOverlayOpacity:specifier:" get:"overlayOpacity:" detail:0 cell:5 edit:0];
    [v8 setProperty:@"OVERLAY_OPACITY_CELL" forKey:PSIDKey];
    [v8 setProperty:&off_2AAC8 forKey:PSControlMinimumKey];
    [v8 setProperty:&off_2AAD8 forKey:PSControlMaximumKey];
    v9 = +[CACPreferences sharedPreferences];
    [v9 overlayFadeOpacity];
    v10 = [NSNumber numberWithFloat:?];
    [v8 setProperty:v10 forKey:PSDefaultValueKey];

    [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v5 addObject:v8];
    v11 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentView = [cellCopy contentView];
    [contentView frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    control = [cellCopy control];
    [control setFrame:{(v9 - v9 * 0.8) * 0.5, v7, v9 * 0.8, v11}];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = CACOverlayOpacityDetailController;
  v4 = [(CACOverlayOpacityDetailController *)&v7 tableView:view cellForRowAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    control = [v4 control];
    [control setContinuous:1];
  }

  return v4;
}

- (id)overlayOpacity:(id)opacity
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeOpacity];
  v4 = [NSNumber numberWithFloat:?];

  return v4;
}

- (void)setOverlayOpacity:(id)opacity specifier:(id)specifier
{
  opacityCopy = opacity;
  v8 = +[CACPreferences sharedPreferences];
  [opacityCopy floatValue];
  v6 = v5;

  LODWORD(v7) = v6;
  [v8 setOverlayFadeOpacity:v7];
}

@end