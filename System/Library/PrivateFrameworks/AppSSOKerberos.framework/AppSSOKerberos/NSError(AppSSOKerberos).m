@interface NSError(AppSSOKerberos)
+ (id)kerberosErrorWithCode:()AppSSOKerberos withDescription:;
@end

@implementation NSError(AppSSOKerberos)

+ (id)kerberosErrorWithCode:()AppSSOKerberos withDescription:
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [v5 alloc];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [v7 initWithDomain:@"com.apple.AppSSO" code:a3 userInfo:v8];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end