@interface ASTTestAttributes
+ (id)attributesWithTestId:(id)a3 version:(id)a4;
- (ASTTestAttributes)init;
- (ASTTestAttributes)initWithTestId:(id)a3 version:(id)a4;
- (NSDictionary)dictionary;
- (id)description;
@end

@implementation ASTTestAttributes

- (ASTTestAttributes)init
{
  v3 = [MEMORY[0x277CBEB68] null];
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = [(ASTTestAttributes *)self initWithTestId:v3 version:v4];

  return v5;
}

- (ASTTestAttributes)initWithTestId:(id)a3 version:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ASTTestAttributes;
  v9 = [(ASTTestAttributes *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_testId, a3);
    objc_storeStrong(&v10->_version, a4);
  }

  return v10;
}

+ (id)attributesWithTestId:(id)a3 version:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTestId:v7 version:v6];

  return v8;
}

- (NSDictionary)dictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"testId";
  v3 = [(ASTTestAttributes *)self testId];
  v8[1] = @"version";
  v9[0] = v3;
  v4 = [(ASTTestAttributes *)self version];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ASTTestAttributes *)self testId];
  v5 = [(ASTTestAttributes *)self version];
  v6 = [v3 stringWithFormat:@"Test Id: %@, Version: %@", v4, v5];

  return v6;
}

@end