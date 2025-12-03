@interface INCodableEnumAttribute
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (INCodableEnum)codableEnum;
- (INCodableEnumAttribute)initWithCoder:(id)coder;
- (id)__INCodableDescriptionEnumTypeKey;
- (id)__INCodableDescriptionEnumTypeNamespaceKey;
- (id)__INIntentResponseCodableDescriptionEnumTypeKey;
- (id)__INIntentResponseCodableDescriptionEnumTypeNamespaceKey;
- (id)__INTypeCodableDescriptionEnumTypeKey;
- (id)__INTypeCodableDescriptionEnumTypeNamespaceKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)valueForIndex:(unint64_t)index;
- (id)valueWithName:(id)name;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (int64_t)valueType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableEnumAttribute

- (id)__INCodableDescriptionEnumTypeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableEnumAttributeEnumTypeKey = [objc_opt_class() __INCodableEnumAttributeEnumTypeKey];

  return __INCodableEnumAttributeEnumTypeKey;
}

- (id)__INCodableDescriptionEnumTypeNamespaceKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableEnumAttributeEnumTypeNamespaceKey = [objc_opt_class() __INCodableEnumAttributeEnumTypeNamespaceKey];

  return __INCodableEnumAttributeEnumTypeNamespaceKey;
}

- (unint64_t)hash
{
  codableEnum = [(INCodableEnumAttribute *)self codableEnum];
  v4 = [codableEnum hash];
  v7.receiver = self;
  v7.super_class = INCodableEnumAttribute;
  v5 = [(INCodableAttribute *)&v7 hash];

  return v5 ^ v4;
}

- (INCodableEnum)codableEnum
{
  if (!self->_codableEnum)
  {
    enumNamespace = [(INCodableEnumAttribute *)self enumNamespace];
    v4 = [enumNamespace isEqualToString:@"System"];

    if (v4)
    {
      v5 = +[INSchema systemSchema];
      _enums = [v5 _enums];
      enumNamespace2 = [(INCodableEnumAttribute *)self enumNamespace];
      v8 = INIntentDefinitionNamespacedName(@"System", enumNamespace2);
      v9 = [_enums objectForKeyedSubscript:v8];
      codableEnum = self->_codableEnum;
      self->_codableEnum = v9;
    }
  }

  v11 = self->_codableEnum;

  return v11;
}

