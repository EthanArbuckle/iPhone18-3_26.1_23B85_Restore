@interface SpeechControllerIdleOpacityController
- (id)specifiers;
- (id)speechControllerIdleOpacity:(id)opacity;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_handleSliderIsChanging:(id)changing;
- (void)setSpeechControllerIdleOpacity:(id)opacity specifier:(id)specifier;
@end

@implementation SpeechControllerIdleOpacityController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(SpeechControllerIdleOpacityController *)self loadSpecifiersFromPlistName:@"SpeechControllerIdleOpacitySettings" target:self];
    v6 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = SpeechControllerIdleOpacityController;
  v5 = [(SpeechControllerIdleOpacityController *)&v10 tableView:view cellForRowAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    control = [v5 control];
    if (!control)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        contentView = [v5 contentView];
        subviews = [contentView subviews];
        control = [subviews ax_firstObjectUsingBlock:&__block_literal_global_48];
      }

      else
      {
        control = 0;
      }
    }

    [control setContinuous:1];
    [control addTarget:self action:"_handleSliderIsChanging:" forControlEvents:4096];
  }

  return v5;
}

BOOL __73__SpeechControllerIdleOpacityController_tableView_cellForRowAtIndexPath___block_invoke(id a1, UIView *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)speechControllerIdleOpacity:(id)opacity
{
  v3 = +[AXSettings sharedInstance];
  [v3 speechControllerIdleOpacity];
  v4 = [NSNumber numberWithDouble:?];

  return v4;
}

- (void)setSpeechControllerIdleOpacity:(id)opacity specifier:(id)specifier
{
  [opacity floatValue];
  v5 = v4;
  v6 = +[AXSettings sharedInstance];
  [v6 setSpeechControllerIdleOpacity:v5];
}

- (void)_handleSliderIsChanging:(id)changing
{
  [changing value];
  v4 = v3;
  v5 = +[AXSettings sharedInstance];
  [v5 setSpeechControllerIdleOpacity:v4];
}

@end