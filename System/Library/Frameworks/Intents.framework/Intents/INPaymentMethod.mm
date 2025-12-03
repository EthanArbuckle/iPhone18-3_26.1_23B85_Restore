@interface INPaymentMethod
+ (INPaymentMethod)applePayPaymentMethod;
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)_intents_compareValue:(id)value relation:(unint64_t)relation;
- (BOOL)isEqual:(id)equal;
- (INPaymentMethod)initWithCoder:(id)coder;
- (INPaymentMethod)initWithType:(INPaymentMethodType)type name:(NSString *)name identificationHint:(NSString *)identificationHint icon:(INImage *)icon;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)_intents_localizedCopyWithLocalizer:(id)localizer;
- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)_injectProxiesForImages:(id)images completion:(id)completion;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INPaymentMethod

- (id)_intents_localizedCopyWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  v5 = objc_alloc(objc_opt_class());
  type = [(INPaymentMethod *)self type];
  name = [(INPaymentMethod *)self name];
  languageCode = [localizerCopy languageCode];

  v9 = [name localizeForLanguage:languageCode];
  identificationHint = [(INPaymentMethod *)self identificationHint];
  icon = [(INPaymentMethod *)self icon];
  v12 = [v5 initWithType:type name:v9 identificationHint:identificationHint icon:icon];

  return v12;
}

- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata
{
  localizerCopy = localizer;
  name = [(INPaymentMethod *)self name];

  if (name)
  {
    name2 = [(INPaymentMethod *)self name];
    v8 = [name2 _intents_readableTitleWithLocalizer:localizerCopy];

    localizerCopy = name2;
  }

  else
  {
    v8 = INPaymentMethodTypeGetLocalizedName([(INPaymentMethod *)self type], localizerCopy);
  }

  return v8;
}

- (BOOL)_intents_compareValue:(id)value relation:(unint64_t)relation
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = valueCopy;
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v12 = v8;

    name = [v12 name];
LABEL_16:
    v11 = name;

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = valueCopy;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = v10;

    name = [v12 if_flatMap:&__block_literal_global_22421];
    goto LABEL_16;
  }

  v11 = 0;
LABEL_17:
  name2 = [(INPaymentMethod *)self name];
  v15 = [name2 _intents_compareValue:v11 relation:relation];

  return v15;
}

id __87__INPaymentMethod_INCodableAttributeRelationComparing___intents_compareValue_relation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = MEMORY[0x1E695DEC8];
  v6 = [v4 name];

  v7 = [v5 if_arrayWithObjectIfNonNil:v6];

  return v7;
}

- (void)_injectProxiesForImages:(id)images completion:(id)completion
{
  imagesCopy = images;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = [(INPaymentMethod *)self copy];
    icon = [(INPaymentMethod *)self icon];
    if (icon)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __77__INPaymentMethod_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
      v10[3] = &unk_1E7285CD0;
      v10[4] = v8;
      v11 = completionCopy;
      imagesCopy[2](imagesCopy, icon, v10);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v8);
    }
  }
}

