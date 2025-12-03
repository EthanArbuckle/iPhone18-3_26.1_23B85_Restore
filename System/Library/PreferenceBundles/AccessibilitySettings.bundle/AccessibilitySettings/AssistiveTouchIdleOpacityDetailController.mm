@interface AssistiveTouchIdleOpacityDetailController
- (id)idleOpacity:(id)opacity;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_handleSliderIsChanging:(id)changing;
- (void)setIdleOpacity:(id)opacity specifier:(id)specifier;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation AssistiveTouchIdleOpacityDetailController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(AssistiveTouchIdleOpacityDetailController *)self loadSpecifiersFromPlistName:@"AssistiveTouchIdleOpacitySettings" target:self];
    v6 = *&self->AXUISettingsBaseListController_opaque[v3];
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
  v8.receiver = self;
  v8.super_class = AssistiveTouchIdleOpacityDetailController;
  v5 = [(AssistiveTouchIdleOpacityDetailController *)&v8 tableView:view cellForRowAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    control = [v5 control];
    [control setContinuous:1];
    [control addTarget:self action:"_handleSliderIsChanging:" forControlEvents:4096];
  }

  return v5;
}

- (id)idleOpacity:(id)opacity
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchIdleOpacity];
  v4 = [NSNumber numberWithDouble:?];

  return v4;
}

- (void)setIdleOpacity:(id)opacity specifier:(id)specifier
{
  [opacity floatValue];
  v5 = v4;
  v6 = +[AXSettings sharedInstance];
  [v6 setAssistiveTouchIdleOpacity:v5];
}

- (void)_handleSliderIsChanging:(id)changing
{
  [changing value];
  v4 = v3;
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchIdleOpacity:v4];
}

@end