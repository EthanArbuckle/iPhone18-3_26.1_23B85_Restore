@interface MLCErrors
+ (id)createErrorWithCode:(int64_t)a3 description:(id)a4;
+ (id)invalidInputErrorForMethod:(id)a3 description:(id)a4;
+ (id)invalidStateErrorForMethod:(id)a3 description:(id)a4;
@end

@implementation MLCErrors

+ (id)createErrorWithCode:(int64_t)a3 description:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MEMORY[0x277CCA9B8];
  v7 = +[MLCStrings errorDomainGeneric];
  v17 = *MEMORY[0x277CCA450];
  v18[0] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v9 = [v6 errorWithDomain:v7 code:a3 userInfo:v8];

  v10 = +[MLCLog framework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_238C1D000, v10, OS_LOG_TYPE_INFO, "%@ : %@", &v13, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)invalidStateErrorForMethod:(id)a3 description:(id)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid state : %@", a3, a4];
  v6 = [a1 createErrorWithCode:1 description:v5];

  return v6;
}

+ (id)invalidInputErrorForMethod:(id)a3 description:(id)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid inputs : %@", a3, a4];
  v6 = [a1 createErrorWithCode:1 description:v5];

  return v6;
}

@end