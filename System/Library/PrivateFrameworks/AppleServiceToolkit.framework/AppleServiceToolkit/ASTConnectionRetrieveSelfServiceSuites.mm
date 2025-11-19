@interface ASTConnectionRetrieveSelfServiceSuites
- (ASTConnectionRetrieveSelfServiceSuites)initWithConfigCode:(id)a3;
- (id)parameters;
@end

@implementation ASTConnectionRetrieveSelfServiceSuites

- (ASTConnectionRetrieveSelfServiceSuites)initWithConfigCode:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASTConnectionRetrieveSelfServiceSuites;
  v6 = [(ASTMaterializedConnection *)&v9 init];
  v7 = v6;
  if (v5 && v6)
  {
    objc_storeStrong(&v6->_configCode, a3);
  }

  return v7;
}

- (id)parameters
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"configCode";
  v2 = [(ASTConnectionRetrieveSelfServiceSuites *)self configCode];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end