@interface DebugSwitchCell
+ (id)preferenceSwitchWithTitle:(id)a3 preference:(unint64_t)a4;
+ (id)preferenceSwitchWithTitle:(id)a3 preference:(unint64_t)a4 didChangeHandler:(id)a5;
- (DebugSwitchCell)initWithTitle:(id)a3 defaultsKey:(id)a4 defaultKeyValue:(BOOL)a5 completion:(id)a6;
- (DebugSwitchCell)initWithTitle:(id)a3 userDefaults:(id)a4 defaultsKey:(id)a5 defaultKeyValue:(BOOL)a6 completion:(id)a7;
- (void)_handleSwitchValueChange:(id)a3 event:(id)a4;
@end

@implementation DebugSwitchCell

+ (id)preferenceSwitchWithTitle:(id)a3 preference:(unint64_t)a4
{
  v4 = [a1 preferenceSwitchWithTitle:a3 preference:a4 didChangeHandler:0];

  return v4;
}

+ (id)preferenceSwitchWithTitle:(id)a3 preference:(unint64_t)a4 didChangeHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [EMInternalPreferences defaultForPreference:a4];
  v10 = [EMInternalPreferences preferenceEnabled:a4];
  v11 = [DebugSwitchCell alloc];
  v12 = +[NSUserDefaults em_userDefaults];
  v13 = [(DebugSwitchCell *)v11 initWithTitle:v7 userDefaults:v12 defaultsKey:v9 defaultKeyValue:v10 completion:v8];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100098DA0;
  v17[3] = &unk_10064E628;
  v14 = v13;
  v18 = v14;
  v15 = [EMInternalPreferences observeChangesForPreference:a4 usingBlock:v17];
  [(DebugSwitchCell *)v14 setFeatureObservation:v15];

  return v14;
}

- (DebugSwitchCell)initWithTitle:(id)a3 defaultsKey:(id)a4 defaultKeyValue:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [(DebugSwitchCell *)self initWithTitle:v10 userDefaults:v13 defaultsKey:v11 defaultKeyValue:v7 completion:v12];

  return v14;
}

- (DebugSwitchCell)initWithTitle:(id)a3 userDefaults:(id)a4 defaultsKey:(id)a5 defaultKeyValue:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v12 = a3;
  v25 = a4;
  v13 = a5;
  v14 = a7;
  v26.receiver = self;
  v26.super_class = DebugSwitchCell;
  v15 = [(DebugSwitchCell *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_userDefaults, a4);
    v17 = objc_retainBlock(v14);
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v17;

    v19 = objc_alloc_init(UISwitch);
    selectionSwitch = v16->_selectionSwitch;
    v16->_selectionSwitch = v19;

    objc_storeStrong(&v16->_defaultsKey, a5);
    [(UISwitch *)v16->_selectionSwitch addTarget:v16 action:"_handleSwitchValueChange:event:" forControlEvents:4096];
    v21 = [(NSUserDefaults *)v16->_userDefaults valueForKey:v13];
    v22 = v21;
    if (v21)
    {
      v8 = [v21 BOOLValue];
    }

    [(UISwitch *)v16->_selectionSwitch setOn:v8];
    v23 = [(DebugSwitchCell *)v16 textLabel];
    [v23 setText:v12];

    [(DebugSwitchCell *)v16 setAccessoryView:v16->_selectionSwitch];
    [(DebugSwitchCell *)v16 setSelectionStyle:0];
  }

  return v16;
}

- (void)_handleSwitchValueChange:(id)a3 event:(id)a4
{
  [(NSUserDefaults *)self->_userDefaults setBool:[(UISwitch *)self->_selectionSwitch isOn:a3] forKey:self->_defaultsKey];
  [(NSUserDefaults *)self->_userDefaults synchronize];
  v5 = [(DebugSwitchCell *)self completionHandler];

  if (v5)
  {
    v6 = [(DebugSwitchCell *)self completionHandler];
    v6[2]();
  }
}

@end