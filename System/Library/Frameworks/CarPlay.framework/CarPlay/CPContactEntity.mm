@interface CPContactEntity
- (BOOL)isEqual:(id)equal;
- (CPContactEntity)initWithCoder:(id)coder;
- (CPContactEntity)initWithName:(id)name imageSet:(id)set;
- (NSString)description;
- (id)objectForIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPContactEntity

- (CPContactEntity)initWithName:(id)name imageSet:(id)set
{
  nameCopy = name;
  setCopy = set;
  v12.receiver = self;
  v12.super_class = CPContactEntity;
  _init = [(CPEntity *)&v12 _init];
  if (_init)
  {
    v9 = [nameCopy copy];
    name = _init->_name;
    _init->_name = v9;

    objc_storeStrong(&_init->_imageSet, set);
  }

  return _init;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [(CPContactEntity *)self name];
    name2 = [v5 name];
    v8 = [name isEqual:name2];

    if (!v8)
    {
      goto LABEL_7;
    }

    name3 = [(CPContactEntity *)self name];
    name4 = [v5 name];
    v11 = [name3 isEqual:name4];

    if (!v11)
    {
      goto LABEL_7;
    }

    subtitle = [(CPContactEntity *)self subtitle];
    subtitle2 = [v5 subtitle];
    v14 = [subtitle isEqual:subtitle2];

    if (!v14)
    {
      goto LABEL_7;
    }

    informativeText = [(CPContactEntity *)self informativeText];
    informativeText2 = [v5 informativeText];
    v17 = [informativeText isEqual:informativeText2];

    if (!v17)
    {
      goto LABEL_7;
    }

    imageSet = [(CPContactEntity *)self imageSet];
    imageSet2 = [v5 imageSet];

    if (imageSet == imageSet2)
    {
      actionButtons = [(CPContactEntity *)self actionButtons];
      actionButtons2 = [v5 actionButtons];
      v20 = [actionButtons isEqualToArray:actionButtons2];
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

- (CPContactEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = CPContactEntity;
  _init = [(CPEntity *)&v23 _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPContactEntityName"];
    name = _init->_name;
    _init->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPContactEntitySubtitle"];
    subtitle = _init->_subtitle;
    _init->_subtitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPContactEntityInformative"];
    informativeText = _init->_informativeText;
    _init->_informativeText = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPContactEntityImageSet"];
    imageSet = _init->_imageSet;
    _init->_imageSet = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v14 setWithObjects:{v15, v16, v17, v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"CPContactEntityActionButtons"];
    actionButtons = _init->_actionButtons;
    _init->_actionButtons = v20;
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CPContactEntity;
  coderCopy = coder;
  [(CPEntity *)&v10 encodeWithCoder:coderCopy];
  v5 = [(CPContactEntity *)self name:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"CPContactEntityName"];

  subtitle = [(CPContactEntity *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"CPContactEntitySubtitle"];

  informativeText = [(CPContactEntity *)self informativeText];
  [coderCopy encodeObject:informativeText forKey:@"CPContactEntityInformative"];

  imageSet = [(CPContactEntity *)self imageSet];
  [coderCopy encodeObject:imageSet forKey:@"CPContactEntityImageSet"];

  actionButtons = [(CPContactEntity *)self actionButtons];
  [coderCopy encodeObject:actionButtons forKey:@"CPContactEntityActionButtons"];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CPContactEntity;
  v4 = [(CPEntity *)&v8 description];
  name = [(CPContactEntity *)self name];
  v6 = [v3 stringWithFormat:@"%@: name: %@", v4, name];

  return v6;
}

- (id)objectForIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  actionButtons = [(CPContactEntity *)self actionButtons];
  v6 = [actionButtons countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(actionButtons);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [actionButtons countByEnumeratingWithState:&v14 objects:v18 count:16];
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