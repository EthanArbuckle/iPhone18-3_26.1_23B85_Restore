@interface CPPointsOfInterestEntity
- (CPPointsOfInterestEntity)initWithCoder:(id)a3;
- (CPPointsOfInterestEntity)initWithTitle:(id)a3 pointsOfInterest:(id)a4;
- (id)objectForIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPPointsOfInterestEntity

- (CPPointsOfInterestEntity)initWithTitle:(id)a3 pointsOfInterest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CPPointsOfInterestEntity;
  v8 = [(CPEntity *)&v12 _init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    objc_storeStrong(&v8->_pointsOfInterest, a4);
  }

  return v8;
}

- (CPPointsOfInterestEntity)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CPPointsOfInterestEntity;
  v5 = [(CPEntity *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPPointsOfInterestEntityTitle"];
    title = v5->_title;
    v5->_title = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"CPPointsOfInterestEntityPointsOfInterest"];
    pointsOfInterest = v5->_pointsOfInterest;
    v5->_pointsOfInterest = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CPPointsOfInterestEntity;
  v4 = a3;
  [(CPEntity *)&v7 encodeWithCoder:v4];
  v5 = [(CPPointsOfInterestEntity *)self title:v7.receiver];
  [v4 encodeObject:v5 forKey:@"CPPointsOfInterestEntityTitle"];

  v6 = [(CPPointsOfInterestEntity *)self pointsOfInterest];
  [v4 encodeObject:v6 forKey:@"CPPointsOfInterestEntityPointsOfInterest"];
}

- (id)objectForIdentifier:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(CPPointsOfInterestEntity *)self pointsOfInterest];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 primaryButton];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 identifier];
          v14 = [v13 isEqual:v4];

          if (v14)
          {
            v16 = v12;
            goto LABEL_15;
          }
        }

        v15 = [v10 secondaryButton];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 identifier];
          v18 = [v17 isEqual:v4];

          if (v18)
          {

            goto LABEL_15;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
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