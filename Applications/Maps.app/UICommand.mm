@interface UICommand
+ (id)_maps_commandWithEnableFeatureTitle:(id)title disableFeatureTitle:(id)featureTitle imageName:(id)name action:(SEL)action;
- (void)_maps_setUseDisableFeatureTitle:(BOOL)title;
@end

@implementation UICommand

- (void)_maps_setUseDisableFeatureTitle:(BOOL)title
{
  if (title)
  {
    propertyList = [(UICommand *)self propertyList];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [propertyList objectForKeyedSubscript:@"MapsUICommandDisableTitleKey"];
      [(UICommand *)self setTitle:v4];
    }
  }
}

+ (id)_maps_commandWithEnableFeatureTitle:(id)title disableFeatureTitle:(id)featureTitle imageName:(id)name action:(SEL)action
{
  v17[0] = @"MapsUICommandEnableTitleKey";
  v17[1] = @"MapsUICommandDisableTitleKey";
  v18[0] = title;
  v18[1] = featureTitle;
  nameCopy = name;
  featureTitleCopy = featureTitle;
  titleCopy = title;
  v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  v14 = [UIImage systemImageNamed:nameCopy];

  v15 = [self commandWithTitle:titleCopy image:v14 action:action propertyList:v13];

  return v15;
}

@end