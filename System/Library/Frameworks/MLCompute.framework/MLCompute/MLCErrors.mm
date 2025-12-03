@interface MLCErrors
+ (id)createErrorWithCode:(int64_t)code description:(id)description;
+ (id)invalidInputErrorForMethod:(id)method description:(id)description;
+ (id)invalidStateErrorForMethod:(id)method description:(id)description;
@end

@implementation MLCErrors

+ (id)createErrorWithCode:(int64_t)code description:(id)description
{
  v18[1] = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  v6 = MEMORY[0x277CCA9B8];
  v7 = +[MLCStrings errorDomainGeneric];
  v17 = *MEMORY[0x277CCA450];
  v18[0] = descriptionCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v9 = [v6 errorWithDomain:v7 code:code userInfo:v8];

  v10 = +[MLCLog framework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = descriptionCopy;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_238C1D000, v10, OS_LOG_TYPE_INFO, "%@ : %@", &v13, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)invalidStateErrorForMethod:(id)method description:(id)description
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid state : %@", method, description];
  v6 = [self createErrorWithCode:1 description:v5];

  return v6;
}

+ (id)invalidInputErrorForMethod:(id)method description:(id)description
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid inputs : %@", method, description];
  v6 = [self createErrorWithCode:1 description:v5];

  return v6;
}

@end