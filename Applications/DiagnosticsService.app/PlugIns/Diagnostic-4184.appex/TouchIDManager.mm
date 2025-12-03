@interface TouchIDManager
+ (id)convertKey:(id)key toJSON:(BOOL)n;
@end

@implementation TouchIDManager

+ (id)convertKey:(id)key toJSON:(BOOL)n
{
  nCopy = n;
  keyCopy = key;
  v6 = [keyCopy mutableCopy];
  v7 = [keyCopy characterAtIndex:0];

  if (nCopy)
  {
    if (v7 == 107)
    {
      [v6 deleteCharactersInRange:{0, 1}];
      v8 = [v6 substringWithRange:{0, 1}];
      lowercaseString = [v8 lowercaseString];
      [v6 replaceCharactersInRange:0 withString:{1, lowercaseString}];
    }
  }

  else if (v7 != 107)
  {
    v10 = [v6 substringWithRange:{0, 1}];
    uppercaseString = [v10 uppercaseString];
    [v6 replaceCharactersInRange:0 withString:{1, uppercaseString}];

    [v6 insertString:@"k" atIndex:0];
  }

  return v6;
}

@end