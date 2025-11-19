@interface AEAssessmentIndividualConfiguration
- (AEAssessmentIndividualConfiguration)init;
- (AEAssessmentIndividualConfiguration)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (uint64_t)isEqualToConfiguration:(uint64_t)a1;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AEAssessmentIndividualConfiguration

- (AEAssessmentIndividualConfiguration)init
{
  v6.receiver = self;
  v6.super_class = AEAssessmentIndividualConfiguration;
  v2 = [(AEAssessmentIndividualConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_allowsNetworkAccess = 1;
    configurationInfo = v2->_configurationInfo;
    v2->_configurationInfo = MEMORY[0x277CBEC10];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setAllowsNetworkAccess:{-[AEAssessmentIndividualConfiguration allowsNetworkAccess](self, "allowsNetworkAccess")}];
  [v4 setRequired:{-[AEAssessmentIndividualConfiguration isRequired](self, "isRequired")}];
  v5 = [(AEAssessmentIndividualConfiguration *)self configurationInfo];
  v6 = [v5 copy];
  [v4 setConfigurationInfo:v6];

  return v4;
}

- (AEAssessmentIndividualConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = AEAssessmentIndividualConfiguration;
  v5 = [(AEAssessmentIndividualConfiguration *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsNetworkAccess"];
    v5->_allowsNetworkAccess = [v6 BOOLValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"required"];
    v5->_required = [v7 BOOLValue];

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v8 setWithObjects:{v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"configurationInfo"];
    configurationInfo = v5->_configurationInfo;
    v5->_configurationInfo = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithBool:{-[AEAssessmentIndividualConfiguration allowsNetworkAccess](self, "allowsNetworkAccess")}];
  [v5 encodeObject:v6 forKey:@"allowsNetworkAccess"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentIndividualConfiguration isRequired](self, "isRequired")}];
  [v5 encodeObject:v7 forKey:@"required"];

  v8 = [(AEAssessmentIndividualConfiguration *)self configurationInfo];
  [v5 encodeObject:v8 forKey:@"configurationInfo"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentIndividualConfiguration allowsNetworkAccess](self, "allowsNetworkAccess")}];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentIndividualConfiguration isRequired](self, "isRequired")}];
  v6 = [v5 hash] ^ v4;
  v7 = [(AEAssessmentIndividualConfiguration *)self configurationInfo];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      v6 = 1;
      goto LABEL_6;
    }

    if ([(AEAssessmentIndividualConfiguration *)v4 isMemberOfClass:objc_opt_class()])
    {
      v6 = [(AEAssessmentIndividualConfiguration *)self isEqualToConfiguration:v5];
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = @"Yes";
  if ([(AEAssessmentIndividualConfiguration *)self allowsNetworkAccess])
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  if (![(AEAssessmentIndividualConfiguration *)self isRequired])
  {
    v5 = @"No";
  }

  v7 = [(AEAssessmentIndividualConfiguration *)self configurationInfo];
  v8 = [v3 stringWithFormat:@"<%@: %p { allowsNetworkAccess = %@, required = %@, configurationInfo = %@ }>", v4, self, v6, v5, v7];

  return v8;
}

- (uint64_t)isEqualToConfiguration:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = [a1 allowsNetworkAccess];
    if (v5 != [v4 allowsNetworkAccess] || (v6 = objc_msgSend(a1, "isRequired"), v6 != objc_msgSend(v4, "isRequired")))
    {
      a1 = 0;
      goto LABEL_12;
    }

    v7 = [a1 configurationInfo];
    if (v7 || ([v4 configurationInfo], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [a1 configurationInfo];
      v9 = [v4 configurationInfo];
      a1 = [v8 isEqual:v9];

      if (v7)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      a1 = 1;
    }

    goto LABEL_11;
  }

LABEL_12:

  return a1;
}

@end