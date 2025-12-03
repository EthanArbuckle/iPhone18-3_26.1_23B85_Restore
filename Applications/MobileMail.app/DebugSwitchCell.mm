@interface DebugSwitchCell
+ (id)preferenceSwitchWithTitle:(id)title preference:(unint64_t)preference;
+ (id)preferenceSwitchWithTitle:(id)title preference:(unint64_t)preference didChangeHandler:(id)handler;
- (DebugSwitchCell)initWithTitle:(id)title defaultsKey:(id)key defaultKeyValue:(BOOL)value completion:(id)completion;
- (DebugSwitchCell)initWithTitle:(id)title userDefaults:(id)defaults defaultsKey:(id)key defaultKeyValue:(BOOL)value completion:(id)completion;
- (void)_handleSwitchValueChange:(id)change event:(id)event;
@end

@implementation DebugSwitchCell

+ (id)preferenceSwitchWithTitle:(id)title preference:(unint64_t)preference
{
  v4 = [self preferenceSwitchWithTitle:title preference:preference didChangeHandler:0];

  return v4;
}

+ (id)preferenceSwitchWithTitle:(id)title preference:(unint64_t)preference didChangeHandler:(id)handler
{
  titleCopy = title;
  handlerCopy = handler;
  v9 = [EMInternalPreferences defaultForPreference:preference];
  v10 = [EMInternalPreferences preferenceEnabled:preference];
  v11 = [DebugSwitchCell alloc];
  v12 = +[NSUserDefaults em_userDefaults];
  v13 = [(DebugSwitchCell *)v11 initWithTitle:titleCopy userDefaults:v12 defaultsKey:v9 defaultKeyValue:v10 completion:handlerCopy];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100098DA0;
  v17[3] = &unk_10064E628;
  v14 = v13;
  v18 = v14;
  v15 = [EMInternalPreferences observeChangesForPreference:preference usingBlock:v17];
  [(DebugSwitchCell *)v14 setFeatureObservation:v15];

  return v14;
}

- (DebugSwitchCell)initWithTitle:(id)title defaultsKey:(id)key defaultKeyValue:(BOOL)value completion:(id)completion
{
  valueCopy = value;
  titleCopy = title;
  keyCopy = key;
  completionCopy = completion;
  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [(DebugSwitchCell *)self initWithTitle:titleCopy userDefaults:v13 defaultsKey:keyCopy defaultKeyValue:valueCopy completion:completionCopy];

  return v14;
}

- (DebugSwitchCell)initWithTitle:(id)title userDefaults:(id)defaults defaultsKey:(id)key defaultKeyValue:(BOOL)value completion:(id)completion
{
  valueCopy = value;
  titleCopy = title;
  defaultsCopy = defaults;
  keyCopy = key;
  completionCopy = completion;
  v26.receiver = self;
  v26.super_class = DebugSwitchCell;
  v15 = [(DebugSwitchCell *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_userDefaults, defaults);
    v17 = objc_retainBlock(completionCopy);
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v17;

    v19 = objc_alloc_init(UISwitch);
    selectionSwitch = v16->_selectionSwitch;
    v16->_selectionSwitch = v19;

    objc_storeStrong(&v16->_defaultsKey, key);
    [(UISwitch *)v16->_selectionSwitch addTarget:v16 action:"_handleSwitchValueChange:event:" forControlEvents:4096];
    v21 = [(NSUserDefaults *)v16->_userDefaults valueForKey:keyCopy];
    v22 = v21;
    if (v21)
    {
      valueCopy = [v21 BOOLValue];
    }

    [(UISwitch *)v16->_selectionSwitch setOn:valueCopy];
    textLabel = [(DebugSwitchCell *)v16 textLabel];
    [textLabel setText:titleCopy];

    [(DebugSwitchCell *)v16 setAccessoryView:v16->_selectionSwitch];
    [(DebugSwitchCell *)v16 setSelectionStyle:0];
  }

  return v16;
}

- (void)_handleSwitchValueChange:(id)change event:(id)event
{
  [(NSUserDefaults *)self->_userDefaults setBool:[(UISwitch *)self->_selectionSwitch isOn:change] forKey:self->_defaultsKey];
  [(NSUserDefaults *)self->_userDefaults synchronize];
  completionHandler = [(DebugSwitchCell *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(DebugSwitchCell *)self completionHandler];
    completionHandler2[2]();
  }
}

@end