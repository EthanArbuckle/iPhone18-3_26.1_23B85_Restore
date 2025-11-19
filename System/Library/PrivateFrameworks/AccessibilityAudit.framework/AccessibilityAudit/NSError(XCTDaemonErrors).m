@interface NSError(XCTDaemonErrors)
+ (id)_axAudit_error:()XCTDaemonErrors description:;
@end

@implementation NSError(XCTDaemonErrors)

+ (id)_axAudit_error:()XCTDaemonErrors description:
{
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCACA8];
  v11 = a4;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v17 = *MEMORY[0x277CCA450];
  v18[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.accessibilityAudit" code:a3 userInfo:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end