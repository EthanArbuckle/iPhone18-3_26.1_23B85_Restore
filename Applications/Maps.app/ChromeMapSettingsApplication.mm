@interface ChromeMapSettingsApplication
- (ChromeMapSettingsApplication)initWithSettingsDictionary:(id)a3;
- (NSArray)completionHandlers;
- (void)addCompletionHandler:(id)a3;
@end

@implementation ChromeMapSettingsApplication

- (void)addCompletionHandler:(id)a3
{
  if (a3)
  {
    completionHandlers = self->_completionHandlers;
    v4 = [a3 copy];
    [(NSMutableArray *)completionHandlers addObject:v4];
  }
}

- (NSArray)completionHandlers
{
  v2 = [(NSMutableArray *)self->_completionHandlers copy];

  return v2;
}

- (ChromeMapSettingsApplication)initWithSettingsDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ChromeMapSettingsApplication;
  v5 = [(ChromeMapSettingsApplication *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    settingsDictionary = v5->_settingsDictionary;
    v5->_settingsDictionary = v6;

    v8 = +[NSMutableArray array];
    completionHandlers = v5->_completionHandlers;
    v5->_completionHandlers = v8;
  }

  return v5;
}

@end