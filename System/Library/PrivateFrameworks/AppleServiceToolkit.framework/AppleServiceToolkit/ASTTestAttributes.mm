@interface ASTTestAttributes
+ (id)attributesWithTestId:(id)id version:(id)version;
- (ASTTestAttributes)init;
- (ASTTestAttributes)initWithTestId:(id)id version:(id)version;
- (NSDictionary)dictionary;
- (id)description;
@end

@implementation ASTTestAttributes

- (ASTTestAttributes)init
{
  null = [MEMORY[0x277CBEB68] null];
  null2 = [MEMORY[0x277CBEB68] null];
  v5 = [(ASTTestAttributes *)self initWithTestId:null version:null2];

  return v5;
}

- (ASTTestAttributes)initWithTestId:(id)id version:(id)version
{
  idCopy = id;
  versionCopy = version;
  v12.receiver = self;
  v12.super_class = ASTTestAttributes;
  v9 = [(ASTTestAttributes *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_testId, id);
    objc_storeStrong(&v10->_version, version);
  }

  return v10;
}

+ (id)attributesWithTestId:(id)id version:(id)version
{
  versionCopy = version;
  idCopy = id;
  v8 = [[self alloc] initWithTestId:idCopy version:versionCopy];

  return v8;
}

- (NSDictionary)dictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"testId";
  testId = [(ASTTestAttributes *)self testId];
  v8[1] = @"version";
  v9[0] = testId;
  version = [(ASTTestAttributes *)self version];
  v9[1] = version;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  testId = [(ASTTestAttributes *)self testId];
  version = [(ASTTestAttributes *)self version];
  v6 = [v3 stringWithFormat:@"Test Id: %@, Version: %@", testId, version];

  return v6;
}

@end