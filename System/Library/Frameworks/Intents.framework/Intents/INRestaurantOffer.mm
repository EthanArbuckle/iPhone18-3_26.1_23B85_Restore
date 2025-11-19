@interface INRestaurantOffer
- (BOOL)isEqual:(id)a3;
- (INRestaurantOffer)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INRestaurantOffer

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"offerTitleText";
  offerTitleText = self->_offerTitleText;
  v4 = offerTitleText;
  if (!offerTitleText)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"offerDetailText";
  offerDetailText = self->_offerDetailText;
  v6 = offerDetailText;
  if (!offerDetailText)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"offerIdentifier";
  offerIdentifier = self->_offerIdentifier;
  v8 = offerIdentifier;
  if (!offerIdentifier)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRestaurantOffer;
  v6 = [(INRestaurantOffer *)&v11 description];
  v7 = [(INRestaurantOffer *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = 0;
    if (v4 && (isKindOfClass & 1) != 0)
    {
      v7 = v4;
      v8 = [(INRestaurantOffer *)self offerTitleText];
      v9 = [(INRestaurantOffer *)v7 offerTitleText];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(INRestaurantOffer *)self offerDetailText];
        v11 = [(INRestaurantOffer *)v7 offerDetailText];
        if ([v10 isEqualToString:v11])
        {
          v12 = [(INRestaurantOffer *)self offerIdentifier];
          v13 = [(INRestaurantOffer *)v7 offerIdentifier];
          v6 = [v12 isEqualToString:v13];
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

- (void)encodeWithCoder:(id)a3
{
  offerTitleText = self->_offerTitleText;
  v5 = a3;
  [v5 encodeObject:offerTitleText forKey:@"offerTitleText"];
  [v5 encodeObject:self->_offerDetailText forKey:@"offerDetailText"];
  [v5 encodeObject:self->_offerIdentifier forKey:@"offerIdentifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(INRestaurantOffer *)self offerTitleText];
  [v4 setOfferTitleText:v5];

  v6 = [(INRestaurantOffer *)self offerDetailText];
  [v4 setOfferDetailText:v6];

  v7 = [(INRestaurantOffer *)self offerIdentifier];
  [v4 setOfferIdentifier:v7];

  return v4;
}

- (INRestaurantOffer)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INRestaurantOffer *)self init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offerTitleText"];
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

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offerDetailText"];
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

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offerIdentifier"];
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