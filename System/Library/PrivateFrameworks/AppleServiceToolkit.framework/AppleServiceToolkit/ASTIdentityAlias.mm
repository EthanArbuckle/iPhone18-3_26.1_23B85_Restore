@interface ASTIdentityAlias
+ (id)identityAliasWithChipId:(id)id uniqueChipId:(id)chipId;
+ (id)identityAliasWithMainLogicBoardSerialNumber:(id)number;
+ (id)identityAliasWithSerialNumber:(id)number;
- (ASTIdentityAlias)init;
- (ASTIdentityAlias)initWithChipId:(id)id uniqueChipId:(id)chipId;
- (ASTIdentityAlias)initWithCoder:(id)coder;
- (ASTIdentityAlias)initWithMainLogicBoardSerialNumber:(id)number;
- (ASTIdentityAlias)initWithSerialNumber:(id)number;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASTIdentityAlias

+ (id)identityAliasWithSerialNumber:(id)number
{
  numberCopy = number;
  v5 = [[self alloc] initWithSerialNumber:numberCopy];

  return v5;
}

- (ASTIdentityAlias)initWithSerialNumber:(id)number
{
  v12[2] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v5 = [(ASTIdentityAlias *)self init];
  v6 = v5;
  if (v5)
  {
    if (numberCopy)
    {
      v11[0] = @"type";
      v11[1] = @"serialNumber";
      v12[0] = @"FGSN";
      v12[1] = numberCopy;
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

+ (id)identityAliasWithMainLogicBoardSerialNumber:(id)number
{
  numberCopy = number;
  v5 = [[self alloc] initWithMainLogicBoardSerialNumber:numberCopy];

  return v5;
}

- (ASTIdentityAlias)initWithMainLogicBoardSerialNumber:(id)number
{
  v13[2] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v5 = [(ASTIdentityAlias *)self init];
  v6 = v5;
  if (v5)
  {
    if (numberCopy)
    {
      v7 = objc_alloc(MEMORY[0x277CBEB38]);
      v12[0] = @"type";
      v12[1] = @"serialNumber";
      v13[0] = @"MLBSN";
      v13[1] = numberCopy;
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

- (ASTIdentityAlias)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionary = [(ASTIdentityAlias *)self dictionary];
  [coderCopy encodeObject:dictionary forKey:@"dictionary"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSDictionary *)self->_dictionary copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

+ (id)identityAliasWithChipId:(id)id uniqueChipId:(id)chipId
{
  chipIdCopy = chipId;
  idCopy = id;
  v8 = [[self alloc] initWithChipId:idCopy uniqueChipId:chipIdCopy];

  return v8;
}

- (ASTIdentityAlias)initWithChipId:(id)id uniqueChipId:(id)chipId
{
  v18[3] = *MEMORY[0x277D85DE8];
  idCopy = id;
  chipIdCopy = chipId;
  v8 = [(ASTIdentityAlias *)self init];
  v9 = v8;
  if (v8)
  {
    if (idCopy && chipIdCopy)
    {
      v10 = objc_alloc(MEMORY[0x277CBEB38]);
      v18[0] = @"ECID";
      v17[0] = @"type";
      v17[1] = @"chipId";
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%08llX", objc_msgSend(idCopy, "unsignedLongLongValue")];
      v18[1] = v11;
      v17[2] = @"ECID";
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%016llX", objc_msgSend(chipIdCopy, "unsignedLongLongValue")];
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