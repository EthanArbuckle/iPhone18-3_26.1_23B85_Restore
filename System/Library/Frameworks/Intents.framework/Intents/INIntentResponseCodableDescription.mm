@interface INIntentResponseCodableDescription
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (INCodableAttribute)outputAttribute;
- (INIntentResponseCodableDescription)initWithCoder:(id)coder;
- (id)_attributeKey;
- (id)_attributesKey;
- (id)attributes;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)intentResponseCodeWithCode:(int64_t)code;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INIntentResponseCodableDescription

- (id)_attributesKey
{
  v2 = objc_opt_class();

  return [v2 __ParametersKey];
}

- (id)_attributeKey
{
  v2 = objc_opt_class();

  return [v2 __ParameterKey];
}

- (id)attributes
{
  v9.receiver = self;
  v9.super_class = INIntentResponseCodableDescription;
  attributes = [(INCodableDescription *)&v9 attributes];
  v4 = [attributes objectForKeyedSubscript:&unk_1F02D7F18];

  if (!v4)
  {
    v5 = [attributes mutableCopy];
    v6 = objc_alloc_init(INCodableScalarAttribute);
    [(INCodableAttribute *)v6 setModifier:1];
    [(INCodableAttribute *)v6 setPropertyName:@"_code"];
    [(INCodableScalarAttribute *)v6 setType:2];
    [v5 setObject:v6 forKeyedSubscript:&unk_1F02D7F18];

    v7 = [v5 copy];
    [(INCodableDescription *)self setAttributes:v7];

    attributes = v7;
  }

  return attributes;
}

