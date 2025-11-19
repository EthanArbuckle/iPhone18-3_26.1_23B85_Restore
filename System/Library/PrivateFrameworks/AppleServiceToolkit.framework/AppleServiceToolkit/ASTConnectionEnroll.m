@interface ASTConnectionEnroll
- (ASTConnectionEnroll)initWithIdentity:(id)a3;
@end

@implementation ASTConnectionEnroll

- (ASTConnectionEnroll)initWithIdentity:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ASTConnectionEnroll;
  v5 = [(ASTMaterializedConnection *)&v11 init];
  if (v5)
  {
    v6 = [v4 json];

    if (v6)
    {
      v12 = @"identifiers";
      v7 = [v4 json];
      v13[0] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      [(ASTMaterializedConnection *)v5 addBody:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

@end