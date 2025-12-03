@interface CDPeopleSuggester
+ (id)peopleSuggester;
@end

@implementation CDPeopleSuggester

+ (id)peopleSuggester
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___CDPeopleSuggester;
  v2 = objc_msgSendSuper2(&v8, "peopleSuggester");
  v3 = [NSSet setWithArray:&off_100646F10];
  settings = [v2 settings];
  [settings setConstrainPersonIdType:v3];

  v5 = [NSSet setWithArray:&off_100646F28];
  settings2 = [v2 settings];
  [settings2 setConstrainMechanisms:v5];

  return v2;
}

@end