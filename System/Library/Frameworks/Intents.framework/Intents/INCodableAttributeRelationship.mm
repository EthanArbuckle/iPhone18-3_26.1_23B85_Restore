@interface INCodableAttributeRelationship
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (BOOL)compareValue:(id)value;
- (Class)valueClass;
- (INCodableAttribute)codableAttribute;
- (INCodableAttribute)parentCodableAttribute;
- (INCodableAttributeRelationship)initWithCodableAttribute:(id)attribute;
- (INCodableAttributeRelationship)initWithCoder:(id)coder;
- (INCodableDescription)_codableDescription;
- (id)__INCodableDescriptionParentNameKey;
- (id)__INCodableDescriptionPredicateNameKey;
- (id)__INCodableDescriptionPredicateValueKey;
- (id)__INCodableDescriptionPredicateValuesKey;
- (id)__INIntentResponseCodableDescriptionParentNameKey;
- (id)__INIntentResponseCodableDescriptionPredicateNameKey;
- (id)__INIntentResponseCodableDescriptionPredicateValueKey;
- (id)__INIntentResponseCodableDescriptionPredicateValuesKey;
- (id)__INTypeCodableDescriptionParentNameKey;
- (id)__INTypeCodableDescriptionPredicateNameKey;
- (id)__INTypeCodableDescriptionPredicateValueKey;
- (id)__INTypeCodableDescriptionPredicateValuesKey;
- (id)descriptionAtIndent:(unint64_t)indent;
- (id)dictionaryRepresentation;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)_establishRelationship;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INCodableAttributeRelationship

