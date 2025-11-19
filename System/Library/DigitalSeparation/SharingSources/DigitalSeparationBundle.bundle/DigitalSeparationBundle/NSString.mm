@interface NSString
- (BOOL)hmds_isEmail;
- (BOOL)hmds_isPhoneNumber;
@end

@implementation NSString

- (BOOL)hmds_isEmail
{
  if (qword_119A0 != -1)
  {
    dispatch_once(&qword_119A0, &stru_C640);
  }

  v3 = qword_11998;

  return [v3 evaluateWithObject:self];
}

- (BOOL)hmds_isPhoneNumber
{
  if (![(NSString *)self length])
  {
    return 0;
  }

  v3 = +[NSMutableCharacterSet decimalDigitCharacterSet];
  [v3 addCharactersInString:@"+()-"];
  v4 = +[NSCharacterSet controlCharacterSet];
  [v3 formUnionWithCharacterSet:v4];

  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  [v3 formUnionWithCharacterSet:v5];

  v6 = [(NSString *)self componentsSeparatedByCharactersInSet:v3];
  v7 = [v6 componentsJoinedByString:&stru_C7F0];

  v8 = [v7 length] == 0;
  return v8;
}

@end