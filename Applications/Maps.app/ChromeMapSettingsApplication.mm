@interface ChromeMapSettingsApplication
- (ChromeMapSettingsApplication)initWithSettingsDictionary:(id)dictionary;
- (NSArray)completionHandlers;
- (void)addCompletionHandler:(id)handler;
@end

@implementation ChromeMapSettingsApplication

- (void)addCompletionHandler:(id)handler
{
  if (handler)
  {
    completionHandlers = self->_completionHandlers;
    v4 = [handler copy];
    [(NSMutableArray *)completionHandlers addObject:v4];
  }
}

- (NSArray)completionHandlers
{
  v2 = [(NSMutableArray *)self->_completionHandlers copy];

  return v2;
}

- (ChromeMapSettingsApplication)initWithSettingsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = ChromeMapSettingsApplication;
  v5 = [(ChromeMapSettingsApplication *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    settingsDictionary = v5->_settingsDictionary;
    v5->_settingsDictionary = v6;

    v8 = +[NSMutableArray array];
    completionHandlers = v5->_completionHandlers;
    v5->_completionHandlers = v8;
  }

  return v5;
}

@end