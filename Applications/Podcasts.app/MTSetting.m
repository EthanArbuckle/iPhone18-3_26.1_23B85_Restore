@interface MTSetting
+ (id)appThemeButtonSettingWithTitle:(id)a3 identifier:(id)a4 changeHandler:(id)a5;
+ (id)buttonSettingWithTitle:(id)a3 detailText:(id)a4 identifier:(id)a5 changeHandler:(id)a6;
+ (id)buttonSettingWithTitle:(id)a3 identifier:(id)a4 changeHandler:(id)a5;
+ (id)drilldownSettingWithTitle:(id)a3 valueLabel:(id)a4 identifier:(id)a5 viewControllerGenerator:(id)a6;
+ (id)informativeSettingWithText:(id)a3 identifier:(id)a4;
+ (id)loadingSettingWithIdentifier:(id)a3;
+ (id)optionSettingWithTitle:(id)a3 headerTitle:(id)a4 footerText:(id)a5 initialValue:(unint64_t)a6 optionDescription:(id)a7 identifier:(id)a8 changeHandler:(id)a9;
+ (id)radioOptionWithTitle:(id)a3 radioGroup:(id)a4 value:(unint64_t)a5 identifier:(id)a6;
+ (id)switchSettingWithTitle:(id)a3 initialValue:(BOOL)a4 identifier:(id)a5 changeHandler:(id)a6;
+ (id)textSettingWithInitialValue:(id)a3 placeholder:(id)a4 identifier:(id)a5 changeHandler:(id)a6;
- (MTSetting)init;
- (MTSettingsGroup)group;
@end

@implementation MTSetting

+ (id)radioOptionWithTitle:(id)a3 radioGroup:(id)a4 value:(unint64_t)a5 identifier:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(MTRadioButtonSetting);
  [(MTSetting *)v12 setType:7];
  [(MTSetting *)v12 setTitle:v11];

  [(MTRadioButtonSetting *)v12 setRadioGroup:v10];
  v13 = [NSNumber numberWithUnsignedInteger:a5];
  [(MTSetting *)v12 setValue:v13];

  [(MTSetting *)v12 setIdentifier:v9];
  [v10 addRadioSetting:v12];

  return v12;
}

+ (id)switchSettingWithTitle:(id)a3 initialValue:(BOOL)a4 identifier:(id)a5 changeHandler:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = objc_alloc_init(a1);
  [v13 setType:0];
  [v13 setTitle:v12];

  v14 = [NSNumber numberWithBool:v7];
  [v13 setValue:v14];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100122324;
  v17[3] = &unk_1004DD1D8;
  v18 = v10;
  v15 = v10;
  [v13 setChangeHandler:v17];
  [v13 setIdentifier:v11];

  return v13;
}

+ (id)buttonSettingWithTitle:(id)a3 detailText:(id)a4 identifier:(id)a5 changeHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(a1);
  [v14 setType:2];
  [v14 setTitle:v13];

  v15 = [v12 copy];
  [v14 setValue:v15];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001224A0;
  v18[3] = &unk_1004DD1D8;
  v19 = v10;
  v16 = v10;
  [v14 setChangeHandler:v18];
  [v14 setIdentifier:v11];

  return v14;
}

+ (id)buttonSettingWithTitle:(id)a3 identifier:(id)a4 changeHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(a1);
  [v11 setType:1];
  [v11 setTitle:v10];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001225B8;
  v14[3] = &unk_1004DD1D8;
  v15 = v8;
  v12 = v8;
  [v11 setChangeHandler:v14];
  [v11 setIdentifier:v9];

  return v11;
}

+ (id)appThemeButtonSettingWithTitle:(id)a3 identifier:(id)a4 changeHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(a1);
  [v11 setType:3];
  [v11 setTitle:v10];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001226D0;
  v14[3] = &unk_1004DD1D8;
  v15 = v8;
  v12 = v8;
  [v11 setChangeHandler:v14];
  [v11 setIdentifier:v9];

  return v11;
}

+ (id)textSettingWithInitialValue:(id)a3 placeholder:(id)a4 identifier:(id)a5 changeHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(MTTextSetting);
  [(MTSetting *)v13 setType:6];
  [(MTSetting *)v13 setValue:v12];

  [(MTTextSetting *)v13 setPlaceholder:v11];
  [(MTSetting *)v13 setChangeHandler:v9];

  [(MTSetting *)v13 setIdentifier:v10];

  return v13;
}

+ (id)drilldownSettingWithTitle:(id)a3 valueLabel:(id)a4 identifier:(id)a5 viewControllerGenerator:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(a1);
  [v14 setType:4];
  [v14 setTitle:v13];

  [v14 setGenerator:v10];
  [v14 setIdentifier:v11];

  [v14 setValue:v12];

  return v14;
}

+ (id)loadingSettingWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setType:8];
  [v5 setIdentifier:v4];

  return v5;
}

+ (id)informativeSettingWithText:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setType:9];
  [v8 setIdentifier:v6];

  [v8 setEnabled:0];
  [v8 setValue:v7];

  return v8;
}

+ (id)optionSettingWithTitle:(id)a3 headerTitle:(id)a4 footerText:(id)a5 initialValue:(unint64_t)a6 optionDescription:(id)a7 identifier:(id)a8 changeHandler:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = objc_alloc_init(MTOptionSetting);
  [(MTSetting *)v21 setType:5];
  [(MTSetting *)v21 setTitle:v20];

  [(MTOptionSetting *)v21 setHeaderTitle:v19];
  [(MTOptionSetting *)v21 setFooterText:v18];

  v22 = [NSNumber numberWithUnsignedInteger:a6];
  [(MTSetting *)v21 setValue:v22];

  [(MTOptionSetting *)v21 setOptions:v17];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100122AFC;
  v25[3] = &unk_1004DD1D8;
  v26 = v15;
  v23 = v15;
  [(MTSetting *)v21 setChangeHandler:v25];
  [(MTSetting *)v21 setIdentifier:v16];

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