@interface UIKeyCommand
+ (id)_maps_commandWithEnableFeatureTitle:(id)title disableFeatureTitle:(id)featureTitle imageName:(id)name action:(SEL)action input:(id)input modifierFlags:(int64_t)flags;
- (NSIndexPath)cell_IndexPath;
@end

@implementation UIKeyCommand

+ (id)_maps_commandWithEnableFeatureTitle:(id)title disableFeatureTitle:(id)featureTitle imageName:(id)name action:(SEL)action input:(id)input modifierFlags:(int64_t)flags
{
  v22[0] = @"MapsUICommandEnableTitleKey";
  v22[1] = @"MapsUICommandDisableTitleKey";
  v23[0] = title;
  v23[1] = featureTitle;
  inputCopy = input;
  nameCopy = name;
  featureTitleCopy = featureTitle;
  titleCopy = title;
  v18 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  v19 = [UIImage systemImageNamed:nameCopy];

  v20 = [self commandWithTitle:titleCopy image:v19 action:action input:inputCopy modifierFlags:flags propertyList:v18];

  return v20;
}

- (NSIndexPath)cell_IndexPath
{
  propertyList = [(UIKeyCommand *)self propertyList];
  v4 = [propertyList objectForKeyedSubscript:@"row"];

  propertyList2 = [(UIKeyCommand *)self propertyList];
  v6 = [propertyList2 objectForKeyedSubscript:@"section"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = v6;
    integerValue = [v4 integerValue];
    integerValue2 = [v7 integerValue];

    v10 = [NSIndexPath indexPathForRow:integerValue inSection:integerValue2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end