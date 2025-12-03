@interface ZoomIdleSlugOpacityDetailController
- (id)idleSlugOpacity:(id)opacity;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_handleSliderIsChanging:(id)changing;
- (void)setIdleSlugOpacity:(id)opacity specifier:(id)specifier;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = ZoomIdleSlugOpacityDetailController;
  v5 = [(ZoomIdleSlugOpacityDetailController *)&v10 tableView:view cellForRowAtIndexPath:path];
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
        control = [subviews ax_firstObjectUsingBlock:&__block_literal_global_16];
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

BOOL __71__ZoomIdleSlugOpacityDetailController_tableView_cellForRowAtIndexPath___block_invoke(id a1, UIView *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)idleSlugOpacity:(id)opacity
{
  v3 = +[AXSettings sharedInstance];
  [v3 zoomIdleSlugOpacity];
  v4 = [NSNumber numberWithDouble:?];

  return v4;
}

- (void)setIdleSlugOpacity:(id)opacity specifier:(id)specifier
{
  opacityCopy = opacity;
  [opacityCopy floatValue];
  v6 = v5;
  v7 = +[AXSettings sharedInstance];
  [v7 setZoomIdleSlugOpacity:v6];

  v9 = +[ZoomServices sharedInstance];
  [opacityCopy floatValue];
  LODWORD(v6) = v8;

  [v9 notifyZoomIdleSlugOpacityChangedTo:*&v6];
}

- (void)_handleSliderIsChanging:(id)changing
{
  changingCopy = changing;
  v6 = +[ZoomServices sharedInstance];
  [changingCopy value];
  v5 = v4;

  [v6 notifyZoomIdleSlugOpacityChangedTo:v5];
}

@end