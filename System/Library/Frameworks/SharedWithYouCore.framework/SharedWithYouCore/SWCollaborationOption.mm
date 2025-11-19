@interface SWCollaborationOption
+ (SWCollaborationOption)allocWithZone:(_NSZone *)a3;
+ (SWCollaborationOption)optionWithTitle:(NSString *)title identifier:(NSString *)identifier;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCollaborationOption:(id)a3;
- (SWCollaborationOption)initWithCoder:(id)a3;
- (SWCollaborationOption)initWithTitle:(NSString *)title identifier:(NSString *)identifier;
- (SWCollaborationOption)initWithTitle:(id)a3 identifier:(id)a4 subtitle:(id)a5 selected:(BOOL)a6 requiredOptionsIdentifiers:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SWCollaborationOption

+ (SWCollaborationOption)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [_SWCollaborationOption allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SWCollaborationOption;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
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
  v8 = [[a1 alloc] initWithTitle:v7 identifier:v6];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SWCollaborationOption *)self title];
  v5 = [(SWCollaborationOption *)self identifier];
  if ([(SWCollaborationOption *)self isSelected])
  {
    v6 = @" ✓";
  }

  else
  {
    v6 = &stru_1F4E16F00;
  }

  v7 = [(SWCollaborationOption *)self requiredOptionsIdentifiers];
  v8 = [v3 stringWithFormat:@"title: %@ identifier: %@ isSelected: %@ requiredOptions: %@", v4, v5, v6, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = self;
  v5 = [(SWCollaborationOption *)v4 title];
  v6 = [v5 copyWithZone:a3];
  v7 = [(SWCollaborationOption *)v4 identifier];
  v8 = [v7 copyWithZone:a3];
  v9 = [(SWCollaborationOption *)v4 initWithTitle:v6 identifier:v8];

  if (v9)
  {
    v10 = [(SWCollaborationOption *)v4 subtitle];
    v11 = [v10 copyWithZone:a3];
    [(SWCollaborationOption *)v9 setSubtitle:v11];

    [(SWCollaborationOption *)v9 setSelected:[(SWCollaborationOption *)v4 isSelected]];
    v12 = [(SWCollaborationOption *)v4 requiredOptionsIdentifiers];
    [(SWCollaborationOption *)v9 setRequiredOptionsIdentifiers:v12];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SWCollaborationOption *)self isEqualToCollaborationOption:v4];

  return v5;
}

- (BOOL)isEqualToCollaborationOption:(id)a3
{
  v8 = a3;
  if (v8 == self)
  {
    v10 = 1;
    goto LABEL_45;
  }

  v9 = [(SWCollaborationOption *)self isSelected];
  if (v9 != [(SWCollaborationOption *)v8 isSelected])
  {
    v10 = 0;
    goto LABEL_45;
  }

  v11 = [(SWCollaborationOption *)self title];
  if (!v11)
  {
    v6 = [(SWCollaborationOption *)v8 title];
    if (!v6)
    {
      v31 = 0;
      goto LABEL_11;
    }
  }

  v4 = [(SWCollaborationOption *)self title];
  v5 = [(SWCollaborationOption *)v8 title];
  if ([v4 isEqual:v5])
  {
    v31 = 1;
LABEL_11:
    v12 = [(SWCollaborationOption *)self identifier];
    if (v12 || ([(SWCollaborationOption *)v8 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = [(SWCollaborationOption *)self identifier];
      v30 = [(SWCollaborationOption *)v8 identifier];
      if (![v13 isEqual:?])
      {
        v10 = 0;
        goto LABEL_37;
      }

      v26 = v13;
      v29 = 1;
    }

    else
    {
      v29 = 0;
    }

    v14 = [(SWCollaborationOption *)self subtitle];
    if (v14 || ([(SWCollaborationOption *)v8 subtitle], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = [(SWCollaborationOption *)self subtitle];
      v27 = [(SWCollaborationOption *)v8 subtitle];
      v28 = v15;
      if (![v15 isEqual:?])
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

    v16 = [(SWCollaborationOption *)self requiredOptionsIdentifiers];
    if (v16 || ([(SWCollaborationOption *)v8 requiredOptionsIdentifiers], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v23 = v6;
      v17 = [(SWCollaborationOption *)self requiredOptionsIdentifiers];
      v18 = [(SWCollaborationOption *)v8 requiredOptionsIdentifiers];
      v10 = [v17 isEqual:v18];

      if (v16)
      {

        if (v24)
        {
          v6 = v23;
          v3 = v25;
          goto LABEL_32;
        }

        v6 = v23;
        v3 = v25;
LABEL_33:
        if (!v14)
        {
        }

        if (!v29)
        {
          goto LABEL_38;
        }

        v13 = v26;
LABEL_37:

LABEL_38:
        if (!v12)
        {
        }

        if (v31)
        {
        }

        goto LABEL_42;
      }

      v6 = v23;
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
  if (!v11)
  {
  }

LABEL_45:
  return v10;
}

- (SWCollaborationOption)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
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

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
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
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v13->_subtitle;
    v13->_subtitle = v14;

    v13->_selected = [v4 decodeBoolForKey:@"selected"];
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"requiredOptionsIdentifiers"];
    requiredOptionsIdentifiers = v13->_requiredOptionsIdentifiers;
    v13->_requiredOptionsIdentifiers = v19;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SWCollaborationOption *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(SWCollaborationOption *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  v7 = [(SWCollaborationOption *)self subtitle];
  [v4 encodeObject:v7 forKey:@"subtitle"];

  [v4 encodeBool:-[SWCollaborationOption isSelected](self forKey:{"isSelected"), @"selected"}];
  v8 = [(SWCollaborationOption *)self requiredOptionsIdentifiers];
  [v4 encodeObject:v8 forKey:@"requiredOptionsIdentifiers"];
}

- (SWCollaborationOption)initWithTitle:(id)a3 identifier:(id)a4 subtitle:(id)a5 selected:(BOOL)a6 requiredOptionsIdentifiers:(id)a7
{
  v13 = a5;
  v14 = a7;
  v15 = [(SWCollaborationOption *)self initWithTitle:a3 identifier:a4];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_subtitle, a5);
    v16->_selected = a6;
    objc_storeStrong(&v16->_requiredOptionsIdentifiers, a7);
  }

  return v16;
}

@end