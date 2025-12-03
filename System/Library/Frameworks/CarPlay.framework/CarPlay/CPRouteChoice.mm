@interface CPRouteChoice
- (BOOL)isEqual:(id)equal;
- (CPRouteChoice)initWithCoder:(id)coder;
- (CPRouteChoice)initWithSummaryVariants:(NSArray *)summaryVariants additionalInformationVariants:(NSArray *)additionalInformationVariants selectionSummaryVariants:(NSArray *)selectionSummaryVariants;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v12->_identifier;
    v12->_identifier = uUID;

    objc_storeStrong(&v12->_summaryVariants, summaryVariants);
    objc_storeStrong(&v12->_additionalInformationVariants, additionalInformationVariants);
    objc_storeStrong(&v12->_selectionSummaryVariants, selectionSummaryVariants);
  }

  return v12;
}

- (CPRouteChoice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPIdentifierKey"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kCPRouteChoiceSummaryVariantsKey"];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"kCPRouteChoiceAdditionalInformationVariantsKey"];

  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"kCPRouteChoiceSelectionSummaryVariantsKey"];

  v18 = [(CPRouteChoice *)self initWithSummaryVariants:v9 additionalInformationVariants:v13 selectionSummaryVariants:v17];
  [(CPRouteChoice *)v18 setIdentifier:v5];

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CPRouteChoice *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kCPIdentifierKey"];

  summaryVariants = [(CPRouteChoice *)self summaryVariants];
  [coderCopy encodeObject:summaryVariants forKey:@"kCPRouteChoiceSummaryVariantsKey"];

  additionalInformationVariants = [(CPRouteChoice *)self additionalInformationVariants];
  [coderCopy encodeObject:additionalInformationVariants forKey:@"kCPRouteChoiceAdditionalInformationVariantsKey"];

  selectionSummaryVariants = [(CPRouteChoice *)self selectionSummaryVariants];
  [coderCopy encodeObject:selectionSummaryVariants forKey:@"kCPRouteChoiceSelectionSummaryVariantsKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  uUID = [MEMORY[0x277CCAD78] UUID];
  [v4 setIdentifier:uUID];

  summaryVariants = [(CPRouteChoice *)self summaryVariants];
  [v4 setSummaryVariants:summaryVariants];

  additionalInformationVariants = [(CPRouteChoice *)self additionalInformationVariants];
  [v4 setAdditionalInformationVariants:additionalInformationVariants];

  selectionSummaryVariants = [(CPRouteChoice *)self selectionSummaryVariants];
  [v4 setSelectionSummaryVariants:selectionSummaryVariants];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(CPRouteChoice *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = [identifier isEqual:identifier2];
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