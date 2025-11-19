@interface SpeechControllerIdleOpacityController
- (id)specifiers;
- (id)speechControllerIdleOpacity:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_handleSliderIsChanging:(id)a3;
- (void)setSpeechControllerIdleOpacity:(id)a3 specifier:(id)a4;
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = SpeechControllerIdleOpacityController;
  v5 = [(SpeechControllerIdleOpacityController *)&v10 tableView:a3 cellForRowAtIndexPath:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 control];
    if (!v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v5 contentView];
        v8 = [v7 subviews];
        v6 = [v8 ax_firstObjectUsingBlock:&__block_literal_global_48];
      }

      else
      {
        v6 = 0;
      }
    }

    [v6 setContinuous:1];
    [v6 addTarget:self action:"_handleSliderIsChanging:" forControlEvents:4096];
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

- (id)speechControllerIdleOpacity:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 speechControllerIdleOpacity];
  v4 = [NSNumber numberWithDouble:?];

  return v4;
}

- (void)setSpeechControllerIdleOpacity:(id)a3 specifier:(id)a4
{
  [a3 floatValue];
  v5 = v4;
  v6 = +[AXSettings sharedInstance];
  [v6 setSpeechControllerIdleOpacity:v5];
}

- (void)_handleSliderIsChanging:(id)a3
{
  [a3 value];
  v4 = v3;
  v5 = +[AXSettings sharedInstance];
  [v5 setSpeechControllerIdleOpacity:v4];
}

@end