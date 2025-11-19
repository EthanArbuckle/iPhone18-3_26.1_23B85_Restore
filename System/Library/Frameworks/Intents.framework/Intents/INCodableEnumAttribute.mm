@interface INCodableEnumAttribute
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (INCodableEnum)codableEnum;
- (INCodableEnumAttribute)initWithCoder:(id)a3;
- (id)__INCodableDescriptionEnumTypeKey;
- (id)__INCodableDescriptionEnumTypeNamespaceKey;
- (id)__INIntentResponseCodableDescriptionEnumTypeKey;
- (id)__INIntentResponseCodableDescriptionEnumTypeNamespaceKey;
- (id)__INTypeCodableDescriptionEnumTypeKey;
- (id)__INTypeCodableDescriptionEnumTypeNamespaceKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)valueForIndex:(unint64_t)a3;
- (id)valueWithName:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (int64_t)valueType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableEnumAttribute

- (id)__INCodableDescriptionEnumTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableEnumAttributeEnumTypeKey];

  return v3;
}

- (id)__INCodableDescriptionEnumTypeNamespaceKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableEnumAttributeEnumTypeNamespaceKey];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(INCodableEnumAttribute *)self codableEnum];
  v4 = [v3 hash];
  v7.receiver = self;
  v7.super_class = INCodableEnumAttribute;
  v5 = [(INCodableAttribute *)&v7 hash];

  return v5 ^ v4;
}

- (INCodableEnum)codableEnum
{
  if (!self->_codableEnum)
  {
    v3 = [(INCodableEnumAttribute *)self enumNamespace];
    v4 = [v3 isEqualToString:@"System"];

    if (v4)
    {
      v5 = +[INSchema systemSchema];
      v6 = [v5 _enums];
      v7 = [(INCodableEnumAttribute *)self enumNamespace];
      v8 = INIntentDefinitionNamespacedName(@"System", v7);
      v9 = [v6 objectForKeyedSubscript:v8];
      codableEnum = self->_codableEnum;
      self->_codableEnum = v9;
    }
  }

  v11 = self->_codableEnum;

  return v11;
}

- (id)valueWithName:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(INCodableEnumAttribute *)self codableEnum];
    v6 = [v5 values];

    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 name];
          v12 = [v11 isEqualToString:v4];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)valueForIndex:(unint64_t)a3
{
  v4 = [(INCodableEnumAttribute *)self codableEnum];
  v5 = [v4 valueForIndex:a3];

  return v5;
}

