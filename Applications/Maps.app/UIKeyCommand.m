@interface UIKeyCommand
+ (id)_maps_commandWithEnableFeatureTitle:(id)a3 disableFeatureTitle:(id)a4 imageName:(id)a5 action:(SEL)a6 input:(id)a7 modifierFlags:(int64_t)a8;
- (NSIndexPath)cell_IndexPath;
@end

@implementation UIKeyCommand

+ (id)_maps_commandWithEnableFeatureTitle:(id)a3 disableFeatureTitle:(id)a4 imageName:(id)a5 action:(SEL)a6 input:(id)a7 modifierFlags:(int64_t)a8
{
  v22[0] = @"MapsUICommandEnableTitleKey";
  v22[1] = @"MapsUICommandDisableTitleKey";
  v23[0] = a3;
  v23[1] = a4;
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  v19 = [UIImage systemImageNamed:v15];

  v20 = [a1 commandWithTitle:v17 image:v19 action:a6 input:v14 modifierFlags:a8 propertyList:v18];

  return v20;
}

- (NSIndexPath)cell_IndexPath
{
  v3 = [(UIKeyCommand *)self propertyList];
  v4 = [v3 objectForKeyedSubscript:@"row"];

  v5 = [(UIKeyCommand *)self propertyList];
  v6 = [v5 objectForKeyedSubscript:@"section"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = v6;
    v8 = [v4 integerValue];
    v9 = [v7 integerValue];

    v10 = [NSIndexPath indexPathForRow:v8 inSection:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end