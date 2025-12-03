@interface WKError
+ (id)errorWithCode:(int64_t)code;
@end

@implementation WKError

+ (id)errorWithCode:(int64_t)code
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  if ((code - 1) > 5)
  {
    v6 = @"WatchKitErrorUnknownErrorMessage";
  }

  else
  {
    v6 = off_278B7E610[code - 1];
  }

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v8 = [v7 localizedStringForKey:v6 value:&stru_284DFE9D8 table:@"Localizable"];

  if (v8)
  {
    v6 = v8;
  }

  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA450]];
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.watchkit.errors" code:code userInfo:v5];

  return v9;
}

@end