- (INCodableEnumAttribute)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = INCodableEnumAttribute;
  v5 = [(INCodableAttribute *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"codableEnum"];
    [(INCodableEnumAttribute *)v5 setCodableEnum:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enumNamespace"];
    [(INCodableEnumAttribute *)v5 setEnumNamespace:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = INCodableEnumAttribute;
  v4 = a3;
  [(INCodableAttribute *)&v7 encodeWithCoder:v4];
  v5 = [(INCodableEnumAttribute *)self codableEnum:v7.receiver];
  [v4 encodeObject:v5 forKey:@"codableEnum"];

  v6 = [(INCodableEnumAttribute *)self enumNamespace];
  [v4 encodeObject:v6 forKey:@"enumNamespace"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = INCodableEnumAttribute;
  v19 = 0;
  v7 = [(INCodableAttribute *)&v18 widgetPlistableRepresentationWithParameters:v6 error:&v19];
  v8 = v19;
  if (v8)
  {
    v9 = v8;
    if (a4)
    {
LABEL_3:
      v10 = v9;
      v11 = 0;
      *a4 = v9;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v12 = [(INCodableEnumAttribute *)self codableEnum];
  v17 = 0;
  [v7 intents_setWidgetPlistRepresentable:v12 forKey:@"codableEnum" parameters:v6 error:&v17];
  v9 = v17;

  if (v9)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_8;
  }

  v13 = [(INCodableEnumAttribute *)self codableEnum];
  v14 = [v13 name];
  [v7 intents_setPlistSafeObject:v14 forKey:@"enumType"];

  v15 = [(INCodableEnumAttribute *)self enumNamespace];
  [v7 intents_setPlistSafeObject:v15 forKey:@"enumNamespace"];

  v11 = v7;
  v9 = 0;
LABEL_8:

  return v11;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = INCodableEnumAttribute;
  v4 = [(INCodableAttribute *)&v17 dictionaryRepresentationWithLocalizer:a3];
  v5 = [(INCodableEnumAttribute *)self __INCodableDescriptionEnumTypeNamespaceKey];
  v18[0] = v5;
  v6 = [(INCodableEnumAttribute *)self enumNamespace];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = v7;
  v8 = [(INCodableEnumAttribute *)self __INCodableDescriptionEnumTypeKey];
  v18[1] = v8;
  v9 = [(INCodableEnumAttribute *)self codableEnum];
  v10 = [v9 name];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v13 = [v4 if_dictionaryByAddingEntriesFromDictionary:v12];

  if (!v10)
  {
  }

  if (!v6)
  {
  }

  v14 = [v13 if_dictionaryWithNonEmptyValues];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(INCodableEnumAttribute *)self __INCodableDescriptionEnumTypeNamespaceKey];
  v6 = [v4 objectForKeyedSubscript:v5];
  [(INCodableEnumAttribute *)self setEnumNamespace:v6];

  v7 = [(INCodableEnumAttribute *)self __INCodableDescriptionEnumTypeKey];
  v8 = [v4 objectForKeyedSubscript:v7];

  v9 = [(INCodableAttribute *)self _codableDescription];
  v10 = [v9 schema];

  v11 = [v10 _enums];
  v12 = [(INCodableEnumAttribute *)self enumNamespace];
  v13 = INIntentDefinitionNamespacedName(v12, v8);
  v14 = [v11 objectForKeyedSubscript:v13];

  if (([v10 isSystem] & 1) == 0 && !v14)
  {
    v15 = [(INCodableEnumAttribute *)self enumNamespace];
    v16 = [v15 isEqualToString:@"System"];

    if (v16)
    {
      v17 = +[INSchema systemSchema];
      v18 = [v17 _enums];
      v19 = INIntentDefinitionNamespacedName(@"System", v8);
      v14 = [v18 objectForKeyedSubscript:v19];
    }

    else
    {
      v14 = 0;
    }
  }

  [(INCodableEnumAttribute *)self setCodableEnum:v14];
  v20.receiver = self;
  v20.super_class = INCodableEnumAttribute;
  [(INCodableAttribute *)&v20 updateWithDictionary:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (v11.receiver = self, v11.super_class = INCodableEnumAttribute, -[INCodableAttribute isEqual:](&v11, sel_isEqual_, v4)))
  {
    v5 = [(INCodableEnumAttribute *)self codableEnum];
    v6 = [v4 codableEnum];
    if ([v5 isEqual:v6])
    {
      v7 = [(INCodableEnumAttribute *)self enumNamespace];
      v8 = [v4 enumNamespace];
      v9 = [v7 isEqual:v8];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = INCodableEnumAttribute;
  v4 = [(INCodableAttribute *)&v8 copyWithZone:a3];
  v5 = [(INCodableEnumAttribute *)self codableEnum];
  [v4 setCodableEnum:v5];

  v6 = [(INCodableEnumAttribute *)self enumNamespace];
  [v4 setEnumNamespace:v6];

  return v4;
}

- (int64_t)valueType
{
  v2 = [(INCodableEnumAttribute *)self codableEnum];
  v3 = [v2 type];

  if (v3 == 1)
  {
    return 204;
  }

  else
  {
    return 65;
  }
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18.receiver = a1;
  v18.super_class = &OBJC_METACLASS___INCodableEnumAttribute;
  v19 = 0;
  v7 = objc_msgSendSuper2(&v18, sel_makeFromWidgetPlistableRepresentation_error_, v6, &v19);
  v8 = v19;
  if (v8)
  {
    v9 = v8;
    if (a4)
    {
LABEL_3:
      v10 = v9;
      v11 = 0;
      *a4 = v9;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v12 = [v6 intents_stringForKey:@"enumNamespace"];
  v13 = v7[20];
  v7[20] = v12;

  v17 = 0;
  v14 = [INCodableEnum intents_widgetPlistRepresentableInDict:v6 key:@"codableEnum" error:&v17];
  v9 = v17;
  v15 = v7[19];
  v7[19] = v14;

  if (v9)
  {
    if (a4)
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
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableEnumAttributeEnumTypeNamespaceKey];

  return v3;
}

- (id)__INTypeCodableDescriptionEnumTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableEnumAttributeEnumTypeKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionEnumTypeNamespaceKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableEnumAttributeEnumTypeNamespaceKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionEnumTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableEnumAttributeEnumTypeKey];

  return v3;
}

@end