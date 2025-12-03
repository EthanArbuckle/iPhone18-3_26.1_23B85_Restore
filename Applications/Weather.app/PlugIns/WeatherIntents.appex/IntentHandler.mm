@interface IntentHandler
- (id)defaultLocationForWeather:(id)weather;
- (id)handlerForIntent:(id)intent;
- (void)provideLocationOptionsCollectionForWeather:(id)weather searchTerm:(id)term withCompletion:(id)completion;
@end

@implementation IntentHandler

- (void)provideLocationOptionsCollectionForWeather:(id)weather searchTerm:(id)term withCompletion:(id)completion
{
  v8 = _Block_copy(completion);
  if (term)
  {
    v9 = sub_10000FCB4();
    term = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  weatherCopy = weather;
  selfCopy = self;
  sub_100008590(selfCopy, v9, term, sub_10000B468, v11);
}

- (id)defaultLocationForWeather:(id)weather
{
  weatherCopy = weather;
  selfCopy = self;
  v6 = sub_10000972C(weatherCopy);

  return v6;
}

- (id)handlerForIntent:(id)intent
{
  sub_100009C5C(v5);
  sub_1000053E8(v5, v5[3]);
  v3 = sub_10000FEA4();
  sub_100002D74(v5);

  return v3;
}

@end