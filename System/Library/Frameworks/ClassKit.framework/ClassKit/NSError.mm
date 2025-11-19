@interface NSError
- (BOOL)cls_isConstraintViolation;
- (BOOL)cls_isDatabaseCorruptionError;
@end

@implementation NSError

- (BOOL)cls_isDatabaseCorruptionError
{
  v3 = [(NSError *)self domain];
  if ([v3 isEqualToString:@"com.apple.SQLite"])
  {
    v4 = [(NSError *)self code]== 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)cls_isConstraintViolation
{
  v3 = [(NSError *)self domain];
  if ([v3 isEqualToString:@"com.apple.SQLite"])
  {
    v4 = [(NSError *)self code];

    if (v4 == 19)
    {
      return 1;
    }
  }

  else
  {
  }

  v6 = [(NSError *)self userInfo];
  v7 = [v6 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (v7)
  {
    v5 = [v7 cls_isConstraintViolation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end