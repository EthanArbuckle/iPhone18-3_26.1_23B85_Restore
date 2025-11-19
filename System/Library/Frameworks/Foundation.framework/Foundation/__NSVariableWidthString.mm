@interface __NSVariableWidthString
- (__NSVariableWidthString)initWithString:(id)a3 widthVariants:(id)a4;
- (__NSVariableWidthString)initWithWidthVariants:(id)a3;
- (id)_widthVariants;
- (id)formatConfiguration;
- (id)variantFittingPresentationWidth:(int64_t)a3;
- (void)dealloc;
@end

@implementation __NSVariableWidthString

- (__NSVariableWidthString)initWithString:(id)a3 widthVariants:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = __NSVariableWidthString;
  v6 = [(NSString *)&v8 init];
  if (v6)
  {
    v6->_variants = [a4 copy];
    v6->_defaultString = [a3 copy];
  }

  return v6;
}

- (__NSVariableWidthString)initWithWidthVariants:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_19;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [a3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = *v20;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v19 + 1) + 8 * i);
      v13 = [v12 integerValue];
      if (v9)
      {
        v14 = v13 < v8;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        v8 = v13;
        v9 = v12;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v19 objects:v18 count:16];
  }

  while (v7);
  if (v9)
  {
    v16 = [a3 objectForKey:v9];
  }

  else
  {
LABEL_19:
    v16 = &stru_1EEEFDF90;
  }

  return [(__NSVariableWidthString *)self initWithString:v16 widthVariants:a3];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = __NSVariableWidthString;
  [(__NSVariableWidthString *)&v3 dealloc];
}

- (id)variantFittingPresentationWidth:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self->_variants)
  {
    goto LABEL_15;
  }

  v5 = [(NSDictionary *)self->_variants objectForKey:[NSString stringWithFormat:@"%ld", a3]];
  if (!v5)
  {
    if (![(NSDictionary *)self->_variants count])
    {
      goto LABEL_15;
    }

    v7 = [(NSArray *)[(NSDictionary *)self->_variants allKeys] sortedArrayUsingComparator:&__block_literal_global_3];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = v8;
    v5 = 0;
    v10 = *v16;
LABEL_8:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v15 + 1) + 8 * v11);
      if ([v12 integerValue] > a3)
      {
        break;
      }

      v5 = [(NSDictionary *)self->_variants objectForKey:v12];
      if (v9 == ++v11)
      {
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
        if (v9)
        {
          goto LABEL_8;
        }

        break;
      }
    }

    if (!v5)
    {
      goto LABEL_15;
    }
  }

  if (v5 != self->_defaultString)
  {
    v6 = [[__NSVariableWidthString alloc] initWithString:v5 widthVariants:self->_variants];
  }

  else
  {
LABEL_15:
    v6 = self;
  }

  return v6;
}

- (id)formatConfiguration
{
  if (!self->_defaultString || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  defaultString = self->_defaultString;

  return [(NSString *)defaultString performSelector:sel_formatConfiguration];
}

- (id)_widthVariants
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSDictionary *)self->_variants count])
  {
    v4 = [(NSArray *)[(NSDictionary *)self->_variants allKeys] sortedArrayUsingComparator:&__block_literal_global_3];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 addObject:{-[NSDictionary objectForKeyedSubscript:](self->_variants, "objectForKeyedSubscript:", *(*(&v11 + 1) + 8 * i))}];
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [v3 addObject:self];
  }

  return v3;
}

@end