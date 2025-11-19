@interface _HKXMLExtractorElement
- (BOOL)matchesElement:(id)a3;
- (_HKXMLExtractorElement)initWithElementName:(id)a3 attributes:(id)a4;
- (_HKXMLExtractorElement)initWithTagSpecification:(id)a3;
@end

@implementation _HKXMLExtractorElement

- (_HKXMLExtractorElement)initWithTagSpecification:(id)a3
{
  v5 = a3;
  v29.receiver = self;
  v29.super_class = _HKXMLExtractorElement;
  v6 = [(_HKXMLExtractorElement *)&v29 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AB08] hk_percentCharacterSet];
    v8 = [v5 componentsSeparatedByCharactersInSet:v7];
    v9 = [v8 count];
    if (v9 >= 2)
    {
      v10 = v9;
      v26 = v7;
      v28 = v5;
      v11 = [v8 objectAtIndexedSubscript:0];
      specificationElement = v6->_specificationElement;
      v27 = v6;
      v6->_specificationElement = v11;

      v13 = [MEMORY[0x1E696AB08] hk_equalCharacterSet];
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = 1;
      while (1)
      {
        v16 = [v8 objectAtIndexedSubscript:v15];
        v17 = [v16 componentsSeparatedByCharactersInSet:v13];
        v18 = [v17 count];
        if (v18 == 2)
        {
          v19 = [v17 objectAtIndexedSubscript:1];
        }

        else
        {
          if (v18 != 1)
          {
            v20 = [v17 subarrayWithRange:{1, objc_msgSend(v17, "count") - 1}];
            v21 = [v20 componentsJoinedByString:@"="];
            v22 = [v17 objectAtIndexedSubscript:0];
            [v14 setObject:v21 forKey:v22];

            goto LABEL_10;
          }

          v19 = [MEMORY[0x1E695DFB0] null];
        }

        v20 = v19;
        v21 = [v17 objectAtIndexedSubscript:0];
        [v14 setObject:v20 forKey:v21];
LABEL_10:

        if (v10 == ++v15)
        {
          v23 = [v14 copy];
          v6 = v27;
          specificationAttributes = v27->_specificationAttributes;
          v27->_specificationAttributes = v23;

          v5 = v28;
          v7 = v26;
          goto LABEL_13;
        }
      }
    }

    objc_storeStrong(&v6->_specificationElement, a3);
    v13 = v6->_specificationAttributes;
    v6->_specificationAttributes = 0;
LABEL_13:
  }

  return v6;
}

- (_HKXMLExtractorElement)initWithElementName:(id)a3 attributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _HKXMLExtractorElement;
  v8 = [(_HKXMLExtractorElement *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    specificationElement = v8->_specificationElement;
    v8->_specificationElement = v9;

    v11 = [v7 copy];
    specificationAttributes = v8->_specificationAttributes;
    v8->_specificationAttributes = v11;
  }

  return v8;
}

- (BOOL)matchesElement:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  specificationElement = self->_specificationElement;
  v6 = [v4 specificationElement];
  LODWORD(specificationElement) = [(NSString *)specificationElement isEqualToString:v6];

  if (specificationElement)
  {
    if (self->_specificationAttributes)
    {
      v7 = [v4 specificationAttributes];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = self->_specificationAttributes;
      v9 = [(NSDictionary *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        v10 = v9;
        v22 = v4;
        v11 = *v24;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v23 + 1) + 8 * i);
            v14 = [v7 objectForKeyedSubscript:v13];
            if (!v14)
            {
              goto LABEL_18;
            }

            v15 = v14;
            v16 = [(NSDictionary *)self->_specificationAttributes objectForKeyedSubscript:v13];
            v17 = [MEMORY[0x1E695DFB0] null];
            v18 = [v16 isEqual:v17];

            if ((v18 & 1) == 0 && ![v15 isEqualToString:v16])
            {

LABEL_18:
              v19 = 0;
              goto LABEL_19;
            }
          }

          v10 = [(NSDictionary *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

        v19 = 1;
LABEL_19:
        v4 = v22;
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

@end