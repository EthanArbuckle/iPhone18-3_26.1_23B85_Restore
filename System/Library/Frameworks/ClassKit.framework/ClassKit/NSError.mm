@interface NSError
- (BOOL)cls_isConstraintViolation;
- (BOOL)cls_isDatabaseCorruptionError;
@end

@implementation NSError

- (BOOL)cls_isDatabaseCorruptionError
{
  domain = [(NSError *)self domain];
  if ([domain isEqualToString:@"com.apple.SQLite"])
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
  domain = [(NSError *)self domain];
  if ([domain isEqualToString:@"com.apple.SQLite"])
  {
    code = [(NSError *)self code];

    if (code == 19)
    {
      return 1;
    }
  }

  else
  {
  }

  userInfo = [(NSError *)self userInfo];
  v7 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (v7)
  {
    cls_isConstraintViolation = [v7 cls_isConstraintViolation];
  }

  else
  {
    cls_isConstraintViolation = 0;
  }

  return cls_isConstraintViolation;
}

@end