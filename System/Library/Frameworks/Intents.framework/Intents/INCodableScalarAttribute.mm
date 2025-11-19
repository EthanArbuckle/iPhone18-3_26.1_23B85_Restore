@interface INCodableScalarAttribute
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (Class)_relationshipValueTransformerClass;
- (Class)objectClass;
- (Class)resolutionResultClass;
- (INCodableScalarAttribute)initWithCoder:(id)a3;
- (INCodableScalarAttribute)initWithPropertyName:(id)a3 type:(int64_t)a4;
- (id)__INCodableDescriptionKey;
- (id)__INCodableDescriptionTypeKey;
- (id)__INIntentResponseCodableDescriptionKey;
- (id)__INIntentResponseCodableDescriptionTypeKey;
- (id)__INTypeCodableDescriptionKey;
- (id)__INTypeCodableDescriptionTypeKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (int64_t)valueType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableScalarAttribute

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INCodableScalarAttribute type](self, "type")}];
  v4 = [v3 hash];
  v7.receiver = self;
  v7.super_class = INCodableScalarAttribute;
  v5 = [(INCodableAttribute *)&v7 hash];

  return v5 ^ v4;
}

- (id)__INCodableDescriptionTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableScalarAttributeTypeKey];

  return v3;
}

- (INCodableScalarAttribute)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = INCodableScalarAttribute;
  v5 = [(INCodableAttribute *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INCodableScalarAttribute;
  v4 = a3;
  [(INCodableAttribute *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = INCodableScalarAttribute;
  v13 = 0;
  v6 = [(INCodableAttribute *)&v12 widgetPlistableRepresentationWithParameters:a3 error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    if (a4)
    {
      v9 = v7;
      v10 = 0;
      *a4 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    [v6 intents_setIntegerIfNonZero:self->_type forKey:@"type"];
    v10 = v6;
  }

  return v10;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = INCodableScalarAttribute;
  v4 = [(INCodableAttribute *)&v14 dictionaryRepresentationWithLocalizer:a3];
  v5 = [(INCodableScalarAttribute *)self __INCodableDescriptionTypeKey];
  v15 = v5;
  v6 = [(INCodableScalarAttribute *)self type];
  if (v6 <= 8 && ((0x1CDu >> v6) & 1) != 0)
  {
    v7 = 0;
    v8 = off_1E7280C68[v6];
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
    v7 = 1;
  }

  v16[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [v4 if_dictionaryByAddingEntriesFromDictionary:v9];

  if (v7)
  {
  }

  v11 = [v10 if_dictionaryWithNonEmptyValues];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(INCodableScalarAttribute *)self __INCodableDescriptionTypeKey];
  v6 = [v4 objectForKeyedSubscript:v5];
  self->_type = INCodableScalarAttributeTypeFromString(v6, [(INCodableAttribute *)self modifier]);

  v7.receiver = self;
  v7.super_class = INCodableScalarAttribute;
  [(INCodableAttribute *)&v7 updateWithDictionary:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (v8.receiver = self, v8.super_class = INCodableScalarAttribute, -[INCodableAttribute isEqual:](&v8, sel_isEqual_, v4)))
  {
    v5 = [(INCodableScalarAttribute *)self type];
    v6 = v5 == [v4 type];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = INCodableScalarAttribute;
  v4 = [(INCodableAttribute *)&v6 copyWithZone:a3];
  [v4 setType:{-[INCodableScalarAttribute type](self, "type")}];
  return v4;
}

- (Class)_relationshipValueTransformerClass
{
  if ([(INCodableScalarAttribute *)self type]== 7)
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (Class)resolutionResultClass
{
  v2 = [(INCodableScalarAttribute *)self type];
  if (v2 > 8)
  {
    v4 = 0;
  }

  else
  {
    v3 = *off_1E7280C20[v2];
    v4 = objc_opt_class();
  }

  return v4;
}

- (Class)objectClass
{
  v2 = [(INCodableScalarAttribute *)self type];
  if (v2 > 8)
  {
    v4 = 0;
  }

  else
  {
    v3 = **(&unk_1E7280BD8 + v2);
    v4 = objc_opt_class();
  }

  return v4;
}

- (int64_t)valueType
{
  v2 = [(INCodableScalarAttribute *)self type];
  if (v2 > 7)
  {
    return 0;
  }

  else
  {
    return qword_18EE5ED10[v2];
  }
}

- (INCodableScalarAttribute)initWithPropertyName:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = INCodableScalarAttribute;
  v7 = [(INCodableScalarAttribute *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a4;
    [(INCodableAttribute *)v7 setModifier:1];
    [(INCodableAttribute *)v8 setPropertyName:v6];
  }

  return v8;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___INCodableScalarAttribute;
  v14 = 0;
  v7 = objc_msgSendSuper2(&v13, sel_makeFromWidgetPlistableRepresentation_error_, v6, &v14);
  v8 = v14;
  v9 = v8;
  if (v8)
  {
    if (a4)
    {
      v10 = v8;
      v11 = 0;
      *a4 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v7[19] = [v6 intents_intForKey:@"type"];
    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableScalarAttributeTypeKey];

  return v3;
}

- (id)__INTypeCodableDescriptionKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableScalarAttributeKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableScalarAttributeTypeKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableScalarAttributeKey];

  return v3;
}

- (id)__INCodableDescriptionKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableScalarAttributeKey];

  return v3;
}

@end