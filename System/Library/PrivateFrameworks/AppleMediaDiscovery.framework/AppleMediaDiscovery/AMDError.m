@interface AMDError
+ (id)allocError:(int64_t)a3 withMessage:(id)a4;
@end

@implementation AMDError

+ (id)allocError:(int64_t)a3 withMessage:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v13 = a2;
  v12 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v5 localizedStringForKey:location value:&stru_2852A6E28 table:0];
  MEMORY[0x277D82BD8](v5);
  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v6 = v12;
  v15 = *MEMORY[0x277CCA450];
  v16[0] = v10;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v9 = [v7 initWithDomain:@"com.apple.AppleMediaDiscovery" code:v6 userInfo:?];
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v9;
}

@end