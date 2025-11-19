@interface ZoomIdleSlugOpacityDetailController
- (id)idleSlugOpacity:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_handleSliderIsChanging:(id)a3;
- (void)setIdleSlugOpacity:(id)a3 specifier:(id)a4;
@end

@implementation ZoomIdleSlugOpacityDetailController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(ZoomIdleSlugOpacityDetailController *)self loadSpecifiersFromPlistName:@"ZoomIdleSlugOpacitySettings" target:self];
    v6 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = ZoomIdleSlugOpacityDetailController;
  v5 = [(ZoomIdleSlugOpacityDetailController *)&v10 tableView:a3 cellForRowAtIndexPath:a4];
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
        v6 = [v8 ax_firstObjectUsingBlock:&__block_literal_global_16];
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

BOOL __71__ZoomIdleSlugOpacityDetailController_tableView_cellForRowAtIndexPath___block_invoke(id a1, UIView *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)idleSlugOpacity:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 zoomIdleSlugOpacity];
  v4 = [NSNumber numberWithDouble:?];

  return v4;
}

- (void)setIdleSlugOpacity:(id)a3 specifier:(id)a4
{
  v4 = a3;
  [v4 floatValue];
  v6 = v5;
  v7 = +[AXSettings sharedInstance];
  [v7 setZoomIdleSlugOpacity:v6];

  v9 = +[ZoomServices sharedInstance];
  [v4 floatValue];
  LODWORD(v6) = v8;

  [v9 notifyZoomIdleSlugOpacityChangedTo:*&v6];
}

- (void)_handleSliderIsChanging:(id)a3
{
  v3 = a3;
  v6 = +[ZoomServices sharedInstance];
  [v3 value];
  v5 = v4;

  [v6 notifyZoomIdleSlugOpacityChangedTo:v5];
}

@end