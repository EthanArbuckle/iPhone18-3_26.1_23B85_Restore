@interface _HKXMLExtractorElement
- (BOOL)matchesElement:(id)element;
- (_HKXMLExtractorElement)initWithElementName:(id)name attributes:(id)attributes;
- (_HKXMLExtractorElement)initWithTagSpecification:(id)specification;
@end

@implementation _HKXMLExtractorElement

- (_HKXMLExtractorElement)initWithTagSpecification:(id)specification
{
  specificationCopy = specification;
  v29.receiver = self;
  v29.super_class = _HKXMLExtractorElement;
  v6 = [(_HKXMLExtractorElement *)&v29 init];
  if (v6)
  {
    hk_percentCharacterSet = [MEMORY[0x1E696AB08] hk_percentCharacterSet];
    v8 = [specificationCopy componentsSeparatedByCharactersInSet:hk_percentCharacterSet];
    v9 = [v8 count];
    if (v9 >= 2)
    {
      v10 = v9;
      v26 = hk_percentCharacterSet;
      v28 = specificationCopy;
      v11 = [v8 objectAtIndexedSubscript:0];
      specificationElement = v6->_specificationElement;
      v27 = v6;
      v6->_specificationElement = v11;

      hk_equalCharacterSet = [MEMORY[0x1E696AB08] hk_equalCharacterSet];
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = 1;
      while (1)
      {
        v16 = [v8 objectAtIndexedSubscript:v15];
        v17 = [v16 componentsSeparatedByCharactersInSet:hk_equalCharacterSet];
        v18 = [v17 count];
        if (v18 == 2)
        {
          null = [v17 objectAtIndexedSubscript:1];
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

          null = [MEMORY[0x1E695DFB0] null];
        }

        v20 = null;
        v21 = [v17 objectAtIndexedSubscript:0];
        [v14 setObject:v20 forKey:v21];
LABEL_10:

        if (v10 == ++v15)
        {
          v23 = [v14 copy];
          v6 = v27;
          specificationAttributes = v27->_specificationAttributes;
          v27->_specificationAttributes = v23;

          specificationCopy = v28;
          hk_percentCharacterSet = v26;
          goto LABEL_13;
        }
      }
    }

    objc_storeStrong(&v6->_specificationElement, specification);
    hk_equalCharacterSet = v6->_specificationAttributes;
    v6->_specificationAttributes = 0;
LABEL_13:
  }

  return v6;
}

- (_HKXMLExtractorElement)initWithElementName:(id)name attributes:(id)attributes
{
  nameCopy = name;
  attributesCopy = attributes;
  v14.receiver = self;
  v14.super_class = _HKXMLExtractorElement;
  v8 = [(_HKXMLExtractorElement *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    specificationElement = v8->_specificationElement;
    v8->_specificationElement = v9;

    v11 = [attributesCopy copy];
    specificationAttributes = v8->_specificationAttributes;
    v8->_specificationAttributes = v11;
  }

  return v8;
}

- (BOOL)matchesElement:(id)element
{
  v28 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  specificationElement = self->_specificationElement;
  specificationElement = [elementCopy specificationElement];
  LODWORD(specificationElement) = [(NSString *)specificationElement isEqualToString:specificationElement];

  if (specificationElement)
  {
    if (self->_specificationAttributes)
    {
      specificationAttributes = [elementCopy specificationAttributes];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = self->_specificationAttributes;
      v9 = [(NSDictionary *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        v10 = v9;
        v22 = elementCopy;
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
            v14 = [specificationAttributes objectForKeyedSubscript:v13];
            if (!v14)
            {
              goto LABEL_18;
            }

            v15 = v14;
            v16 = [(NSDictionary *)self->_specificationAttributes objectForKeyedSubscript:v13];
            null = [MEMORY[0x1E695DFB0] null];
            v18 = [v16 isEqual:null];

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
        elementCopy = v22;
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