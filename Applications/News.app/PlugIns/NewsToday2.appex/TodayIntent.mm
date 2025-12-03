@interface TodayIntent
- (TodayIntent)init;
- (TodayIntent)initWithCoder:(id)coder;
- (TodayIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (TodayIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation TodayIntent

- (TodayIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TodayIntent();
  return [(TodayIntent *)&v3 init];
}

- (TodayIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TodayIntent();
  coderCopy = coder;
  v5 = [(TodayIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (TodayIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    sub_1000CAD00();
    storeCopy = store;
    v7 = sub_1000CACD0();
  }

  else
  {
    storeCopy2 = store;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for TodayIntent();
  v9 = [(TodayIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (TodayIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  if (name)
  {
    sub_1000CAC10();
    domainCopy = domain;
    verbCopy = verb;
    v10.super.isa = sub_1000CAC00().super.isa;
  }

  else
  {
    domainCopy2 = domain;
    verbCopy2 = verb;
    v10.super.isa = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for TodayIntent();
  v13 = [(TodayIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10.super.isa];

  return v13;
}

@end