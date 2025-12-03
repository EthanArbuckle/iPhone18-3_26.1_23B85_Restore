@interface NSString(AXAudit)
- (id)axAuditStringForLog;
- (uint64_t)axAuditStringIsHumanReadable;
@end

@implementation NSString(AXAudit)

- (id)axAuditStringForLog
{
  if ([self isEqualToString:@"\n"])
  {
    selfCopy = self;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v3 setDateFormat:@"HH:mm:ss.SSS"];
    date = [MEMORY[0x277CBEAA8] date];
    v5 = [v3 stringFromDate:date];
    selfCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] %@\n", v5, self];
  }

  return selfCopy;
}

- (uint64_t)axAuditStringIsHumanReadable
{
  uppercaseString = [self uppercaseString];
  if ([uppercaseString isEqualToString:self])
  {
    v3 = [self containsString:@"_"];
  }

  else
  {
    v3 = 0;
  }

  v4 = [self stringByReplacingOccurrencesOfString:@" " withString:&stru_284FBB130];
  if ([self isEqualToString:v4])
  {
    v5 = [self containsString:@"."];
  }

  else
  {
    v5 = 0;
  }

  v6 = ([self length] < 5) | ~(v3 | v5);

  return v6 & 1;
}

@end