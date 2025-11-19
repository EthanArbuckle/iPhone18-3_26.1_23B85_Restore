@interface NSString(Padding)
- (id)stringByLeftPaddingToLength:()Padding withString:startingAtIndex:;
@end

@implementation NSString(Padding)

- (id)stringByLeftPaddingToLength:()Padding withString:startingAtIndex:
{
  v8 = a4;
  v9 = [&stru_1F149ECA8 stringByPaddingToLength:a3 - objc_msgSend(a1 withString:"length") startingAtIndex:{v8, a5}];

  v10 = [v9 stringByAppendingString:a1];

  return v10;
}

@end