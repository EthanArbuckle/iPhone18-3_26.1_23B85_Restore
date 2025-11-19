@interface NSError(ATXErrorSupport)
+ (id)atx_errorWithCode:()ATXErrorSupport debugDescription:;
+ (id)atx_errorWithCode:()ATXErrorSupport debugDescription:underlyingError:;
+ (id)atx_errorWithCode:()ATXErrorSupport debugDescription:underlyingErrors:;
+ (id)atx_errorWithCode:()ATXErrorSupport userInfoProvider:;
@end

@implementation NSError(ATXErrorSupport)

+ (id)atx_errorWithCode:()ATXErrorSupport debugDescription:
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA068];
  v13[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [a1 atx_errorWithCode:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)atx_errorWithCode:()ATXErrorSupport debugDescription:underlyingError:
{
  v17[2] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CCA7E8];
  v16[0] = *MEMORY[0x277CCA068];
  v16[1] = v8;
  v17[0] = a4;
  v17[1] = a5;
  v9 = MEMORY[0x277CBEAC0];
  v10 = a5;
  v11 = a4;
  v12 = [v9 dictionaryWithObjects:v17 forKeys:v16 count:2];

  v13 = [a1 atx_errorWithCode:a3 userInfo:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)atx_errorWithCode:()ATXErrorSupport debugDescription:underlyingErrors:
{
  v17[2] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CCA578];
  v16[0] = *MEMORY[0x277CCA068];
  v16[1] = v8;
  v17[0] = a4;
  v17[1] = a5;
  v9 = MEMORY[0x277CBEAC0];
  v10 = a5;
  v11 = a4;
  v12 = [v9 dictionaryWithObjects:v17 forKeys:v16 count:2];

  v13 = [a1 atx_errorWithCode:a3 userInfo:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)atx_errorWithCode:()ATXErrorSupport userInfoProvider:
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  v7[2](v7, v8);

  v9 = [v8 copy];
  v10 = [a1 atx_errorWithCode:a3 userInfo:v9];

  return v10;
}

@end