@interface NSError(ADError)
- (uint64_t)initWithAdCode:()ADError andDescription:;
- (void)AD_Log:()ADError;
@end

@implementation NSError(ADError)

- (uint64_t)initWithAdCode:()ADError andDescription:
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_2850FB348;
  }

  v12 = *MEMORY[0x277CCA450];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [a1 initWithDomain:@"com.apple.ap.adcore" code:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)AD_Log:()ADError
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v7 = [a1 localizedDescription];
  v6 = [v4 stringWithFormat:@"%@", v7];
  _ADLog(v5, v6, 0);
}

@end