@interface NSString(AXAudit)
- (id)axAuditStringForLog;
- (uint64_t)axAuditStringIsHumanReadable;
@end

@implementation NSString(AXAudit)

- (id)axAuditStringForLog
{
  if ([a1 isEqualToString:@"\n"])
  {
    v2 = a1;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v3 setDateFormat:@"HH:mm:ss.SSS"];
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [v3 stringFromDate:v4];
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] %@\n", v5, a1];
  }

  return v2;
}

- (uint64_t)axAuditStringIsHumanReadable
{
  v2 = [a1 uppercaseString];
  if ([v2 isEqualToString:a1])
  {
    v3 = [a1 containsString:@"_"];
  }

  else
  {
    v3 = 0;
  }

  v4 = [a1 stringByReplacingOccurrencesOfString:@" " withString:&stru_284FBB130];
  if ([a1 isEqualToString:v4])
  {
    v5 = [a1 containsString:@"."];
  }

  else
  {
    v5 = 0;
  }

  v6 = ([a1 length] < 5) | ~(v3 | v5);

  return v6 & 1;
}

@end