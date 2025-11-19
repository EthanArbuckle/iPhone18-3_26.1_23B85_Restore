@interface UICommand
+ (id)_maps_commandWithEnableFeatureTitle:(id)a3 disableFeatureTitle:(id)a4 imageName:(id)a5 action:(SEL)a6;
- (void)_maps_setUseDisableFeatureTitle:(BOOL)a3;
@end

@implementation UICommand

- (void)_maps_setUseDisableFeatureTitle:(BOOL)a3
{
  if (a3)
  {
    v5 = [(UICommand *)self propertyList];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v5 objectForKeyedSubscript:@"MapsUICommandDisableTitleKey"];
      [(UICommand *)self setTitle:v4];
    }
  }
}

+ (id)_maps_commandWithEnableFeatureTitle:(id)a3 disableFeatureTitle:(id)a4 imageName:(id)a5 action:(SEL)a6
{
  v17[0] = @"MapsUICommandEnableTitleKey";
  v17[1] = @"MapsUICommandDisableTitleKey";
  v18[0] = a3;
  v18[1] = a4;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  v14 = [UIImage systemImageNamed:v10];

  v15 = [a1 commandWithTitle:v12 image:v14 action:a6 propertyList:v13];

  return v15;
}

@end