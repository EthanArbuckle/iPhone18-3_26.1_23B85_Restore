@interface NSString
- (BOOL)isEmailAddress;
- (BOOL)isPhoneNumber;
- (NSString)stringWithSchemeTrimmed;
- (id)unformattedPhoneNumber;
@end

@implementation NSString

- (id)unformattedPhoneNumber
{
  v2 = IDSCopyIDForPhoneNumber();

  return v2;
}

- (BOOL)isEmailAddress
{
  v3 = [(NSString *)self length];
  if (v3)
  {
    LOBYTE(v3) = [(NSString *)self hasPrefix:@"mailto:"]|| CFStringFind(self, @"@", 0).location != -1;
  }

  return v3;
}

- (BOOL)isPhoneNumber
{
  if ([(NSString *)self length]< 3)
  {
    return 0;
  }

  if ([(NSString *)self hasPrefix:@"tel:"])
  {
    return 1;
  }

  return CFStringFind(self, @"@", 0).location == -1;
}

- (NSString)stringWithSchemeTrimmed
{
  v3 = [NSURL URLWithString:self];
  if (!v3)
  {
    goto LABEL_8;
  }

  if ([(NSString *)self isEmailAddress])
  {
    v4 = [v3 absoluteString];
    v5 = v4;
    v6 = @"mailto:";
LABEL_6:
    v7 = [v4 stringByReplacingOccurrencesOfString:v6 withString:&stru_100069830];

    goto LABEL_9;
  }

  if ([(NSString *)self isPhoneNumber])
  {
    v4 = [v3 absoluteString];
    v5 = v4;
    v6 = @"tel:";
    goto LABEL_6;
  }

  if (![(NSString *)self length])
  {
    v7 = @"<UNKNOWN>";
  }

  else
  {
LABEL_8:
    v7 = [(NSString *)self copy];
  }

LABEL_9:

  return v7;
}

@end