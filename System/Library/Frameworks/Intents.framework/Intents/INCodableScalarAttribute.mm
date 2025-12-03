@interface INCodableScalarAttribute
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (Class)_relationshipValueTransformerClass;
- (Class)objectClass;
- (Class)resolutionResultClass;
- (INCodableScalarAttribute)initWithCoder:(id)coder;
- (INCodableScalarAttribute)initWithPropertyName:(id)name type:(int64_t)type;
- (id)__INCodableDescriptionKey;
- (id)__INCodableDescriptionTypeKey;
- (id)__INIntentResponseCodableDescriptionKey;
- (id)__INIntentResponseCodableDescriptionTypeKey;
- (id)__INTypeCodableDescriptionKey;
- (id)__INTypeCodableDescriptionTypeKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (int64_t)valueType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
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
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableScalarAttributeTypeKey = [objc_opt_class() __INCodableScalarAttributeTypeKey];

  return __INCodableScalarAttributeTypeKey;
}

- (INCodableScalarAttribute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = INCodableScalarAttribute;
  v5 = [(INCodableAttribute *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INCodableScalarAttribute;
  coderCopy = coder;
  [(INCodableAttribute *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v12.receiver = self;
  v12.super_class = INCodableScalarAttribute;
  v13 = 0;
  v6 = [(INCodableAttribute *)&v12 widgetPlistableRepresentationWithParameters:parameters error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      v10 = 0;
      *error = v8;
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

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = INCodableScalarAttribute;
  v4 = [(INCodableAttribute *)&v14 dictionaryRepresentationWithLocalizer:localizer];
  __INCodableDescriptionTypeKey = [(INCodableScalarAttribute *)self __INCodableDescriptionTypeKey];
  v15 = __INCodableDescriptionTypeKey;
  type = [(INCodableScalarAttribute *)self type];
  if (type <= 8 && ((0x1CDu >> type) & 1) != 0)
  {
    v7 = 0;
    null = off_1E7280C68[type];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v7 = 1;
  }

  v16[0] = null;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [v4 if_dictionaryByAddingEntriesFromDictionary:v9];

  if (v7)
  {
  }

  if_dictionaryWithNonEmptyValues = [v10 if_dictionaryWithNonEmptyValues];

  v12 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  __INCodableDescriptionTypeKey = [(INCodableScalarAttribute *)self __INCodableDescriptionTypeKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionTypeKey];
  self->_type = INCodableScalarAttributeTypeFromString(v6, [(INCodableAttribute *)self modifier]);

  v7.receiver = self;
  v7.super_class = INCodableScalarAttribute;
  [(INCodableAttribute *)&v7 updateWithDictionary:dictionaryCopy];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (v8.receiver = self, v8.super_class = INCodableScalarAttribute, -[INCodableAttribute isEqual:](&v8, sel_isEqual_, equalCopy)))
  {
    type = [(INCodableScalarAttribute *)self type];
    v6 = type == [equalCopy type];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = INCodableScalarAttribute;
  v4 = [(INCodableAttribute *)&v6 copyWithZone:zone];
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
  type = [(INCodableScalarAttribute *)self type];
  if (type > 8)
  {
    v4 = 0;
  }

  else
  {
    v3 = *off_1E7280C20[type];
    v4 = objc_opt_class();
  }

  return v4;
}

- (Class)objectClass
{
  type = [(INCodableScalarAttribute *)self type];
  if (type > 8)
  {
    v4 = 0;
  }

  else
  {
    v3 = **(&unk_1E7280BD8 + type);
    v4 = objc_opt_class();
  }

  return v4;
}

- (int64_t)valueType
{
  type = [(INCodableScalarAttribute *)self type];
  if (type > 7)
  {
    return 0;
  }

  else
  {
    return qword_18EE5ED10[type];
  }
}

- (INCodableScalarAttribute)initWithPropertyName:(id)name type:(int64_t)type
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = INCodableScalarAttribute;
  v7 = [(INCodableScalarAttribute *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    [(INCodableAttribute *)v7 setModifier:1];
    [(INCodableAttribute *)v8 setPropertyName:nameCopy];
  }

  return v8;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___INCodableScalarAttribute;
  v14 = 0;
  v7 = objc_msgSendSuper2(&v13, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v14);
  v8 = v14;
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = v8;
      v11 = 0;
      *error = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v7[19] = [representationCopy intents_intForKey:@"type"];
    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableScalarAttributeTypeKey = [objc_opt_class() __INCodableScalarAttributeTypeKey];

  return __INCodableScalarAttributeTypeKey;
}

- (id)__INTypeCodableDescriptionKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableScalarAttributeKey = [objc_opt_class() __INCodableScalarAttributeKey];

  return __INCodableScalarAttributeKey;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableScalarAttributeTypeKey = [objc_opt_class() __INCodableScalarAttributeTypeKey];

  return __INCodableScalarAttributeTypeKey;
}

- (id)__INIntentResponseCodableDescriptionKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableScalarAttributeKey = [objc_opt_class() __INCodableScalarAttributeKey];

  return __INCodableScalarAttributeKey;
}

- (id)__INCodableDescriptionKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableScalarAttributeKey = [objc_opt_class() __INCodableScalarAttributeKey];

  return __INCodableScalarAttributeKey;
}

@end