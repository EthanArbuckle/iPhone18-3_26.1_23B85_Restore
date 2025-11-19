@interface CARSettingsOption
+ (id)optionWithTitle:(id)a3 value:(id)a4;
- (CARSettingsOption)initWithTitle:(id)a3 value:(id)a4;
@end

@implementation CARSettingsOption

+ (id)optionWithTitle:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithTitle:v6 value:v5];

  return v7;
}

- (CARSettingsOption)initWithTitle:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CARSettingsOption;
  v9 = [(CARSettingsOption *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_value, a4);
  }

  return v10;
}

@end