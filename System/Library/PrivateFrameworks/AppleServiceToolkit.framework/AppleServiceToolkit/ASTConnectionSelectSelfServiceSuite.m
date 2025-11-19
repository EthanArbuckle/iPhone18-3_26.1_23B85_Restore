@interface ASTConnectionSelectSelfServiceSuite
- (ASTConnectionSelectSelfServiceSuite)initWithSuiteID:(id)a3;
@end

@implementation ASTConnectionSelectSelfServiceSuite

- (ASTConnectionSelectSelfServiceSuite)initWithSuiteID:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ASTConnectionSelectSelfServiceSuite;
  v5 = [(ASTMaterializedConnection *)&v11 init];
  v6 = v5;
  if (v4 && v5)
  {
    v12 = @"suiteId";
    v13[0] = v4;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    rawBody = v6->_rawBody;
    v6->_rawBody = v7;

    [(ASTMaterializedConnection *)v6 addBody:v6->_rawBody];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

@end