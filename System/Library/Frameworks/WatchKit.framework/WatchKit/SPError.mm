@interface SPError
+ (id)errorWithCode:(int64_t)code;
+ (id)errorWithCode:(int64_t)code additionalDescription:(id)description;
@end

@implementation SPError

+ (id)errorWithCode:(int64_t)code
{
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  if (code > 0x1C)
  {
    v5 = @"SPErrorUnknownMessage";
  }

  else
  {
    v5 = off_278B7DF38[code];
  }

  v6 = spUtils_localizedStringForSystemLanguage(v5, @"/System/Library/Frameworks/WatchKit.framework");
  if (v6)
  {
    v5 = v6;
  }

  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA450]];
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.watchkit.errors" code:code userInfo:v4];

  return v7;
}

+ (id)errorWithCode:(int64_t)code additionalDescription:(id)description
{
  descriptionCopy = description;
  v7 = [self errorWithCode:code];
  userInfo = [v7 userInfo];
  v9 = [userInfo mutableCopy];

  [v9 setObject:descriptionCopy forKeyedSubscript:*MEMORY[0x277CCA470]];
  v10 = MEMORY[0x277CCA9B8];
  domain = [v7 domain];
  v12 = [v10 errorWithDomain:domain code:objc_msgSend(v7 userInfo:{"code"), v9}];

  return v12;
}

@end