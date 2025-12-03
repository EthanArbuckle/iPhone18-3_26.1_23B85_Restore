@interface AMDError
+ (id)allocError:(int64_t)error withMessage:(id)message;
@end

@implementation AMDError

+ (id)allocError:(int64_t)error withMessage:(id)message
{
  v16[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v13 = a2;
  errorCopy = error;
  location = 0;
  objc_storeStrong(&location, message);
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [mainBundle localizedStringForKey:location value:&stru_2852A6E28 table:0];
  MEMORY[0x277D82BD8](mainBundle);
  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v6 = errorCopy;
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