- (INIntentResponseCodableDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = INIntentResponseCodableDescription;
  v5 = [(INRootCodableDescription *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"responseCodes"];
    [(INIntentResponseCodableDescription *)v5 setResponseCodes:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_outputAttributeName"];
    [(INIntentResponseCodableDescription *)v5 _setOutputAttributeName:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = INIntentResponseCodableDescription;
  coderCopy = coder;
  [(INRootCodableDescription *)&v7 encodeWithCoder:coderCopy];
  v5 = [(INIntentResponseCodableDescription *)self responseCodes:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"responseCodes"];

  _outputAttributeName = [(INIntentResponseCodableDescription *)self _outputAttributeName];
  [coderCopy encodeObject:_outputAttributeName forKey:@"_outputAttributeName"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v15.receiver = self;
  v15.super_class = INIntentResponseCodableDescription;
  v16 = 0;
  v6 = [(INRootCodableDescription *)&v15 widgetPlistableRepresentationWithParameters:parameters error:&v16];
  v7 = v16;
  if (v7)
  {
    v8 = v7;
    if (error)
    {
LABEL_3:
      v9 = v8;
      v10 = 0;
      *error = v8;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  responseCodes = [(INIntentResponseCodableDescription *)self responseCodes];
  v14 = 0;
  [v6 intents_setArrayOfWidgetPlistRepresentable:responseCodes forKey:@"responseCodes" error:&v14];
  v8 = v14;

  if (v8)
  {
    if (error)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_8;
  }

  _outputAttributeName = [(INIntentResponseCodableDescription *)self _outputAttributeName];
  [v6 intents_setPlistSafeObject:_outputAttributeName forKey:@"_outputAttributeName"];

  v10 = v6;
LABEL_8:

  return v10;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v32 = *MEMORY[0x1E69E9840];
  localizerCopy = localizer;
  v5 = MEMORY[0x1E695DF70];
  responseCodes = [(INIntentResponseCodableDescription *)self responseCodes];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(responseCodes, "count")}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  responseCodes2 = [(INIntentResponseCodableDescription *)self responseCodes];
  v9 = [responseCodes2 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(responseCodes2);
        }

        v13 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentationWithLocalizer:localizerCopy];
        [v7 addObject:v13];
      }

      v10 = [responseCodes2 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v10);
  }

  v24.receiver = self;
  v24.super_class = INIntentResponseCodableDescription;
  v14 = [(INCodableDescription *)&v24 dictionaryRepresentationWithLocalizer:localizerCopy];
  __OutputKey = [objc_opt_class() __OutputKey];
  v29[0] = __OutputKey;
  _outputAttributeName = [(INIntentResponseCodableDescription *)self _outputAttributeName];
  null = _outputAttributeName;
  if (!_outputAttributeName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v30[0] = null;
  __CodesKey = [objc_opt_class() __CodesKey];
  v29[1] = __CodesKey;
  v30[1] = v7;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v20 = [v14 if_dictionaryByAddingEntriesFromDictionary:v19];

  if (!_outputAttributeName)
  {
  }

  if_dictionaryWithNonEmptyValues = [v20 if_dictionaryWithNonEmptyValues];

  v22 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  v32 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = INIntentResponseCodableDescription;
  [(INCodableDescription *)&v30 updateWithDictionary:dictionaryCopy];
  __OutputKey = [objc_opt_class() __OutputKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:__OutputKey];
  [(INIntentResponseCodableDescription *)self _setOutputAttributeName:v6];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  __CodesKey = [objc_opt_class() __CodesKey];
  v24 = dictionaryCopy;
  v9 = [dictionaryCopy objectForKeyedSubscript:__CodesKey];

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    v13 = 100;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = objc_alloc_init(INIntentResponseCodableCode);
        [(INIntentResponseCodableCode *)v16 _setCodableDescription:self];
        [(INIntentResponseCodableCode *)v16 updateWithDictionary:v15];
        name = [(INIntentResponseCodableCode *)v16 name];
        v18 = [name isEqualToString:@"failure"];

        v19 = v16;
        if (v18)
        {
          v20 = 5;
LABEL_10:
          [(INIntentResponseCodableCode *)v19 setValue:v20];
          goto LABEL_12;
        }

        name2 = [(INIntentResponseCodableCode *)v16 name];
        v22 = [name2 isEqualToString:@"success"];

        v19 = v16;
        if (v22)
        {
          v20 = 4;
          goto LABEL_10;
        }

        [(INIntentResponseCodableCode *)v16 setValue:v13++];
LABEL_12:
        [v7 addObject:v16];
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v11);
  }

  [(INIntentResponseCodableDescription *)self setResponseCodes:v7];
  v23 = *MEMORY[0x1E69E9840];
}

- (INCodableAttribute)outputAttribute
{
  _outputAttributeName = [(INIntentResponseCodableDescription *)self _outputAttributeName];

  if (_outputAttributeName)
  {
    _outputAttributeName2 = [(INIntentResponseCodableDescription *)self _outputAttributeName];
    v5 = [(INCodableDescription *)self attributeByName:_outputAttributeName2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)intentResponseCodeWithCode:(int64_t)code
{
  v25 = *MEMORY[0x1E69E9840];
  intentResponseCodableCodes = self->_intentResponseCodableCodes;
  if (!intentResponseCodableCodes)
  {
    codeCopy = code;
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](self->_responseCodes, "count")}];
    v6 = self->_intentResponseCodableCodes;
    self->_intentResponseCodableCodes = v5;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = self->_responseCodes;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = self->_intentResponseCodableCodes;
          v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "value")}];
          [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:v14];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    intentResponseCodableCodes = self->_intentResponseCodableCodes;
    code = codeCopy;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  v16 = [(NSMutableDictionary *)intentResponseCodableCodes objectForKeyedSubscript:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___INIntentResponseCodableDescription;
  v17 = 0;
  v7 = objc_msgSendSuper2(&v16, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v17);
  v8 = v17;
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

  v15 = 0;
  v12 = [INIntentResponseCodableCode intents_arrayOfWidgetPlistRepresentableInDict:representationCopy key:@"responseCodes" error:&v15 resultTransformer:0];
  v9 = v15;
  [v7 setResponseCodes:v12];

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

  v13 = [representationCopy intents_stringForKey:@"_outputAttributeName"];
  [v7 _setOutputAttributeName:v13];

  v11 = v7;
LABEL_8:

  return v11;
}

@end