uint64_t __77__INPaymentMethod_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setIcon:a2];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)_intents_updateContainerWithCache:(id)cache
{
  cacheCopy = cache;
  icon = [(INPaymentMethod *)self icon];
  if (icon)
  {
    v5 = icon;
    icon2 = [(INPaymentMethod *)self icon];
    _identifier = [icon2 _identifier];
    v8 = [cacheCopy cacheableObjectForIdentifier:_identifier];

    if (v8)
    {
      icon3 = [(INPaymentMethod *)self icon];
      _identifier2 = [icon3 _identifier];
      v11 = [cacheCopy cacheableObjectForIdentifier:_identifier2];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        icon4 = [(INPaymentMethod *)self icon];
        [v11 _imageSize];
        [icon4 _setImageSize:?];
      }
    }
  }
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  icon = [(INPaymentMethod *)self icon];

  if (icon)
  {
    icon2 = [(INPaymentMethod *)self icon];
    [v3 addObject:icon2];
  }

  if ([v3 count])
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)_dictionaryRepresentation
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"type";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v14[0] = v3;
  v13[1] = @"name";
  name = self->_name;
  null = name;
  if (!name)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null;
  v13[2] = @"icon";
  icon = self->_icon;
  null2 = icon;
  if (!icon)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null2;
  v13[3] = @"identificationHint";
  identificationHint = self->_identificationHint;
  null3 = identificationHint;
  if (!identificationHint)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[3] = null3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  if (identificationHint)
  {
    if (icon)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (name)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!icon)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (name)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPaymentMethod;
  v6 = [(INPaymentMethod *)&v11 description];
  _dictionaryRepresentation = [(INPaymentMethod *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = self->_type - 1;
  if (v8 > 7)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E72809C8[v8];
  }

  v10 = v9;
  [dictionary if_setObjectIfNonNil:v10 forKey:@"type"];

  v11 = [encoderCopy encodeObject:self->_name];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"name"];

  v12 = [encoderCopy encodeObject:self->_icon];
  [dictionary if_setObjectIfNonNil:v12 forKey:@"icon"];

  v13 = [encoderCopy encodeObject:self->_identificationHint];

  [dictionary if_setObjectIfNonNil:v13 forKey:@"identificationHint"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_icon forKey:@"icon"];
  [coderCopy encodeObject:self->_identificationHint forKey:@"identificationHint"];
}

- (INPaymentMethod)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"name"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"identificationHint"];

  v15 = [(INPaymentMethod *)self initWithType:v5 name:v9 identificationHint:v14 icon:v10];
  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v9 = 0;
      if (self->_type == v5->_type)
      {
        name = self->_name;
        if (name == v5->_name || [(NSString *)name isEqual:?])
        {
          icon = self->_icon;
          if (icon == v5->_icon || [(INImage *)icon isEqual:?])
          {
            identificationHint = self->_identificationHint;
            if (identificationHint == v5->_identificationHint || [(NSString *)identificationHint isEqual:?])
            {
              v9 = 1;
            }
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_name hash];
  v6 = v5 ^ [(INImage *)self->_icon hash];
  v7 = v6 ^ [(NSString *)self->_identificationHint hash];

  return v7 ^ v4;
}

- (INPaymentMethod)initWithType:(INPaymentMethodType)type name:(NSString *)name identificationHint:(NSString *)identificationHint icon:(INImage *)icon
{
  v10 = name;
  v11 = identificationHint;
  v12 = icon;
  v22.receiver = self;
  v22.super_class = INPaymentMethod;
  v13 = [(INPaymentMethod *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = type;
    v15 = [(NSString *)v10 copy];
    v16 = v14->_name;
    v14->_name = v15;

    v17 = [(INImage *)v12 copy];
    v18 = v14->_icon;
    v14->_icon = v17;

    v19 = [(NSString *)v11 copy];
    v20 = v14->_identificationHint;
    v14->_identificationHint = v19;
  }

  return v14;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [fromCopy objectForKeyedSubscript:@"type"];
    v10 = INPaymentMethodTypeWithString(v9);

    v11 = [fromCopy objectForKeyedSubscript:@"name"];
    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"icon"];
    v14 = [decoderCopy decodeObjectOfClass:v12 from:v13];

    v15 = [fromCopy objectForKeyedSubscript:@"identificationHint"];
    v16 = [[self alloc] initWithType:v10 name:v11 identificationHint:v15 icon:v14];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (INPaymentMethod)applePayPaymentMethod
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__INPaymentMethod_applePayPaymentMethod__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (applePayPaymentMethod_onceToken != -1)
  {
    dispatch_once(&applePayPaymentMethod_onceToken, block);
  }

  v2 = applePayPaymentMethod_me;

  return v2;
}

uint64_t __40__INPaymentMethod_applePayPaymentMethod__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithType:8 name:0 identificationHint:0 icon:0];
  v2 = applePayPaymentMethod_me;
  applePayPaymentMethod_me = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end