- (id)valueWithName:(id)name
{
  v20 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (nameCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    codableEnum = [(INCodableEnumAttribute *)self codableEnum];
    values = [codableEnum values];

    v7 = [values countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(values);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          name = [v10 name];
          v12 = [name isEqualToString:nameCopy];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [values countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)valueForIndex:(unint64_t)index
{
  codableEnum = [(INCodableEnumAttribute *)self codableEnum];
  v5 = [codableEnum valueForIndex:index];

  return v5;
}

- (INCodableEnumAttribute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = INCodableEnumAttribute;
  v5 = [(INCodableAttribute *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codableEnum"];
    [(INCodableEnumAttribute *)v5 setCodableEnum:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enumNamespace"];
    [(INCodableEnumAttribute *)v5 setEnumNamespace:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = INCodableEnumAttribute;
  coderCopy = coder;
  [(INCodableAttribute *)&v7 encodeWithCoder:coderCopy];
  v5 = [(INCodableEnumAttribute *)self codableEnum:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"codableEnum"];

  enumNamespace = [(INCodableEnumAttribute *)self enumNamespace];
  [coderCopy encodeObject:enumNamespace forKey:@"enumNamespace"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v18.receiver = self;
  v18.super_class = INCodableEnumAttribute;
  v19 = 0;
  v7 = [(INCodableAttribute *)&v18 widgetPlistableRepresentationWithParameters:parametersCopy error:&v19];
  v8 = v19;
  if (v8)
  {
    v9 = v8;
    if (error)
    {
LABEL_3:
      v10 = v9;
      v11 = 0;
      *error = v9;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  codableEnum = [(INCodableEnumAttribute *)self codableEnum];
  v17 = 0;
  [v7 intents_setWidgetPlistRepresentable:codableEnum forKey:@"codableEnum" parameters:parametersCopy error:&v17];
  v9 = v17;

  if (v9)
  {
    if (error)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_8;
  }

  codableEnum2 = [(INCodableEnumAttribute *)self codableEnum];
  name = [codableEnum2 name];
  [v7 intents_setPlistSafeObject:name forKey:@"enumType"];

  enumNamespace = [(INCodableEnumAttribute *)self enumNamespace];
  [v7 intents_setPlistSafeObject:enumNamespace forKey:@"enumNamespace"];

  v11 = v7;
  v9 = 0;
LABEL_8:

  return v11;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v19[2] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = INCodableEnumAttribute;
  v4 = [(INCodableAttribute *)&v17 dictionaryRepresentationWithLocalizer:localizer];
  __INCodableDescriptionEnumTypeNamespaceKey = [(INCodableEnumAttribute *)self __INCodableDescriptionEnumTypeNamespaceKey];
  v18[0] = __INCodableDescriptionEnumTypeNamespaceKey;
  enumNamespace = [(INCodableEnumAttribute *)self enumNamespace];
  null = enumNamespace;
  if (!enumNamespace)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = null;
  __INCodableDescriptionEnumTypeKey = [(INCodableEnumAttribute *)self __INCodableDescriptionEnumTypeKey];
  v18[1] = __INCodableDescriptionEnumTypeKey;
  codableEnum = [(INCodableEnumAttribute *)self codableEnum];
  name = [codableEnum name];
  null2 = name;
  if (!name)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = null2;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v13 = [v4 if_dictionaryByAddingEntriesFromDictionary:v12];

  if (!name)
  {
  }

  if (!enumNamespace)
  {
  }

  if_dictionaryWithNonEmptyValues = [v13 if_dictionaryWithNonEmptyValues];

  v15 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  __INCodableDescriptionEnumTypeNamespaceKey = [(INCodableEnumAttribute *)self __INCodableDescriptionEnumTypeNamespaceKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionEnumTypeNamespaceKey];
  [(INCodableEnumAttribute *)self setEnumNamespace:v6];

  __INCodableDescriptionEnumTypeKey = [(INCodableEnumAttribute *)self __INCodableDescriptionEnumTypeKey];
  v8 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionEnumTypeKey];

  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  schema = [_codableDescription schema];

  _enums = [schema _enums];
  enumNamespace = [(INCodableEnumAttribute *)self enumNamespace];
  v13 = INIntentDefinitionNamespacedName(enumNamespace, v8);
  v14 = [_enums objectForKeyedSubscript:v13];

  if (([schema isSystem] & 1) == 0 && !v14)
  {
    enumNamespace2 = [(INCodableEnumAttribute *)self enumNamespace];
    v16 = [enumNamespace2 isEqualToString:@"System"];

    if (v16)
    {
      v17 = +[INSchema systemSchema];
      _enums2 = [v17 _enums];
      v19 = INIntentDefinitionNamespacedName(@"System", v8);
      v14 = [_enums2 objectForKeyedSubscript:v19];
    }

    else
    {
      v14 = 0;
    }
  }

  [(INCodableEnumAttribute *)self setCodableEnum:v14];
  v20.receiver = self;
  v20.super_class = INCodableEnumAttribute;
  [(INCodableAttribute *)&v20 updateWithDictionary:dictionaryCopy];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (v11.receiver = self, v11.super_class = INCodableEnumAttribute, -[INCodableAttribute isEqual:](&v11, sel_isEqual_, equalCopy)))
  {
    codableEnum = [(INCodableEnumAttribute *)self codableEnum];
    codableEnum2 = [equalCopy codableEnum];
    if ([codableEnum isEqual:codableEnum2])
    {
      enumNamespace = [(INCodableEnumAttribute *)self enumNamespace];
      enumNamespace2 = [equalCopy enumNamespace];
      v9 = [enumNamespace isEqual:enumNamespace2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = INCodableEnumAttribute;
  v4 = [(INCodableAttribute *)&v8 copyWithZone:zone];
  codableEnum = [(INCodableEnumAttribute *)self codableEnum];
  [v4 setCodableEnum:codableEnum];

  enumNamespace = [(INCodableEnumAttribute *)self enumNamespace];
  [v4 setEnumNamespace:enumNamespace];

  return v4;
}

- (int64_t)valueType
{
  codableEnum = [(INCodableEnumAttribute *)self codableEnum];
  type = [codableEnum type];

  if (type == 1)
  {
    return 204;
  }

  else
  {
    return 65;
  }
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v18.receiver = self;
  v18.super_class = &OBJC_METACLASS___INCodableEnumAttribute;
  v19 = 0;
  v7 = objc_msgSendSuper2(&v18, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v19);
  v8 = v19;
  if (v8)
  {
    v9 = v8;
    if (error)
    {
LABEL_3:
      v10 = v9;
      v11 = 0;
      *error = v9;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v12 = [representationCopy intents_stringForKey:@"enumNamespace"];
  v13 = v7[20];
  v7[20] = v12;

  v17 = 0;
  v14 = [INCodableEnum intents_widgetPlistRepresentableInDict:representationCopy key:@"codableEnum" error:&v17];
  v9 = v17;
  v15 = v7[19];
  v7[19] = v14;

  if (v9)
  {
    if (error)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_8;
  }

  v11 = v7;
LABEL_8:

  return v11;
}

- (id)__INTypeCodableDescriptionEnumTypeNamespaceKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableEnumAttributeEnumTypeNamespaceKey = [objc_opt_class() __INCodableEnumAttributeEnumTypeNamespaceKey];

  return __INCodableEnumAttributeEnumTypeNamespaceKey;
}

- (id)__INTypeCodableDescriptionEnumTypeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableEnumAttributeEnumTypeKey = [objc_opt_class() __INCodableEnumAttributeEnumTypeKey];

  return __INCodableEnumAttributeEnumTypeKey;
}

- (id)__INIntentResponseCodableDescriptionEnumTypeNamespaceKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableEnumAttributeEnumTypeNamespaceKey = [objc_opt_class() __INCodableEnumAttributeEnumTypeNamespaceKey];

  return __INCodableEnumAttributeEnumTypeNamespaceKey;
}

- (id)__INIntentResponseCodableDescriptionEnumTypeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableEnumAttributeEnumTypeKey = [objc_opt_class() __INCodableEnumAttributeEnumTypeKey];

  return __INCodableEnumAttributeEnumTypeKey;
}

@end