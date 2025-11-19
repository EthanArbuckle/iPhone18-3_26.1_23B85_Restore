@interface CPContactEntity
- (BOOL)isEqual:(id)a3;
- (CPContactEntity)initWithCoder:(id)a3;
- (CPContactEntity)initWithName:(id)a3 imageSet:(id)a4;
- (NSString)description;
- (id)objectForIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPContactEntity

- (CPContactEntity)initWithName:(id)a3 imageSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CPContactEntity;
  v8 = [(CPEntity *)&v12 _init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_imageSet, a4);
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CPContactEntity *)self name];
    v7 = [v5 name];
    v8 = [v6 isEqual:v7];

    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = [(CPContactEntity *)self name];
    v10 = [v5 name];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = [(CPContactEntity *)self subtitle];
    v13 = [v5 subtitle];
    v14 = [v12 isEqual:v13];

    if (!v14)
    {
      goto LABEL_7;
    }

    v15 = [(CPContactEntity *)self informativeText];
    v16 = [v5 informativeText];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_7;
    }

    v18 = [(CPContactEntity *)self imageSet];
    v19 = [v5 imageSet];

    if (v18 == v19)
    {
      v22 = [(CPContactEntity *)self actionButtons];
      v23 = [v5 actionButtons];
      v20 = [v22 isEqualToArray:v23];
    }

    else
    {
LABEL_7:
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (CPContactEntity)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CPContactEntity;
  v5 = [(CPEntity *)&v23 _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPContactEntityName"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPContactEntitySubtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPContactEntityInformative"];
    informativeText = v5->_informativeText;
    v5->_informativeText = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPContactEntityImageSet"];
    imageSet = v5->_imageSet;
    v5->_imageSet = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v14 setWithObjects:{v15, v16, v17, v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"CPContactEntityActionButtons"];
    actionButtons = v5->_actionButtons;
    v5->_actionButtons = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = CPContactEntity;
  v4 = a3;
  [(CPEntity *)&v10 encodeWithCoder:v4];
  v5 = [(CPContactEntity *)self name:v10.receiver];
  [v4 encodeObject:v5 forKey:@"CPContactEntityName"];

  v6 = [(CPContactEntity *)self subtitle];
  [v4 encodeObject:v6 forKey:@"CPContactEntitySubtitle"];

  v7 = [(CPContactEntity *)self informativeText];
  [v4 encodeObject:v7 forKey:@"CPContactEntityInformative"];

  v8 = [(CPContactEntity *)self imageSet];
  [v4 encodeObject:v8 forKey:@"CPContactEntityImageSet"];

  v9 = [(CPContactEntity *)self actionButtons];
  [v4 encodeObject:v9 forKey:@"CPContactEntityActionButtons"];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CPContactEntity;
  v4 = [(CPEntity *)&v8 description];
  v5 = [(CPContactEntity *)self name];
  v6 = [v3 stringWithFormat:@"%@: name: %@", v4, v5];

  return v6;
}

- (id)objectForIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CPContactEntity *)self actionButtons];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

@end