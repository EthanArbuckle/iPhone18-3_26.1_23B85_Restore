@interface CPPointsOfInterestEntity
- (CPPointsOfInterestEntity)initWithCoder:(id)coder;
- (CPPointsOfInterestEntity)initWithTitle:(id)title pointsOfInterest:(id)interest;
- (id)objectForIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPPointsOfInterestEntity

- (CPPointsOfInterestEntity)initWithTitle:(id)title pointsOfInterest:(id)interest
{
  titleCopy = title;
  interestCopy = interest;
  v12.receiver = self;
  v12.super_class = CPPointsOfInterestEntity;
  _init = [(CPEntity *)&v12 _init];
  if (_init)
  {
    v9 = [titleCopy copy];
    title = _init->_title;
    _init->_title = v9;

    objc_storeStrong(&_init->_pointsOfInterest, interest);
  }

  return _init;
}

- (CPPointsOfInterestEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CPPointsOfInterestEntity;
  v5 = [(CPEntity *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPPointsOfInterestEntityTitle"];
    title = v5->_title;
    v5->_title = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"CPPointsOfInterestEntityPointsOfInterest"];
    pointsOfInterest = v5->_pointsOfInterest;
    v5->_pointsOfInterest = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CPPointsOfInterestEntity;
  coderCopy = coder;
  [(CPEntity *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CPPointsOfInterestEntity *)self title:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"CPPointsOfInterestEntityTitle"];

  pointsOfInterest = [(CPPointsOfInterestEntity *)self pointsOfInterest];
  [coderCopy encodeObject:pointsOfInterest forKey:@"CPPointsOfInterestEntityPointsOfInterest"];
}

- (id)objectForIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  pointsOfInterest = [(CPPointsOfInterestEntity *)self pointsOfInterest];
  v6 = [pointsOfInterest countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(pointsOfInterest);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        primaryButton = [v10 primaryButton];
        v12 = primaryButton;
        if (primaryButton)
        {
          identifier = [primaryButton identifier];
          v14 = [identifier isEqual:identifierCopy];

          if (v14)
          {
            v16 = v12;
            goto LABEL_15;
          }
        }

        secondaryButton = [v10 secondaryButton];
        v16 = secondaryButton;
        if (secondaryButton)
        {
          identifier2 = [secondaryButton identifier];
          v18 = [identifier2 isEqual:identifierCopy];

          if (v18)
          {

            goto LABEL_15;
          }
        }
      }

      v7 = [pointsOfInterest countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_15:

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

@end