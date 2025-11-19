@interface SWCollaborationOptionsPickerGroup
+ (SWCollaborationOptionsPickerGroup)allocWithZone:(_NSZone *)a3;
- (SWCollaborationOptionsPickerGroup)initWithCoder:(id)a3;
- (SWCollaborationOptionsPickerGroup)initWithIdentifier:(id)a3 options:(id)a4;
- (id)_defaultSelectedOptionIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setOptions:(id)a3;
- (void)setSelectedOptionIdentifier:(NSString *)selectedOptionIdentifier;
@end

@implementation SWCollaborationOptionsPickerGroup

- (SWCollaborationOptionsPickerGroup)initWithIdentifier:(id)a3 options:(id)a4
{
  v8.receiver = self;
  v8.super_class = SWCollaborationOptionsPickerGroup;
  v4 = [(SWCollaborationOptionsGroup *)&v8 initWithIdentifier:a3 options:a4];
  v5 = v4;
  if (v4)
  {
    [(SWCollaborationOptionsGroup *)v4 setTitle:&stru_1F4E16F00];
    [(SWCollaborationOptionsGroup *)v5 setFooter:&stru_1F4E16F00];
    v6 = [(SWCollaborationOptionsPickerGroup *)v5 _defaultSelectedOptionIdentifier];
    [(SWCollaborationOptionsPickerGroup *)v5 setSelectedOptionIdentifier:v6];
  }

  return v5;
}

+ (SWCollaborationOptionsPickerGroup)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [(SWCollaborationOptionsGroup *)_SWCollaborationOptionsPickerGroup allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SWCollaborationOptionsPickerGroup;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (id)_defaultSelectedOptionIdentifier
{
  v2 = [(SWCollaborationOptionsGroup *)self options];
  v3 = [v2 firstObject];
  v4 = [v3 identifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F4E16F00;
  }

  v7 = v6;

  return v6;
}

- (void)setOptions:(id)a3
{
  v5.receiver = self;
  v5.super_class = SWCollaborationOptionsPickerGroup;
  [(SWCollaborationOptionsGroup *)&v5 setOptions:a3];
  v4 = [(SWCollaborationOptionsPickerGroup *)self _defaultSelectedOptionIdentifier];
  [(SWCollaborationOptionsPickerGroup *)self setSelectedOptionIdentifier:v4];
}

- (void)setSelectedOptionIdentifier:(NSString *)selectedOptionIdentifier
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = selectedOptionIdentifier;
  v6 = [(SWCollaborationOptionsPickerGroup *)self selectedOptionIdentifier];

  if (v6 != v5)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [(SWCollaborationOptionsGroup *)self options];
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v26 + 1) + 8 * i) identifier];

          if (v12 == v5)
          {

            objc_storeStrong(&self->_selectedOptionIdentifier, selectedOptionIdentifier);
            self->_isUpdatingSelectionState = 1;
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v13 = [(SWCollaborationOptionsGroup *)self options];
            v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v23;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v23 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v22 + 1) + 8 * j);
                  v19 = [v18 identifier];
                  v20 = v19 == v5;

                  [v18 setSelected:v20];
                }

                v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
              }

              while (v15);
            }

            self->_isUpdatingSelectionState = 0;
            goto LABEL_19;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_19:

  v21 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v21 = *MEMORY[0x1E69E9840];
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

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(SWCollaborationOptionsGroup *)self options];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v5 length])
        {
          [v5 appendString:@"\n"];
        }

        [v5 appendFormat:@"- %@", v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [(SWCollaborationOptionsGroup *)self footer];

  if (v12)
  {
    v13 = [(SWCollaborationOptionsGroup *)self footer];
    [v5 appendString:v13];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SWCollaborationOptionsPickerGroup;
  v4 = [(SWCollaborationOptionsGroup *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setSelectedOptionIdentifier:self->_selectedOptionIdentifier];
  }

  return v5;
}

- (SWCollaborationOptionsPickerGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SWCollaborationOptionsPickerGroup;
  v5 = [(SWCollaborationOptionsGroup *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedOption"];
    v7 = [v6 unsignedIntegerValue];
    v8 = [(SWCollaborationOptionsGroup *)v5 options];
    v9 = [v8 count];

    if (v7 >= v9)
    {
      v15 = [(SWCollaborationOptionsPickerGroup *)v5 _defaultSelectedOptionIdentifier];
    }

    else
    {
      v10 = [(SWCollaborationOptionsGroup *)v5 options];
      v11 = [v10 objectAtIndexedSubscript:v7];
      v12 = [v11 identifier];
      v13 = v12;
      v14 = &stru_1F4E16F00;
      if (v12)
      {
        v14 = v12;
      }

      v15 = v14;
    }

    [(SWCollaborationOptionsPickerGroup *)v5 setSelectedOptionIdentifier:v15];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SWCollaborationOptionsPickerGroup;
  [(SWCollaborationOptionsGroup *)&v19 encodeWithCoder:v4];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SWCollaborationOptionsGroup *)self options];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = *v16;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      v10 = [v9 identifier];
      selectedOptionIdentifier = self->_selectedOptionIdentifier;

      if (v10 == selectedOptionIdentifier)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    v6 = v9;

    if (v6)
    {
      v12 = [(SWCollaborationOptionsGroup *)self options];
      v13 = [v12 indexOfObject:v6];

      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
        [v4 encodeObject:v5 forKey:@"selectedOption"];
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end