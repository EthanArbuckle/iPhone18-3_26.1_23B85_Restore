@interface SPError
+ (id)errorWithCode:(int64_t)a3;
+ (id)errorWithCode:(int64_t)a3 additionalDescription:(id)a4;
@end

@implementation SPError

+ (id)errorWithCode:(int64_t)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  if (a3 > 0x1C)
  {
    v5 = @"SPErrorUnknownMessage";
  }

  else
  {
    v5 = off_278B7DF38[a3];
  }

  v6 = spUtils_localizedStringForSystemLanguage(v5, @"/System/Library/Frameworks/WatchKit.framework");
  if (v6)
  {
    v5 = v6;
  }

  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA450]];
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.watchkit.errors" code:a3 userInfo:v4];

  return v7;
}

+ (id)errorWithCode:(int64_t)a3 additionalDescription:(id)a4
{
  v6 = a4;
  v7 = [a1 errorWithCode:a3];
  v8 = [v7 userInfo];
  v9 = [v8 mutableCopy];

  [v9 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA470]];
  v10 = MEMORY[0x277CCA9B8];
  v11 = [v7 domain];
  v12 = [v10 errorWithDomain:v11 code:objc_msgSend(v7 userInfo:{"code"), v9}];

  return v12;
}

@end