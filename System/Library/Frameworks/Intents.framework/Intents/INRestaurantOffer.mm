@interface INRestaurantOffer
- (BOOL)isEqual:(id)equal;
- (INRestaurantOffer)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INRestaurantOffer

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"offerTitleText";
  offerTitleText = self->_offerTitleText;
  null = offerTitleText;
  if (!offerTitleText)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"offerDetailText";
  offerDetailText = self->_offerDetailText;
  null2 = offerDetailText;
  if (!offerDetailText)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"offerIdentifier";
  offerIdentifier = self->_offerIdentifier;
  null3 = offerIdentifier;
  if (!offerIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (offerIdentifier)
  {
    if (offerDetailText)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (offerTitleText)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!offerDetailText)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (offerTitleText)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRestaurantOffer;
  v6 = [(INRestaurantOffer *)&v11 description];
  _dictionaryRepresentation = [(INRestaurantOffer *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = 0;
    if (equalCopy && (isKindOfClass & 1) != 0)
    {
      v7 = equalCopy;
      offerTitleText = [(INRestaurantOffer *)self offerTitleText];
      offerTitleText2 = [(INRestaurantOffer *)v7 offerTitleText];
      if ([offerTitleText isEqualToString:offerTitleText2])
      {
        offerDetailText = [(INRestaurantOffer *)self offerDetailText];
        offerDetailText2 = [(INRestaurantOffer *)v7 offerDetailText];
        if ([offerDetailText isEqualToString:offerDetailText2])
        {
          offerIdentifier = [(INRestaurantOffer *)self offerIdentifier];
          offerIdentifier2 = [(INRestaurantOffer *)v7 offerIdentifier];
          v6 = [offerIdentifier isEqualToString:offerIdentifier2];
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  offerTitleText = self->_offerTitleText;
  coderCopy = coder;
  [coderCopy encodeObject:offerTitleText forKey:@"offerTitleText"];
  [coderCopy encodeObject:self->_offerDetailText forKey:@"offerDetailText"];
  [coderCopy encodeObject:self->_offerIdentifier forKey:@"offerIdentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  offerTitleText = [(INRestaurantOffer *)self offerTitleText];
  [v4 setOfferTitleText:offerTitleText];

  offerDetailText = [(INRestaurantOffer *)self offerDetailText];
  [v4 setOfferDetailText:offerDetailText];

  offerIdentifier = [(INRestaurantOffer *)self offerIdentifier];
  [v4 setOfferIdentifier:offerIdentifier];

  return v4;
}

- (INRestaurantOffer)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(INRestaurantOffer *)self init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"offerTitleText"];
  if (!v6)
  {
    v13 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v16 = 136315394;
    v17 = "[INRestaurantOffer initWithCoder:]";
    v18 = 2080;
    v19 = "_offerTitleText";
LABEL_13:
    _os_log_error_impl(&dword_18E991000, v13, OS_LOG_TYPE_ERROR, "%s Null value for %s", &v16, 0x16u);
    goto LABEL_14;
  }

  offerTitleText = v5->_offerTitleText;
  v5->_offerTitleText = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"offerDetailText"];
  if (!v8)
  {
    v13 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v16 = 136315394;
    v17 = "[INRestaurantOffer initWithCoder:]";
    v18 = 2080;
    v19 = "_offerDetailText";
    goto LABEL_13;
  }

  offerDetailText = v5->_offerDetailText;
  v5->_offerDetailText = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"offerIdentifier"];
  if (!v10)
  {
    v13 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[INRestaurantOffer initWithCoder:]";
      v18 = 2080;
      v19 = "_offerIdentifier";
      goto LABEL_13;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  offerIdentifier = v5->_offerIdentifier;
  v5->_offerIdentifier = v10;

LABEL_6:
  v12 = v5;
LABEL_15:

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

@end