@interface SWCollaborationOption
+ (SWCollaborationOption)allocWithZone:(_NSZone *)zone;
+ (SWCollaborationOption)optionWithTitle:(NSString *)title identifier:(NSString *)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCollaborationOption:(id)option;
- (SWCollaborationOption)initWithCoder:(id)coder;
- (SWCollaborationOption)initWithTitle:(NSString *)title identifier:(NSString *)identifier;
- (SWCollaborationOption)initWithTitle:(id)title identifier:(id)identifier subtitle:(id)subtitle selected:(BOOL)selected requiredOptionsIdentifiers:(id)identifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SWCollaborationOption

+ (SWCollaborationOption)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [_SWCollaborationOption allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SWCollaborationOption;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (SWCollaborationOption)initWithTitle:(NSString *)title identifier:(NSString *)identifier
{
  v6 = title;
  v7 = identifier;
  v15.receiver = self;
  v15.super_class = SWCollaborationOption;
  v8 = [(SWCollaborationOption *)&v15 init];
  if (v8)
  {
    v9 = [(NSString *)v6 copy];
    v10 = v8->_title;
    v8->_title = v9;

    v11 = [(NSString *)v7 copy];
    v12 = v8->_identifier;
    v8->_identifier = v11;

    subtitle = v8->_subtitle;
    v8->_subtitle = &stru_1F4E16F00;
  }

  return v8;
}

+ (SWCollaborationOption)optionWithTitle:(NSString *)title identifier:(NSString *)identifier
{
  v6 = identifier;
  v7 = title;
  v8 = [[self alloc] initWithTitle:v7 identifier:v6];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  title = [(SWCollaborationOption *)self title];
  identifier = [(SWCollaborationOption *)self identifier];
  if ([(SWCollaborationOption *)self isSelected])
  {
    v6 = @" ✓";
  }

  else
  {
    v6 = &stru_1F4E16F00;
  }

  requiredOptionsIdentifiers = [(SWCollaborationOption *)self requiredOptionsIdentifiers];
  v8 = [v3 stringWithFormat:@"title: %@ identifier: %@ isSelected: %@ requiredOptions: %@", title, identifier, v6, requiredOptionsIdentifiers];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  title = [(SWCollaborationOption *)selfCopy title];
  v6 = [title copyWithZone:zone];
  identifier = [(SWCollaborationOption *)selfCopy identifier];
  v8 = [identifier copyWithZone:zone];
  v9 = [(SWCollaborationOption *)selfCopy initWithTitle:v6 identifier:v8];

  if (v9)
  {
    subtitle = [(SWCollaborationOption *)selfCopy subtitle];
    v11 = [subtitle copyWithZone:zone];
    [(SWCollaborationOption *)v9 setSubtitle:v11];

    [(SWCollaborationOption *)v9 setSelected:[(SWCollaborationOption *)selfCopy isSelected]];
    requiredOptionsIdentifiers = [(SWCollaborationOption *)selfCopy requiredOptionsIdentifiers];
    [(SWCollaborationOption *)v9 setRequiredOptionsIdentifiers:requiredOptionsIdentifiers];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SWCollaborationOption *)self isEqualToCollaborationOption:equalCopy];

  return v5;
}

