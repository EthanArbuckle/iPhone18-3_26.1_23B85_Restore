@interface NSError(AEAdditions)
+ (id)formattedCode:()AEAdditions;
- (id)verboseDescriptionWithIndentation:()AEAdditions;
@end

@implementation NSError(AEAdditions)

- (id)verboseDescriptionWithIndentation:()AEAdditions
{
  v5 = [&stru_284EF2600 stringByPaddingToLength:a3 withString:@" " startingAtIndex:0];
  userInfo = [self userInfo];
  v7 = [userInfo mutableCopy];

  v8 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@%@: %@\n", v5, objc_opt_class(), self];
  localizedDescription = [self localizedDescription];

  if (localizedDescription)
  {
    localizedDescription2 = [self localizedDescription];
    [v8 appendFormat:@"%@Desc   : %@\n", v5, localizedDescription2];

    [v7 removeObjectForKey:*MEMORY[0x277CCA450]];
  }

  localizedRecoverySuggestion = [self localizedRecoverySuggestion];

  if (localizedRecoverySuggestion)
  {
    localizedRecoverySuggestion2 = [self localizedRecoverySuggestion];
    [v8 appendFormat:@"%@Sugg   : %@\n", v5, localizedRecoverySuggestion2];

    [v7 removeObjectForKey:*MEMORY[0x277CCA498]];
  }

  userInfo2 = [self userInfo];
  v14 = [userInfo2 objectForKeyedSubscript:@"NSDescription"];

  if (v14)
  {
    userInfo3 = [self userInfo];
    v16 = [userInfo3 objectForKeyedSubscript:@"NSDescription"];
    [v8 appendFormat:@"%@US Desc: %@\n", v5, v16];

    [v7 removeObjectForKey:@"NSDescription"];
  }

  userInfo4 = [self userInfo];
  v18 = [userInfo4 objectForKeyedSubscript:@"NSRecoverySuggestion"];

  if (v18)
  {
    userInfo5 = [self userInfo];
    v20 = [userInfo5 objectForKeyedSubscript:@"NSRecoverySuggestion"];
    [v8 appendFormat:@"%@US Sugg: %@\n", v5, v20];

    [v7 removeObjectForKey:@"NSRecoverySuggestion"];
  }

  domain = [self domain];
  [v8 appendFormat:@"%@Domain : %@\n", v5, domain];

  v22 = [objc_opt_class() formattedCode:{objc_msgSend(self, "code")}];
  [v8 appendFormat:@"%@Code   : %@\n", v5, v22];

  userInfo6 = [self userInfo];
  v24 = *MEMORY[0x277CCA7E8];
  v25 = [userInfo6 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (v25)
  {
    v26 = [v25 verboseDescriptionWithIndentation:a3 + 2];
    [v8 appendFormat:@"%@...Underlying error:\n%@", v5, v26];

    [v7 removeObjectForKey:v24];
  }

  if ([v7 count])
  {
    [v8 appendFormat:@"%@Extra info:\n%@", v5, v7];
  }

  return v8;
}

+ (id)formattedCode:()AEAdditions
{
  v4 = a3 >> 26;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%lX (%ld)", a3, a3];
  v6 = v5;
  if (v4)
  {
    0x3FFF = [v5 stringByAppendingFormat:@" [sys = 0x%1$lX, sub = 0x%2$lX, code = 0x%3$lX (%3$ld)]", v4, (a3 >> 14) & 0xFFF, a3 & 0x3FFF];

    v6 = 0x3FFF;
  }

  return v6;
}

@end