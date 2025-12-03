@interface ConfigurationIntentHandler
- (_TtC25RemindersIntentsExtension26ConfigurationIntentHandler)init;
- (id)defaultListForConfiguration:(id)configuration;
- (void)handleConfiguration:(id)configuration completion:(id)completion;
- (void)provideListOptionsCollectionForConfiguration:(id)configuration searchTerm:(id)term withCompletion:(id)completion;
- (void)provideListOptionsForConfiguration:(id)configuration searchTerm:(id)term withCompletion:(id)completion;
@end

@implementation ConfigurationIntentHandler

- (void)handleConfiguration:(id)configuration completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  configurationCopy = configuration;
  selfCopy = self;
  sub_10001B340(configurationCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)provideListOptionsForConfiguration:(id)configuration searchTerm:(id)term withCompletion:(id)completion
{
  v8 = _Block_copy(completion);
  if (term)
  {
    v9 = sub_1000306F4();
    term = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  configurationCopy = configuration;
  selfCopy = self;
  sub_100017204(configurationCopy, v9, term, sub_10001B60C, v11);
}

- (void)provideListOptionsCollectionForConfiguration:(id)configuration searchTerm:(id)term withCompletion:(id)completion
{
  v8 = _Block_copy(completion);
  if (term)
  {
    v9 = sub_1000306F4();
    term = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  configurationCopy = configuration;
  selfCopy = self;
  sub_100017204(configurationCopy, v9, term, sub_10001AD80, v11);
}

- (id)defaultListForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  v6 = sub_100019F54(configurationCopy);

  return v6;
}

- (_TtC25RemindersIntentsExtension26ConfigurationIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end