- (BOOL)isEqualToCollaborationOption:(id)option
{
  optionCopy = option;
  if (optionCopy == self)
  {
    v10 = 1;
    goto LABEL_45;
  }

  isSelected = [(SWCollaborationOption *)self isSelected];
  if (isSelected != [(SWCollaborationOption *)optionCopy isSelected])
  {
    v10 = 0;
    goto LABEL_45;
  }

  title = [(SWCollaborationOption *)self title];
  if (!title)
  {
    title2 = [(SWCollaborationOption *)optionCopy title];
    if (!title2)
    {
      v31 = 0;
      goto LABEL_11;
    }
  }

  title3 = [(SWCollaborationOption *)self title];
  title4 = [(SWCollaborationOption *)optionCopy title];
  if ([title3 isEqual:title4])
  {
    v31 = 1;
LABEL_11:
    identifier = [(SWCollaborationOption *)self identifier];
    if (identifier || ([(SWCollaborationOption *)optionCopy identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      identifier2 = [(SWCollaborationOption *)self identifier];
      identifier3 = [(SWCollaborationOption *)optionCopy identifier];
      if (![identifier2 isEqual:?])
      {
        v10 = 0;
        goto LABEL_37;
      }

      v26 = identifier2;
      v29 = 1;
    }

    else
    {
      v29 = 0;
    }

    subtitle = [(SWCollaborationOption *)self subtitle];
    if (subtitle || ([(SWCollaborationOption *)optionCopy subtitle], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      subtitle2 = [(SWCollaborationOption *)self subtitle];
      subtitle3 = [(SWCollaborationOption *)optionCopy subtitle];
      v28 = subtitle2;
      if (![subtitle2 isEqual:?])
      {
        v10 = 0;
LABEL_32:

        goto LABEL_33;
      }

      v25 = v3;
      v24 = 1;
    }

    else
    {
      v25 = v3;
      v22 = 0;
      v24 = 0;
    }

    requiredOptionsIdentifiers = [(SWCollaborationOption *)self requiredOptionsIdentifiers];
    if (requiredOptionsIdentifiers || ([(SWCollaborationOption *)optionCopy requiredOptionsIdentifiers], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v23 = title2;
      requiredOptionsIdentifiers2 = [(SWCollaborationOption *)self requiredOptionsIdentifiers];
      requiredOptionsIdentifiers3 = [(SWCollaborationOption *)optionCopy requiredOptionsIdentifiers];
      v10 = [requiredOptionsIdentifiers2 isEqual:requiredOptionsIdentifiers3];

      if (requiredOptionsIdentifiers)
      {

        if (v24)
        {
          title2 = v23;
          v3 = v25;
          goto LABEL_32;
        }

        title2 = v23;
        v3 = v25;
LABEL_33:
        if (!subtitle)
        {
        }

        if (!v29)
        {
          goto LABEL_38;
        }

        identifier2 = v26;
LABEL_37:

LABEL_38:
        if (!identifier)
        {
        }

        if (v31)
        {
        }

        goto LABEL_42;
      }

      title2 = v23;
      v19 = v21;
    }

    else
    {
      v19 = 0;
      v10 = 1;
    }

    v3 = v25;
    if (v24)
    {
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v10 = 0;
LABEL_42:
  if (!title)
  {
  }

LABEL_45:
  return v10;
}

- (SWCollaborationOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F4E16F00;
  }

  v8 = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F4E16F00;
  }

  v12 = v11;

  v13 = [(SWCollaborationOption *)self initWithTitle:v8 identifier:v12];
  if (v13)
  {
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v13->_subtitle;
    v13->_subtitle = v14;

    v13->_selected = [coderCopy decodeBoolForKey:@"selected"];
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"requiredOptionsIdentifiers"];
    requiredOptionsIdentifiers = v13->_requiredOptionsIdentifiers;
    v13->_requiredOptionsIdentifiers = v19;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(SWCollaborationOption *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  identifier = [(SWCollaborationOption *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  subtitle = [(SWCollaborationOption *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  [coderCopy encodeBool:-[SWCollaborationOption isSelected](self forKey:{"isSelected"), @"selected"}];
  requiredOptionsIdentifiers = [(SWCollaborationOption *)self requiredOptionsIdentifiers];
  [coderCopy encodeObject:requiredOptionsIdentifiers forKey:@"requiredOptionsIdentifiers"];
}

- (SWCollaborationOption)initWithTitle:(id)title identifier:(id)identifier subtitle:(id)subtitle selected:(BOOL)selected requiredOptionsIdentifiers:(id)identifiers
{
  subtitleCopy = subtitle;
  identifiersCopy = identifiers;
  v15 = [(SWCollaborationOption *)self initWithTitle:title identifier:identifier];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_subtitle, subtitle);
    v16->_selected = selected;
    objc_storeStrong(&v16->_requiredOptionsIdentifiers, identifiers);
  }

  return v16;
}

@end