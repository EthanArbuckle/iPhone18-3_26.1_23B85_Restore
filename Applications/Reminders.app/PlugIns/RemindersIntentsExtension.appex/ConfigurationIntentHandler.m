@interface ConfigurationIntentHandler
- (_TtC25RemindersIntentsExtension26ConfigurationIntentHandler)init;
- (id)defaultListForConfiguration:(id)a3;
- (void)handleConfiguration:(id)a3 completion:(id)a4;
- (void)provideListOptionsCollectionForConfiguration:(id)a3 searchTerm:(id)a4 withCompletion:(id)a5;
- (void)provideListOptionsForConfiguration:(id)a3 searchTerm:(id)a4 withCompletion:(id)a5;
@end

@implementation ConfigurationIntentHandler

- (void)handleConfiguration:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10001B340(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)provideListOptionsForConfiguration:(id)a3 searchTerm:(id)a4 withCompletion:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_1000306F4();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = a3;
  v13 = self;
  sub_100017204(v12, v9, a4, sub_10001B60C, v11);
}

- (void)provideListOptionsCollectionForConfiguration:(id)a3 searchTerm:(id)a4 withCompletion:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_1000306F4();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = a3;
  v13 = self;
  sub_100017204(v12, v9, a4, sub_10001AD80, v11);
}

- (id)defaultListForConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100019F54(v4);

  return v6;
}

- (_TtC25RemindersIntentsExtension26ConfigurationIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end