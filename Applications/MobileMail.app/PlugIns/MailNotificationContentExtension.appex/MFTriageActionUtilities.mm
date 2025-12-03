@interface MFTriageActionUtilities
+ (id)actionKeyForTriageAction:(int64_t)action;
+ (int64_t)triageActionForActionKey:(id)key;
@end

@implementation MFTriageActionUtilities

+ (int64_t)triageActionForActionKey:(id)key
{
  keyCopy = key;
  v4 = sub_10001C20C();
  v5 = [v4 objectForKey:keyCopy];

  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)actionKeyForTriageAction:(int64_t)action
{
  v4 = sub_10001C20C();
  v5 = [NSNumber numberWithInteger:action];
  v6 = [v4 allKeysForObject:v5];

  if ([v6 count] == 1)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end