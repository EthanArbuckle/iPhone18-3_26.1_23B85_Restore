@interface ATInternalError
+ (id)errorWithCode:(unint64_t)code format:(id)format;
+ (id)errorWithCode:(unint64_t)code underlyingError:(id)error;
@end

@implementation ATInternalError

+ (id)errorWithCode:(unint64_t)code underlyingError:(id)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA7E8];
  v13[0] = error;
  v6 = MEMORY[0x277CBEAC0];
  errorCopy = error;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"ATInternalError" code:code userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)errorWithCode:(unint64_t)code format:(id)format
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v7 = [[v5 alloc] initWithFormat:formatCopy arguments:&v16];

  v8 = MEMORY[0x277CCA9B8];
  v13 = *MEMORY[0x277CCA450];
  v14[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v8 errorWithDomain:@"ATInternalError" code:code userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end