@interface MTSetting
+ (id)appThemeButtonSettingWithTitle:(id)title identifier:(id)identifier changeHandler:(id)handler;
+ (id)buttonSettingWithTitle:(id)title detailText:(id)text identifier:(id)identifier changeHandler:(id)handler;
+ (id)buttonSettingWithTitle:(id)title identifier:(id)identifier changeHandler:(id)handler;
+ (id)drilldownSettingWithTitle:(id)title valueLabel:(id)label identifier:(id)identifier viewControllerGenerator:(id)generator;
+ (id)informativeSettingWithText:(id)text identifier:(id)identifier;
+ (id)loadingSettingWithIdentifier:(id)identifier;
+ (id)optionSettingWithTitle:(id)title headerTitle:(id)headerTitle footerText:(id)text initialValue:(unint64_t)value optionDescription:(id)description identifier:(id)identifier changeHandler:(id)handler;
+ (id)radioOptionWithTitle:(id)title radioGroup:(id)group value:(unint64_t)value identifier:(id)identifier;
+ (id)switchSettingWithTitle:(id)title initialValue:(BOOL)value identifier:(id)identifier changeHandler:(id)handler;
+ (id)textSettingWithInitialValue:(id)value placeholder:(id)placeholder identifier:(id)identifier changeHandler:(id)handler;
- (MTSetting)init;
- (MTSettingsGroup)group;
@end

@implementation MTSetting

+ (id)radioOptionWithTitle:(id)title radioGroup:(id)group value:(unint64_t)value identifier:(id)identifier
{
  identifierCopy = identifier;
  groupCopy = group;
  titleCopy = title;
  v12 = objc_alloc_init(MTRadioButtonSetting);
  [(MTSetting *)v12 setType:7];
  [(MTSetting *)v12 setTitle:titleCopy];

  [(MTRadioButtonSetting *)v12 setRadioGroup:groupCopy];
  v13 = [NSNumber numberWithUnsignedInteger:value];
  [(MTSetting *)v12 setValue:v13];

  [(MTSetting *)v12 setIdentifier:identifierCopy];
  [groupCopy addRadioSetting:v12];

  return v12;
}

+ (id)switchSettingWithTitle:(id)title initialValue:(BOOL)value identifier:(id)identifier changeHandler:(id)handler
{
  valueCopy = value;
  handlerCopy = handler;
  identifierCopy = identifier;
  titleCopy = title;
  v13 = objc_alloc_init(self);
  [v13 setType:0];
  [v13 setTitle:titleCopy];

  v14 = [NSNumber numberWithBool:valueCopy];
  [v13 setValue:v14];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100122324;
  v17[3] = &unk_1004DD1D8;
  v18 = handlerCopy;
  v15 = handlerCopy;
  [v13 setChangeHandler:v17];
  [v13 setIdentifier:identifierCopy];

  return v13;
}

+ (id)buttonSettingWithTitle:(id)title detailText:(id)text identifier:(id)identifier changeHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  textCopy = text;
  titleCopy = title;
  v14 = objc_alloc_init(self);
  [v14 setType:2];
  [v14 setTitle:titleCopy];

  v15 = [textCopy copy];
  [v14 setValue:v15];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001224A0;
  v18[3] = &unk_1004DD1D8;
  v19 = handlerCopy;
  v16 = handlerCopy;
  [v14 setChangeHandler:v18];
  [v14 setIdentifier:identifierCopy];

  return v14;
}

+ (id)buttonSettingWithTitle:(id)title identifier:(id)identifier changeHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  titleCopy = title;
  v11 = objc_alloc_init(self);
  [v11 setType:1];
  [v11 setTitle:titleCopy];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001225B8;
  v14[3] = &unk_1004DD1D8;
  v15 = handlerCopy;
  v12 = handlerCopy;
  [v11 setChangeHandler:v14];
  [v11 setIdentifier:identifierCopy];

  return v11;
}

+ (id)appThemeButtonSettingWithTitle:(id)title identifier:(id)identifier changeHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  titleCopy = title;
  v11 = objc_alloc_init(self);
  [v11 setType:3];
  [v11 setTitle:titleCopy];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001226D0;
  v14[3] = &unk_1004DD1D8;
  v15 = handlerCopy;
  v12 = handlerCopy;
  [v11 setChangeHandler:v14];
  [v11 setIdentifier:identifierCopy];

  return v11;
}

+ (id)textSettingWithInitialValue:(id)value placeholder:(id)placeholder identifier:(id)identifier changeHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  placeholderCopy = placeholder;
  valueCopy = value;
  v13 = objc_alloc_init(MTTextSetting);
  [(MTSetting *)v13 setType:6];
  [(MTSetting *)v13 setValue:valueCopy];

  [(MTTextSetting *)v13 setPlaceholder:placeholderCopy];
  [(MTSetting *)v13 setChangeHandler:handlerCopy];

  [(MTSetting *)v13 setIdentifier:identifierCopy];

  return v13;
}

+ (id)drilldownSettingWithTitle:(id)title valueLabel:(id)label identifier:(id)identifier viewControllerGenerator:(id)generator
{
  generatorCopy = generator;
  identifierCopy = identifier;
  labelCopy = label;
  titleCopy = title;
  v14 = objc_alloc_init(self);
  [v14 setType:4];
  [v14 setTitle:titleCopy];

  [v14 setGenerator:generatorCopy];
  [v14 setIdentifier:identifierCopy];

  [v14 setValue:labelCopy];

  return v14;
}

+ (id)loadingSettingWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(self);
  [v5 setType:8];
  [v5 setIdentifier:identifierCopy];

  return v5;
}

+ (id)informativeSettingWithText:(id)text identifier:(id)identifier
{
  identifierCopy = identifier;
  textCopy = text;
  v8 = objc_alloc_init(self);
  [v8 setType:9];
  [v8 setIdentifier:identifierCopy];

  [v8 setEnabled:0];
  [v8 setValue:textCopy];

  return v8;
}

+ (id)optionSettingWithTitle:(id)title headerTitle:(id)headerTitle footerText:(id)text initialValue:(unint64_t)value optionDescription:(id)description identifier:(id)identifier changeHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  descriptionCopy = description;
  textCopy = text;
  headerTitleCopy = headerTitle;
  titleCopy = title;
  v21 = objc_alloc_init(MTOptionSetting);
  [(MTSetting *)v21 setType:5];
  [(MTSetting *)v21 setTitle:titleCopy];

  [(MTOptionSetting *)v21 setHeaderTitle:headerTitleCopy];
  [(MTOptionSetting *)v21 setFooterText:textCopy];

  v22 = [NSNumber numberWithUnsignedInteger:value];
  [(MTSetting *)v21 setValue:v22];

  [(MTOptionSetting *)v21 setOptions:descriptionCopy];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100122AFC;
  v25[3] = &unk_1004DD1D8;
  v26 = handlerCopy;
  v23 = handlerCopy;
  [(MTSetting *)v21 setChangeHandler:v25];
  [(MTSetting *)v21 setIdentifier:identifierCopy];

  return v21;
}

- (MTSetting)init
{
  v5.receiver = self;
  v5.super_class = MTSetting;
  v2 = [(MTSetting *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MTSetting *)v2 setEnabled:1];
  }

  return v3;
}

- (MTSettingsGroup)group
{
  WeakRetained = objc_loadWeakRetained(&self->_group);

  return WeakRetained;
}

@end