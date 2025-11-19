@interface TouchIDManager
+ (id)convertKey:(id)a3 toJSON:(BOOL)a4;
@end

@implementation TouchIDManager

+ (id)convertKey:(id)a3 toJSON:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 mutableCopy];
  v7 = [v5 characterAtIndex:0];

  if (v4)
  {
    if (v7 == 107)
    {
      [v6 deleteCharactersInRange:{0, 1}];
      v8 = [v6 substringWithRange:{0, 1}];
      v9 = [v8 lowercaseString];
      [v6 replaceCharactersInRange:0 withString:{1, v9}];
    }
  }

  else if (v7 != 107)
  {
    v10 = [v6 substringWithRange:{0, 1}];
    v11 = [v10 uppercaseString];
    [v6 replaceCharactersInRange:0 withString:{1, v11}];

    [v6 insertString:@"k" atIndex:0];
  }

  return v6;
}

@end