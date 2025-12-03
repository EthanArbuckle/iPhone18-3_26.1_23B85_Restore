@interface ASTConnectionEnroll
- (ASTConnectionEnroll)initWithIdentity:(id)identity;
@end

@implementation ASTConnectionEnroll

- (ASTConnectionEnroll)initWithIdentity:(id)identity
{
  v13[1] = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v11.receiver = self;
  v11.super_class = ASTConnectionEnroll;
  v5 = [(ASTMaterializedConnection *)&v11 init];
  if (v5)
  {
    json = [identityCopy json];

    if (json)
    {
      v12 = @"identifiers";
      json2 = [identityCopy json];
      v13[0] = json2;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      [(ASTMaterializedConnection *)v5 addBody:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

@end