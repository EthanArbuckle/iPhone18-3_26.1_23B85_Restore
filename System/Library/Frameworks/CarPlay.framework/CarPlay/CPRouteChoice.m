@interface CPRouteChoice
- (BOOL)isEqual:(id)a3;
- (CPRouteChoice)initWithCoder:(id)a3;
- (CPRouteChoice)initWithSummaryVariants:(NSArray *)summaryVariants additionalInformationVariants:(NSArray *)additionalInformationVariants selectionSummaryVariants:(NSArray *)selectionSummaryVariants;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPRouteChoice

- (CPRouteChoice)initWithSummaryVariants:(NSArray *)summaryVariants additionalInformationVariants:(NSArray *)additionalInformationVariants selectionSummaryVariants:(NSArray *)selectionSummaryVariants
{
  v9 = summaryVariants;
  v10 = additionalInformationVariants;
  v11 = selectionSummaryVariants;
  v16.receiver = self;
  v16.super_class = CPRouteChoice;
  v12 = [(CPRouteChoice *)&v16 init];
  if (v12)
  {
    v13 = [MEMORY[0x277CCAD78] UUID];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    objc_storeStrong(&v12->_summaryVariants, summaryVariants);
    objc_storeStrong(&v12->_additionalInformationVariants, additionalInformationVariants);
    objc_storeStrong(&v12->_selectionSummaryVariants, selectionSummaryVariants);
  }

  return v12;
}

- (CPRouteChoice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPIdentifierKey"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kCPRouteChoiceSummaryVariantsKey"];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"kCPRouteChoiceAdditionalInformationVariantsKey"];

  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v17 = [v4 decodeObjectOfClasses:v16 forKey:@"kCPRouteChoiceSelectionSummaryVariantsKey"];

  v18 = [(CPRouteChoice *)self initWithSummaryVariants:v9 additionalInformationVariants:v13 selectionSummaryVariants:v17];
  [(CPRouteChoice *)v18 setIdentifier:v5];

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPRouteChoice *)self identifier];
  [v4 encodeObject:v5 forKey:@"kCPIdentifierKey"];

  v6 = [(CPRouteChoice *)self summaryVariants];
  [v4 encodeObject:v6 forKey:@"kCPRouteChoiceSummaryVariantsKey"];

  v7 = [(CPRouteChoice *)self additionalInformationVariants];
  [v4 encodeObject:v7 forKey:@"kCPRouteChoiceAdditionalInformationVariantsKey"];

  v8 = [(CPRouteChoice *)self selectionSummaryVariants];
  [v4 encodeObject:v8 forKey:@"kCPRouteChoiceSelectionSummaryVariantsKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [MEMORY[0x277CCAD78] UUID];
  [v4 setIdentifier:v5];

  v6 = [(CPRouteChoice *)self summaryVariants];
  [v4 setSummaryVariants:v6];

  v7 = [(CPRouteChoice *)self additionalInformationVariants];
  [v4 setAdditionalInformationVariants:v7];

  v8 = [(CPRouteChoice *)self selectionSummaryVariants];
  [v4 setSelectionSummaryVariants:v8];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CPRouteChoice *)self identifier];
    v6 = [v4 identifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CPRouteChoice;
  v4 = [(CPRouteChoice *)&v8 description];
  identifier = self->_identifier;
  v6 = [v3 stringWithFormat:@"%@ {identifier: %@, summaryVariants: %@, additionalInformationVariants: %@, selectionSummaryVariants %@}", v4, identifier, self->_summaryVariants, self->_additionalInformationVariants, self->_selectionSummaryVariants];

  return v6;
}

@end