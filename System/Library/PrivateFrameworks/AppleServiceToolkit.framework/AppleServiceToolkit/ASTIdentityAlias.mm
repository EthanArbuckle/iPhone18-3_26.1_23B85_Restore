@interface ASTIdentityAlias
+ (id)identityAliasWithChipId:(id)a3 uniqueChipId:(id)a4;
+ (id)identityAliasWithMainLogicBoardSerialNumber:(id)a3;
+ (id)identityAliasWithSerialNumber:(id)a3;
- (ASTIdentityAlias)init;
- (ASTIdentityAlias)initWithChipId:(id)a3 uniqueChipId:(id)a4;
- (ASTIdentityAlias)initWithCoder:(id)a3;
- (ASTIdentityAlias)initWithMainLogicBoardSerialNumber:(id)a3;
- (ASTIdentityAlias)initWithSerialNumber:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASTIdentityAlias

+ (id)identityAliasWithSerialNumber:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSerialNumber:v4];

  return v5;
}

- (ASTIdentityAlias)initWithSerialNumber:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTIdentityAlias *)self init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v11[0] = @"type";
      v11[1] = @"serialNumber";
      v12[0] = @"FGSN";
      v12[1] = v4;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
      v8 = [v7 mutableCopy];

      [(ASTIdentityAlias *)v6 setDictionary:v8];
    }

    else
    {

      v6 = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)identityAliasWithMainLogicBoardSerialNumber:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithMainLogicBoardSerialNumber:v4];

  return v5;
}

- (ASTIdentityAlias)initWithMainLogicBoardSerialNumber:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTIdentityAlias *)self init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = objc_alloc(MEMORY[0x277CBEB38]);
      v12[0] = @"type";
      v12[1] = @"serialNumber";
      v13[0] = @"MLBSN";
      v13[1] = v4;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
      v9 = [v7 initWithDictionary:v8];

      [(ASTIdentityAlias *)v6 setDictionary:v9];
    }

    else
    {

      v6 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (ASTIdentityAlias)init
{
  v14[2] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = ASTIdentityAlias;
  v2 = [(ASTIdentityAlias *)&v12 init];
  if (v2)
  {
    v3 = MGCopyAnswer();
    v13[0] = @"type";
    v13[1] = @"serialNumber";
    v14[0] = @"FGSN";
    v14[1] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    dictionary = v2->_dictionary;
    v2->_dictionary = v4;

    v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AppleServiceToolkit"];
    if (+[ASTEnvironment isInternalBuild])
    {
      v7 = [(NSDictionary *)v2->_dictionary mutableCopy];
      v8 = [v6 objectForKey:@"TimberLorrySession"];
      [(NSDictionary *)v7 setValue:v8 forKey:@"isTimberLorryTestSession"];
      v9 = v2->_dictionary;
      v2->_dictionary = v7;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

- (ASTIdentityAlias)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ASTIdentityAlias;
  v5 = [(ASTIdentityAlias *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASTIdentityAlias *)self dictionary];
  [v4 encodeObject:v5 forKey:@"dictionary"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSDictionary *)self->_dictionary copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

+ (id)identityAliasWithChipId:(id)a3 uniqueChipId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithChipId:v7 uniqueChipId:v6];

  return v8;
}

- (ASTIdentityAlias)initWithChipId:(id)a3 uniqueChipId:(id)a4
{
  v18[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ASTIdentityAlias *)self init];
  v9 = v8;
  if (v8)
  {
    if (v6 && v7)
    {
      v10 = objc_alloc(MEMORY[0x277CBEB38]);
      v18[0] = @"ECID";
      v17[0] = @"type";
      v17[1] = @"chipId";
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%08llX", objc_msgSend(v6, "unsignedLongLongValue")];
      v18[1] = v11;
      v17[2] = @"ECID";
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%016llX", objc_msgSend(v7, "unsignedLongLongValue")];
      v18[2] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
      v14 = [v10 initWithDictionary:v13];

      [(ASTIdentityAlias *)v9 setDictionary:v14];
    }

    else
    {

      v9 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

@end