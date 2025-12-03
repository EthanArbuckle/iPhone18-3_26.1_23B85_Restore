@interface _HKXMLExtractorSpecification
- (BOOL)matchesElementStack:(id)stack;
- (_HKXMLExtractorSpecification)initWithSpecificationString:(id)string;
@end

@implementation _HKXMLExtractorSpecification

- (_HKXMLExtractorSpecification)initWithSpecificationString:(id)string
{
  v29 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v27.receiver = self;
  v27.super_class = _HKXMLExtractorSpecification;
  v6 = [(_HKXMLExtractorSpecification *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specificationString, string);
    hk_forwardSlashCharacterSet = [MEMORY[0x1E696AB08] hk_forwardSlashCharacterSet];
    v9 = [stringCopy componentsSeparatedByCharactersInSet:hk_forwardSlashCharacterSet];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        v15 = 0;
        do
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * v15);
          v17 = [_HKXMLExtractorElement alloc];
          v18 = [(_HKXMLExtractorElement *)v17 initWithTagSpecification:v16, v23];
          [v10 addObject:v18];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v13);
    }

    v19 = [v10 copy];
    specificationElements = v7->_specificationElements;
    v7->_specificationElements = v19;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)matchesElementStack:(id)stack
{
  stackCopy = stack;
  v5 = [stackCopy count];
  if (v5 == [(NSArray *)self->_specificationElements count])
  {
    v6 = v5 - 1;
    if (v5 < 1)
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = [(NSArray *)self->_specificationElements objectAtIndexedSubscript:v7];
        v9 = [stackCopy objectAtIndexedSubscript:v7];
        v10 = [v8 matchesElement:v9];

        if (v10)
        {
          v11 = v6 == v7;
        }

        else
        {
          v11 = 1;
        }

        ++v7;
      }

      while (!v11);
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

@end