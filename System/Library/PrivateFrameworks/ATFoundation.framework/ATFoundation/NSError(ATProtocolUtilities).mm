@interface NSError(ATProtocolUtilities)
- (id)ATPError;
- (id)initWithATPError:()ATProtocolUtilities;
@end

@implementation NSError(ATProtocolUtilities)

- (id)ATPError
{
  v2 = objc_opt_new();
  [v2 setCode:{objc_msgSend(a1, "code")}];
  v3 = [a1 domain];
  [v2 setDomain:v3];

  v4 = [a1 localizedDescription];
  [v2 setErrorDescription:v4];

  return v2;
}

- (id)initWithATPError:()ATProtocolUtilities
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 errorDescription];

  v6 = [v4 domain];
  v7 = [v4 code];
  v8 = v7;
  if (v5)
  {
    v9 = v7;
    v15 = *MEMORY[0x277CCA450];
    v10 = [v4 errorDescription];

    v16[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [a1 initWithDomain:v6 code:v9 userInfo:v11];
  }

  else
  {

    v12 = [a1 initWithDomain:v6 code:v8 userInfo:0];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

@end