- (void)_establishRelationship
{
  v53 = *MEMORY[0x1E69E9840];
  if (self->_originalDictionary)
  {
    codableAttribute = [(INCodableAttributeRelationship *)self codableAttribute];
    originalDictionary = self->_originalDictionary;
    __INCodableDescriptionParentNameKey = [(INCodableAttributeRelationship *)self __INCodableDescriptionParentNameKey];
    v6 = [(NSDictionary *)originalDictionary objectForKeyedSubscript:__INCodableDescriptionParentNameKey];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    _codableDescription = [codableAttribute _codableDescription];
    attributes = [_codableDescription attributes];
    allValues = [attributes allValues];

    v10 = [allValues countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v48;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        v14 = *(*(&v47 + 1) + 8 * v13);
        propertyName = [v14 propertyName];
        v16 = [propertyName isEqualToString:v6];

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [allValues countByEnumeratingWithState:&v47 objects:v52 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v17 = v14;
      objc_storeWeak(&self->_parentCodableAttribute, v17);

      if (!v17)
      {
        goto LABEL_49;
      }

      v18 = self->_originalDictionary;
      __INCodableDescriptionPredicateNameKey = [(INCodableAttributeRelationship *)self __INCodableDescriptionPredicateNameKey];
      v20 = [(NSDictionary *)v18 objectForKeyedSubscript:__INCodableDescriptionPredicateNameKey];

      _relationshipValueTransformerClass = [v17 _relationshipValueTransformerClass];
      if (_relationshipValueTransformerClass)
      {
        v22 = [[_relationshipValueTransformerClass alloc] initWithCodableAttribute:v17];
      }

      else
      {
        v22 = 0;
      }

      v23 = v20;
      if ([v23 hasSuffix:@"HasAnyValue"])
      {
        v24 = 1;
      }

      else if ([v23 hasSuffix:@"HasExactValue"])
      {
        v24 = 2;
      }

      else if ([v23 hasSuffix:@"ValueIsNotEqual"])
      {
        v24 = 3;
      }

      else if ([v23 hasSuffix:@"ValueIsGreaterThan"])
      {
        v24 = 4;
      }

      else if ([v23 hasSuffix:@"ValueIsGreaterThanOrEqual"])
      {
        v24 = 5;
      }

      else if ([v23 hasSuffix:@"ValueIsLessThan"])
      {
        v24 = 6;
      }

      else if ([v23 hasSuffix:@"ValueIsLessThanOrEqual"])
      {
        v24 = 7;
      }

      else if ([v23 hasSuffix:@"ValueIsWithinRange"])
      {
        v24 = 8;
      }

      else if ([v23 hasSuffix:@"ValueContains"])
      {
        v24 = 9;
      }

      else if ([v23 hasSuffix:@"ValueDoesNotContain"])
      {
        v24 = 10;
      }

      else
      {
        v24 = 0;
      }

      self->_relation = v24;
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v26 = self->_originalDictionary;
      __INCodableDescriptionPredicateValuesKey = [(INCodableAttributeRelationship *)self __INCodableDescriptionPredicateValuesKey];
      v28 = [(NSDictionary *)v26 objectForKeyedSubscript:__INCodableDescriptionPredicateValuesKey];

      if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v29 = v28;
        v30 = [v29 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v30)
        {
          v31 = v30;
          v41 = v23;
          v42 = codableAttribute;
          v32 = *v44;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v44 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = [v22 transformedValue:{*(*(&v43 + 1) + 8 * i), v41, v42, v43}];
              [(NSArray *)v25 if_addObjectIfNonNil:v34];
            }

            v31 = [v29 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v31);
          __INCodableDescriptionPredicateValueKey = v29;
          v23 = v41;
          codableAttribute = v42;
        }

        else
        {
          __INCodableDescriptionPredicateValueKey = v29;
        }
      }

      else
      {

        v36 = self->_originalDictionary;
        __INCodableDescriptionPredicateValueKey = [(INCodableAttributeRelationship *)self __INCodableDescriptionPredicateValueKey];
        v29 = [(NSDictionary *)v36 objectForKeyedSubscript:__INCodableDescriptionPredicateValueKey];
        [v22 transformedValue:v29];
        v38 = v37 = codableAttribute;
        [(NSArray *)v25 if_addObjectIfNonNil:v38];

        codableAttribute = v37;
      }

      values = self->_values;
      self->_values = v25;
    }

    else
    {
LABEL_10:
      v17 = allValues;
    }

LABEL_49:
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (id)__INCodableDescriptionPredicateValueKey
{
  _codableDescription = [(INCodableAttributeRelationship *)self _codableDescription];
  __INCodableAttributeRelationshipPredicateValueKey = [objc_opt_class() __INCodableAttributeRelationshipPredicateValueKey];

  return __INCodableAttributeRelationshipPredicateValueKey;
}

- (INCodableAttribute)codableAttribute
{
  WeakRetained = objc_loadWeakRetained(&self->_codableAttribute);

  return WeakRetained;
}

- (id)__INCodableDescriptionParentNameKey
{
  _codableDescription = [(INCodableAttributeRelationship *)self _codableDescription];
  __INCodableAttributeRelationshipParentNameKey = [objc_opt_class() __INCodableAttributeRelationshipParentNameKey];

  return __INCodableAttributeRelationshipParentNameKey;
}

- (INCodableDescription)_codableDescription
{
  codableAttribute = [(INCodableAttributeRelationship *)self codableAttribute];
  _codableDescription = [codableAttribute _codableDescription];

  return _codableDescription;
}

- (id)__INCodableDescriptionPredicateNameKey
{
  _codableDescription = [(INCodableAttributeRelationship *)self _codableDescription];
  __INCodableAttributeRelationshipPredicateNameKey = [objc_opt_class() __INCodableAttributeRelationshipPredicateNameKey];

  return __INCodableAttributeRelationshipPredicateNameKey;
}

- (id)__INCodableDescriptionPredicateValuesKey
{
  _codableDescription = [(INCodableAttributeRelationship *)self _codableDescription];
  __INCodableAttributeRelationshipPredicateValuesKey = [objc_opt_class() __INCodableAttributeRelationshipPredicateValuesKey];

  return __INCodableAttributeRelationshipPredicateValuesKey;
}

- (INCodableAttribute)parentCodableAttribute
{
  WeakRetained = objc_loadWeakRetained(&self->_parentCodableAttribute);

  return WeakRetained;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INCodableAttributeRelationship *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (INCodableAttributeRelationship)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (coderCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = coderCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v6 _allowDecodingCyclesInSecureMode];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codableAttribute"];
  v8 = [(INCodableAttributeRelationship *)self initWithCodableAttribute:v7];

  if (v8)
  {
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_originalDictionary"];
    originalDictionary = v8->_originalDictionary;
    v8->_originalDictionary = v14;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  originalDictionary = self->_originalDictionary;
  coderCopy = coder;
  [coderCopy encodeObject:originalDictionary forKey:@"_originalDictionary"];
  WeakRetained = objc_loadWeakRetained(&self->_codableAttribute);
  [coderCopy encodeConditionalObject:WeakRetained forKey:@"codableAttribute"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary intents_setPlistSafeObject:self->_originalDictionary forKey:@"_originalDictionary"];
  v6 = [dictionary copy];

  return v6;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCodableAttributeRelationship;
  v6 = [(INCodableAttributeRelationship *)&v11 description];
  dictionaryRepresentation = [(INCodableAttributeRelationship *)self dictionaryRepresentation];
  v8 = [dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (Class)valueClass
{
  parentCodableAttribute = [(INCodableAttributeRelationship *)self parentCodableAttribute];
  v3 = [objc_msgSend(parentCodableAttribute "_relationshipValueTransformerClass")];

  return v3;
}

- (INCodableAttributeRelationship)initWithCodableAttribute:(id)attribute
{
  attributeCopy = attribute;
  v8.receiver = self;
  v8.super_class = INCodableAttributeRelationship;
  v5 = [(INCodableAttributeRelationship *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_codableAttribute, attributeCopy);
  }

  return v6;
}

- (BOOL)compareValue:(id)value
{
  valueCopy = value;
  relation = [(INCodableAttributeRelationship *)self relation];
  v6 = relation;
  if (valueCopy || relation != 1)
  {
    parentCodableAttribute = [(INCodableAttributeRelationship *)self parentCodableAttribute];
    _relationshipValueTransformerClass = [parentCodableAttribute _relationshipValueTransformerClass];
    if (_relationshipValueTransformerClass)
    {
      v10 = [[_relationshipValueTransformerClass alloc] initWithCodableAttribute:parentCodableAttribute];
    }

    else
    {
      v10 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = valueCopy;
      if (valueCopy)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v15 = v12;

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __47__INCodableAttributeRelationship_compareValue___block_invoke;
      v22[3] = &unk_1E7286E18;
      v23 = v10;
      v14 = [v15 if_flatMap:v22];
    }

    else
    {
      v13 = [v10 transformedValue:valueCopy];
      v14 = v13;
      if (valueCopy && !v13)
      {
        if ((v6 | 2) == 3)
        {
          v7 = 1;
LABEL_22:

          goto LABEL_23;
        }

        v14 = 0;
      }
    }

    values = [(INCodableAttributeRelationship *)self values];
    v17 = [values count];
    values2 = [(INCodableAttributeRelationship *)self values];
    v19 = values2;
    if (v17 > 1)
    {
      v7 = [v14 _intents_compareValue:values2 relation:v6];
    }

    else
    {
      firstObject = [values2 firstObject];
      v7 = [v14 _intents_compareValue:firstObject relation:v6];
    }

    goto LABEL_22;
  }

  v7 = 0;
LABEL_23:

  return v7;
}

id __47__INCodableAttributeRelationship_compareValue___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = [*(a1 + 32) transformedValue:a2];
  v4 = [v2 if_arrayWithObjectIfNonNil:v3];

  return v4;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v5 = objc_alloc_init(INCodableAttributeRelationship);
  v6 = [representationCopy intents_safeObjectForKey:@"_originalDictionary" ofType:objc_opt_class()];

  originalDictionary = v5->_originalDictionary;
  v5->_originalDictionary = v6;

  return v5;
}

- (id)__INTypeCodableDescriptionPredicateValuesKey
{
  _codableDescription = [(INCodableAttributeRelationship *)self _codableDescription];
  __INCodableAttributeRelationshipPredicateValuesKey = [objc_opt_class() __INCodableAttributeRelationshipPredicateValuesKey];

  return __INCodableAttributeRelationshipPredicateValuesKey;
}

- (id)__INTypeCodableDescriptionPredicateValueKey
{
  _codableDescription = [(INCodableAttributeRelationship *)self _codableDescription];
  __INCodableAttributeRelationshipPredicateValueKey = [objc_opt_class() __INCodableAttributeRelationshipPredicateValueKey];

  return __INCodableAttributeRelationshipPredicateValueKey;
}

- (id)__INTypeCodableDescriptionPredicateNameKey
{
  _codableDescription = [(INCodableAttributeRelationship *)self _codableDescription];
  __INCodableAttributeRelationshipPredicateNameKey = [objc_opt_class() __INCodableAttributeRelationshipPredicateNameKey];

  return __INCodableAttributeRelationshipPredicateNameKey;
}

- (id)__INTypeCodableDescriptionParentNameKey
{
  _codableDescription = [(INCodableAttributeRelationship *)self _codableDescription];
  __INCodableAttributeRelationshipParentNameKey = [objc_opt_class() __INCodableAttributeRelationshipParentNameKey];

  return __INCodableAttributeRelationshipParentNameKey;
}

- (id)__INIntentResponseCodableDescriptionPredicateValuesKey
{
  _codableDescription = [(INCodableAttributeRelationship *)self _codableDescription];
  __INCodableAttributeRelationshipPredicateValuesKey = [objc_opt_class() __INCodableAttributeRelationshipPredicateValuesKey];

  return __INCodableAttributeRelationshipPredicateValuesKey;
}

- (id)__INIntentResponseCodableDescriptionPredicateValueKey
{
  _codableDescription = [(INCodableAttributeRelationship *)self _codableDescription];
  __INCodableAttributeRelationshipPredicateValueKey = [objc_opt_class() __INCodableAttributeRelationshipPredicateValueKey];

  return __INCodableAttributeRelationshipPredicateValueKey;
}

- (id)__INIntentResponseCodableDescriptionPredicateNameKey
{
  _codableDescription = [(INCodableAttributeRelationship *)self _codableDescription];
  __INCodableAttributeRelationshipPredicateNameKey = [objc_opt_class() __INCodableAttributeRelationshipPredicateNameKey];

  return __INCodableAttributeRelationshipPredicateNameKey;
}

- (id)__INIntentResponseCodableDescriptionParentNameKey
{
  _codableDescription = [(INCodableAttributeRelationship *)self _codableDescription];
  __INCodableAttributeRelationshipParentNameKey = [objc_opt_class() __INCodableAttributeRelationshipParentNameKey];

  return __INCodableAttributeRelationshipParentNameKey;
}

@end