@interface ASTConnectionRetrieveSelfServiceSuites
- (ASTConnectionRetrieveSelfServiceSuites)initWithConfigCode:(id)code;
- (id)parameters;
@end

@implementation ASTConnectionRetrieveSelfServiceSuites

- (ASTConnectionRetrieveSelfServiceSuites)initWithConfigCode:(id)code
{
  codeCopy = code;
  v9.receiver = self;
  v9.super_class = ASTConnectionRetrieveSelfServiceSuites;
  v6 = [(ASTMaterializedConnection *)&v9 init];
  v7 = v6;
  if (codeCopy && v6)
  {
    objc_storeStrong(&v6->_configCode, code);
  }

  return v7;
}

- (id)parameters
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"configCode";
  configCode = [(ASTConnectionRetrieveSelfServiceSuites *)self configCode];
  v7[0] = configCode;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end