@interface CARSettingsOption
+ (id)optionWithTitle:(id)title value:(id)value;
- (CARSettingsOption)initWithTitle:(id)title value:(id)value;
@end

@implementation CARSettingsOption

+ (id)optionWithTitle:(id)title value:(id)value
{
  valueCopy = value;
  titleCopy = title;
  v7 = [objc_alloc(objc_opt_class()) initWithTitle:titleCopy value:valueCopy];

  return v7;
}

- (CARSettingsOption)initWithTitle:(id)title value:(id)value
{
  titleCopy = title;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = CARSettingsOption;
  v9 = [(CARSettingsOption *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

@end