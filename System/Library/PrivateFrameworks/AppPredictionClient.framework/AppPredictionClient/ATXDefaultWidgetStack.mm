@interface ATXDefaultWidgetStack
- (ATXDefaultWidgetStack)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_JSONCompatible:(id)compatible compact:(BOOL)compact;
- (id)compactDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXDefaultWidgetStack

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSArray *)self->_smallDefaultStack copyWithZone:zone];
  [v5 setSmallDefaultStack:v6];

  v7 = [(NSArray *)self->_mediumDefaultStack copyWithZone:zone];
  [v5 setMediumDefaultStack:v7];

  v8 = [(NSArray *)self->_largeDefaultStack copyWithZone:zone];
  [v5 setLargeDefaultStack:v8];

  v9 = [(NSArray *)self->_extraLargeDefaultStack copyWithZone:zone];
  [v5 setExtraLargeDefaultStack:v9];

  [v5 setSuggestedSize:self->_suggestedSize];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  smallDefaultStack = self->_smallDefaultStack;
  coderCopy = coder;
  [coderCopy encodeObject:smallDefaultStack forKey:@"smallDefaultStack"];
  [coderCopy encodeObject:self->_mediumDefaultStack forKey:@"mediumDefaultStack"];
  [coderCopy encodeObject:self->_largeDefaultStack forKey:@"largeDefaultStack"];
  [coderCopy encodeObject:self->_extraLargeDefaultStack forKey:@"extraLargeDefaultStack"];
  [coderCopy encodeInteger:self->_suggestedSize forKey:@"suggestedSize"];
}

- (ATXDefaultWidgetStack)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = ATXDefaultWidgetStack;
  v5 = [(ATXDefaultWidgetStack *)&v27 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"smallDefaultStack"];
    smallDefaultStack = v5->_smallDefaultStack;
    v5->_smallDefaultStack = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"mediumDefaultStack"];
    mediumDefaultStack = v5->_mediumDefaultStack;
    v5->_mediumDefaultStack = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"largeDefaultStack"];
    largeDefaultStack = v5->_largeDefaultStack;
    v5->_largeDefaultStack = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"extraLargeDefaultStack"];
    extraLargeDefaultStack = v5->_extraLargeDefaultStack;
    v5->_extraLargeDefaultStack = v24;

    v5->_suggestedSize = [coderCopy decodeIntegerForKey:@"suggestedSize"];
  }

  return v5;
}

- (id)_JSONCompatible:(id)compatible compact:(BOOL)compact
{
  compactCopy = compact;
  v20 = *MEMORY[0x1E69E9840];
  compatibleCopy = compatible;
  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = compatibleCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (compactCopy)
        {
          [v12 compactDescription];
        }

        else
        {
          [v12 dictionaryRepresentation];
        }
        v13 = ;
        [v6 addObject:{v13, v15}];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(ATXDefaultWidgetStack *)self _JSONCompatible:self->_smallDefaultStack];
  [v3 setObject:v4 forKeyedSubscript:@"smallDefaultStack"];

  v5 = [(ATXDefaultWidgetStack *)self _JSONCompatible:self->_mediumDefaultStack];
  [v3 setObject:v5 forKeyedSubscript:@"mediumDefaultStack"];

  v6 = [(ATXDefaultWidgetStack *)self _JSONCompatible:self->_largeDefaultStack];
  [v3 setObject:v6 forKeyedSubscript:@"largeDefaultStack"];

  v7 = [(ATXDefaultWidgetStack *)self _JSONCompatible:self->_extraLargeDefaultStack];
  [v3 setObject:v7 forKeyedSubscript:@"extraLargeDefaultStack"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_suggestedSize];
  [v3 setObject:v8 forKeyedSubscript:@"suggestedSize"];

  return v3;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  dictionaryRepresentation = [(ATXDefaultWidgetStack *)self dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"%@", dictionaryRepresentation];

  return v4;
}

- (id)compactDescription
{
  v3 = objc_opt_new();
  v4 = [(ATXDefaultWidgetStack *)self _JSONCompatible:self->_smallDefaultStack compact:1];
  [v3 setObject:v4 forKeyedSubscript:@"smallDefaultStack"];

  v5 = [(ATXDefaultWidgetStack *)self _JSONCompatible:self->_mediumDefaultStack compact:1];
  [v3 setObject:v5 forKeyedSubscript:@"mediumDefaultStack"];

  v6 = [(ATXDefaultWidgetStack *)self _JSONCompatible:self->_largeDefaultStack compact:1];
  [v3 setObject:v6 forKeyedSubscript:@"largeDefaultStack"];

  v7 = [(ATXDefaultWidgetStack *)self _JSONCompatible:self->_extraLargeDefaultStack compact:1];
  [v3 setObject:v7 forKeyedSubscript:@"extraLargeDefaultStack"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_suggestedSize];
  [v3 setObject:v8 forKeyedSubscript:@"suggestedSize"];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v3];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_smallDefaultStack hash];
  v4 = [(NSArray *)self->_mediumDefaultStack hash]- v3 + 32 * v3;
  v5 = [(NSArray *)self->_largeDefaultStack hash]- v4 + 32 * v4;
  v6 = [(NSArray *)self->_extraLargeDefaultStack hash];
  return self->_suggestedSize - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_smallDefaultStack;
      v7 = v6;
      if (v6 == v5->_smallDefaultStack)
      {
      }

      else
      {
        v8 = [(NSArray *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v10 = self->_mediumDefaultStack;
      v11 = v10;
      if (v10 == v5->_mediumDefaultStack)
      {
      }

      else
      {
        v12 = [(NSArray *)v10 isEqual:?];

        if ((v12 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v13 = self->_largeDefaultStack;
      v14 = v13;
      if (v13 == v5->_largeDefaultStack)
      {
      }

      else
      {
        v15 = [(NSArray *)v13 isEqual:?];

        if ((v15 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v16 = self->_extraLargeDefaultStack;
      v17 = v16;
      if (v16 == v5->_extraLargeDefaultStack)
      {
      }

      else
      {
        v18 = [(NSArray *)v16 isEqual:?];

        if ((v18 & 1) == 0)
        {
LABEL_19:
          v9 = 0;
LABEL_22:

          goto LABEL_23;
        }
      }

      suggestedSize = self->_suggestedSize;
      v9 = suggestedSize == [(ATXDefaultWidgetStack *)v5 suggestedSize];
      goto LABEL_22;
    }

    v9 = 0;
  }

LABEL_23:

  return v9;
}

@end