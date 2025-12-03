@interface SWCollaborationOptionsGroup
+ (SWCollaborationOptionsGroup)allocWithZone:(_NSZone *)zone;
+ (SWCollaborationOptionsGroup)optionsGroupWithIdentifier:(NSString *)identifier options:(NSArray *)options;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCollaborationOptionsGroup:(id)group;
- (SWCollaborationOptionsGroup)initWithCoder:(id)coder;
- (SWCollaborationOptionsGroup)initWithIdentifier:(NSString *)identifier options:(NSArray *)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SWCollaborationOptionsGroup

+ (SWCollaborationOptionsGroup)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [_SWCollaborationOptionsGroup allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SWCollaborationOptionsGroup;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
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
  v8 = [[self alloc] initWithIdentifier:v7 options:v6];

  return v8;
}

- (id)description
{
  v23 = *MEMORY[0x1E69E9840];
  title = [(SWCollaborationOptionsGroup *)self title];
  if (title)
  {
    title2 = [(SWCollaborationOptionsGroup *)self title];
    v5 = [title2 mutableCopy];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  options = [(SWCollaborationOptionsGroup *)self options];
  v7 = [options countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(options);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v5 length])
        {
          [v5 appendString:@"\n"];
        }

        title3 = [v11 title];
        if ([v11 isSelected])
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        [v5 appendFormat:@"- %@: %@", title3, v13];
      }

      v8 = [options countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  footer = [(SWCollaborationOptionsGroup *)self footer];

  if (footer)
  {
    footer2 = [(SWCollaborationOptionsGroup *)self footer];
    [v5 appendString:footer2];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SWCollaborationOptionsGroup *)self isEqualToCollaborationOptionsGroup:equalCopy];

  return v5;
}

- (BOOL)isEqualToCollaborationOptionsGroup:(id)group
{
  groupCopy = group;
  if (groupCopy == self)
  {
    v11 = 1;
    goto LABEL_46;
  }

  title = [(SWCollaborationOptionsGroup *)self title];
  if (title || ([(SWCollaborationOptionsGroup *)groupCopy title], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    title2 = [(SWCollaborationOptionsGroup *)self title];
    title3 = [(SWCollaborationOptionsGroup *)groupCopy title];
    if (([title2 isEqual:title3] & 1) == 0)
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

  identifier = [(SWCollaborationOptionsGroup *)self identifier];
  if (!identifier)
  {
    identifier2 = [(SWCollaborationOptionsGroup *)groupCopy identifier];
    if (!identifier2)
    {
      v31 = 0;
      goto LABEL_19;
    }
  }

  footer2 = v3;
  identifier3 = [(SWCollaborationOptionsGroup *)self identifier];
  identifier4 = [(SWCollaborationOptionsGroup *)groupCopy identifier];
  if ([identifier3 isEqual:identifier4])
  {
    v28 = identifier4;
    v29 = identifier3;
    v31 = 1;
    v3 = footer2;
LABEL_19:
    footer = [(SWCollaborationOptionsGroup *)self footer];
    if (footer || ([(SWCollaborationOptionsGroup *)groupCopy footer], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      footer2 = [(SWCollaborationOptionsGroup *)self footer];
      footer3 = [(SWCollaborationOptionsGroup *)groupCopy footer];
      if (![footer2 isEqual:?])
      {
        v11 = 0;
LABEL_34:

LABEL_35:
        if (!footer)
        {
        }

        if (v31)
        {
        }

        if (!identifier)
        {
        }

        if (!v32)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      v27 = identifier2;
      v26 = 1;
    }

    else
    {
      v27 = identifier2;
      v23 = 0;
      v26 = 0;
    }

    options = [(SWCollaborationOptionsGroup *)self options];
    if (options || ([(SWCollaborationOptionsGroup *)groupCopy options], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v24 = footer2;
      v25 = v3;
      v17 = [(SWCollaborationOptionsGroup *)self options:v21];
      options2 = [(SWCollaborationOptionsGroup *)groupCopy options];
      v11 = [v17 isEqual:options2];

      if (options)
      {

        footer2 = v24;
        if (!v26)
        {
          v3 = v25;
          identifier2 = v27;
          goto LABEL_35;
        }

        v3 = v25;
        identifier2 = v27;
        goto LABEL_34;
      }

      footer2 = v24;
      v3 = v25;
      v19 = v22;
    }

    else
    {
      v19 = 0;
      v11 = 1;
    }

    identifier2 = v27;
    if ((v26 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (identifier)
  {
  }

  else
  {
  }

  v11 = 0;
  v3 = footer2;
  if (v32)
  {
LABEL_42:
  }

LABEL_43:
  if (!title)
  {
  }

LABEL_46:
  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  identifier = [(SWCollaborationOptionsGroup *)self identifier];
  v7 = [identifier copyWithZone:zone];
  options = [(SWCollaborationOptionsGroup *)self options];
  v9 = [options copyWithZone:zone];
  v10 = [v5 initWithIdentifier:v7 options:v9];

  if (v10)
  {
    title = [(SWCollaborationOptionsGroup *)self title];
    v12 = [title copyWithZone:zone];
    [v10 setTitle:v12];

    footer = [(SWCollaborationOptionsGroup *)self footer];
    v14 = [footer copyWithZone:zone];
    [v10 setFooter:v14];
  }

  return v10;
}

- (SWCollaborationOptionsGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SWCollaborationOptionsGroup *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"footer"];
    footer = v5->_footer;
    v5->_footer = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"options"];
    options = v5->_options;
    v5->_options = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(SWCollaborationOptionsGroup *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  identifier = [(SWCollaborationOptionsGroup *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  footer = [(SWCollaborationOptionsGroup *)self footer];
  [coderCopy encodeObject:footer forKey:@"footer"];

  options = [(SWCollaborationOptionsGroup *)self options];
  [coderCopy encodeObject:options forKey:@"options"];
}

@end