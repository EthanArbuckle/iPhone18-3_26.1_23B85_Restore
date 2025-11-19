@interface CDPeopleSuggester
+ (id)peopleSuggester;
@end

@implementation CDPeopleSuggester

+ (id)peopleSuggester
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___CDPeopleSuggester;
  v2 = objc_msgSendSuper2(&v8, "peopleSuggester");
  v3 = [NSSet setWithArray:&off_100646F10];
  v4 = [v2 settings];
  [v4 setConstrainPersonIdType:v3];

  v5 = [NSSet setWithArray:&off_100646F28];
  v6 = [v2 settings];
  [v6 setConstrainMechanisms:v5];

  return v2;
}

@end