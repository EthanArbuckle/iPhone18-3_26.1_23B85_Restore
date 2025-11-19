@interface IntentHandler
- (id)defaultLocationForWeather:(id)a3;
- (id)handlerForIntent:(id)a3;
- (void)provideLocationOptionsCollectionForWeather:(id)a3 searchTerm:(id)a4 withCompletion:(id)a5;
@end

@implementation IntentHandler

- (void)provideLocationOptionsCollectionForWeather:(id)a3 searchTerm:(id)a4 withCompletion:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_10000FCB4();
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
  sub_100008590(v13, v9, a4, sub_10000B468, v11);
}

- (id)defaultLocationForWeather:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10000972C(v4);

  return v6;
}

- (id)handlerForIntent:(id)a3
{
  sub_100009C5C(v5);
  sub_1000053E8(v5, v5[3]);
  v3 = sub_10000FEA4();
  sub_100002D74(v5);

  return v3;
}

@end