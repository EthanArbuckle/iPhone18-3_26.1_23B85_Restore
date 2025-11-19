@interface SWCollaborationOptionsGroup
+ (SWCollaborationOptionsGroup)allocWithZone:(_NSZone *)a3;
+ (SWCollaborationOptionsGroup)optionsGroupWithIdentifier:(NSString *)identifier options:(NSArray *)options;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCollaborationOptionsGroup:(id)a3;
- (SWCollaborationOptionsGroup)initWithCoder:(id)a3;
- (SWCollaborationOptionsGroup)initWithIdentifier:(NSString *)identifier options:(NSArray *)options;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SWCollaborationOptionsGroup

+ (SWCollaborationOptionsGroup)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [_SWCollaborationOptionsGroup allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SWCollaborationOptionsGroup;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (SWCollaborationOptionsGroup)initWithIdentifier:(NSString *)identifier options:(NSArray *)options
{
  v6 = identifier;
  v7 = options;
  v17.receiver = self;
  v17.super_class = SWCollaborationOptionsGroup;
  v8 = [(SWCollaborationOptionsGroup *)&v17 init];
  v9 = v8;
  if (v8)
  {
    title = v8->_title;
    v8->_title = &stru_1F4E16F00;

    v11 = [(NSString *)v6 copy];
    v12 = v9->_identifier;
    v9->_identifier = v11;

    footer = v9->_footer;
    v9->_footer = &stru_1F4E16F00;

    v14 = [(NSArray *)v7 copy];
    v15 = v9->_options;
    v9->_options = v14;
  }

  return v9;
}

+ (SWCollaborationOptionsGroup)optionsGroupWithIdentifier:(NSString *)identifier options:(NSArray *)options
{
  v6 = options;
  v7 = identifier;
  v8 = [[a1 alloc] initWithIdentifier:v7 options:v6];

  return v8;
}

- (id)description
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(SWCollaborationOptionsGroup *)self title];
  if (v3)
  {
    v4 = [(SWCollaborationOptionsGroup *)self title];
    v5 = [v4 mutableCopy];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(SWCollaborationOptionsGroup *)self options];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v5 length])
        {
          [v5 appendString:@"\n"];
        }

        v12 = [v11 title];
        if ([v11 isSelected])
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        [v5 appendFormat:@"- %@: %@", v12, v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = [(SWCollaborationOptionsGroup *)self footer];

  if (v14)
  {
    v15 = [(SWCollaborationOptionsGroup *)self footer];
    [v5 appendString:v15];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SWCollaborationOptionsGroup *)self isEqualToCollaborationOptionsGroup:v4];

  return v5;
}

- (BOOL)isEqualToCollaborationOptionsGroup:(id)a3
{
  v9 = a3;
  if (v9 == self)
  {
    v11 = 1;
    goto LABEL_46;
  }

  v10 = [(SWCollaborationOptionsGroup *)self title];
  if (v10 || ([(SWCollaborationOptionsGroup *)v9 title], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(SWCollaborationOptionsGroup *)self title];
    v5 = [(SWCollaborationOptionsGroup *)v9 title];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      v11 = 0;
      goto LABEL_43;
    }

    v32 = 1;
  }

  else
  {
    v32 = 0;
  }

  v12 = [(SWCollaborationOptionsGroup *)self identifier];
  if (!v12)
  {
    v6 = [(SWCollaborationOptionsGroup *)v9 identifier];
    if (!v6)
    {
      v31 = 0;
      goto LABEL_19;
    }
  }

  v7 = v3;
  v13 = [(SWCollaborationOptionsGroup *)self identifier];
  v14 = [(SWCollaborationOptionsGroup *)v9 identifier];
  if ([v13 isEqual:v14])
  {
    v28 = v14;
    v29 = v13;
    v31 = 1;
    v3 = v7;
LABEL_19:
    v15 = [(SWCollaborationOptionsGroup *)self footer];
    if (v15 || ([(SWCollaborationOptionsGroup *)v9 footer], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = [(SWCollaborationOptionsGroup *)self footer];
      v30 = [(SWCollaborationOptionsGroup *)v9 footer];
      if (![v7 isEqual:?])
      {
        v11 = 0;
LABEL_34:

LABEL_35:
        if (!v15)
        {
        }

        if (v31)
        {
        }

        if (!v12)
        {
        }

        if (!v32)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      v27 = v6;
      v26 = 1;
    }

    else
    {
      v27 = v6;
      v23 = 0;
      v26 = 0;
    }

    v16 = [(SWCollaborationOptionsGroup *)self options];
    if (v16 || ([(SWCollaborationOptionsGroup *)v9 options], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v24 = v7;
      v25 = v3;
      v17 = [(SWCollaborationOptionsGroup *)self options:v21];
      v18 = [(SWCollaborationOptionsGroup *)v9 options];
      v11 = [v17 isEqual:v18];

      if (v16)
      {

        v7 = v24;
        if (!v26)
        {
          v3 = v25;
          v6 = v27;
          goto LABEL_35;
        }

        v3 = v25;
        v6 = v27;
        goto LABEL_34;
      }

      v7 = v24;
      v3 = v25;
      v19 = v22;
    }

    else
    {
      v19 = 0;
      v11 = 1;
    }

    v6 = v27;
    if ((v26 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v12)
  {
  }

  else
  {
  }

  v11 = 0;
  v3 = v7;
  if (v32)
  {
LABEL_42:
  }

LABEL_43:
  if (!v10)
  {
  }

LABEL_46:
  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(SWCollaborationOptionsGroup *)self identifier];
  v7 = [v6 copyWithZone:a3];
  v8 = [(SWCollaborationOptionsGroup *)self options];
  v9 = [v8 copyWithZone:a3];
  v10 = [v5 initWithIdentifier:v7 options:v9];

  if (v10)
  {
    v11 = [(SWCollaborationOptionsGroup *)self title];
    v12 = [v11 copyWithZone:a3];
    [v10 setTitle:v12];

    v13 = [(SWCollaborationOptionsGroup *)self footer];
    v14 = [v13 copyWithZone:a3];
    [v10 setFooter:v14];
  }

  return v10;
}

- (SWCollaborationOptionsGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SWCollaborationOptionsGroup *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"footer"];
    footer = v5->_footer;
    v5->_footer = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"options"];
    options = v5->_options;
    v5->_options = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SWCollaborationOptionsGroup *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(SWCollaborationOptionsGroup *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  v7 = [(SWCollaborationOptionsGroup *)self footer];
  [v4 encodeObject:v7 forKey:@"footer"];

  v8 = [(SWCollaborationOptionsGroup *)self options];
  [v4 encodeObject:v8 forKey:@"options"];
}

@end