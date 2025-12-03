@interface INTermsAndConditions
- (BOOL)isEqual:(id)equal;
- (INTermsAndConditions)initWithCoder:(id)coder;
- (INTermsAndConditions)initWithLocalizedTermsAndConditionsText:(NSString *)localizedTermsAndConditionsText privacyPolicyURL:(NSURL *)privacyPolicyURL termsAndConditionsURL:(NSURL *)termsAndConditionsURL;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INTermsAndConditions

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"localizedTermsAndConditionsText";
  localizedTermsAndConditionsText = self->_localizedTermsAndConditionsText;
  null = localizedTermsAndConditionsText;
  if (!localizedTermsAndConditionsText)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"privacyPolicyURL";
  privacyPolicyURL = self->_privacyPolicyURL;
  null2 = privacyPolicyURL;
  if (!privacyPolicyURL)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"termsAndConditionsURL";
  termsAndConditionsURL = self->_termsAndConditionsURL;
  null3 = termsAndConditionsURL;
  if (!termsAndConditionsURL)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (termsAndConditionsURL)
  {
    if (privacyPolicyURL)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (localizedTermsAndConditionsText)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!privacyPolicyURL)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (localizedTermsAndConditionsText)
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
  v11.super_class = INTermsAndConditions;
  v6 = [(INTermsAndConditions *)&v11 description];
  _dictionaryRepresentation = [(INTermsAndConditions *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      privacyPolicyURL = [(INTermsAndConditions *)v7 privacyPolicyURL];
      if (privacyPolicyURL || ([(INTermsAndConditions *)self privacyPolicyURL], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        privacyPolicyURL2 = [(INTermsAndConditions *)v7 privacyPolicyURL];
        privacyPolicyURL3 = [(INTermsAndConditions *)self privacyPolicyURL];
        v10 = [privacyPolicyURL2 isEqual:privacyPolicyURL3];

        if (privacyPolicyURL)
        {
LABEL_11:

          termsAndConditionsURL = [(INTermsAndConditions *)v7 termsAndConditionsURL];
          if (termsAndConditionsURL || ([(INTermsAndConditions *)self termsAndConditionsURL], (privacyPolicyURL2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            termsAndConditionsURL2 = [(INTermsAndConditions *)v7 termsAndConditionsURL];
            termsAndConditionsURL3 = [(INTermsAndConditions *)self termsAndConditionsURL];
            v15 = [termsAndConditionsURL2 isEqual:termsAndConditionsURL3];

            if (termsAndConditionsURL)
            {
LABEL_17:

              localizedTermsAndConditionsText = [(INTermsAndConditions *)v7 localizedTermsAndConditionsText];
              localizedTermsAndConditionsText2 = [(INTermsAndConditions *)self localizedTermsAndConditionsText];
              v11 = [localizedTermsAndConditionsText isEqualToString:localizedTermsAndConditionsText2] & v10 & v15;

              goto LABEL_18;
            }
          }

          else
          {
            v15 = 1;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v10 = 1;
      }

      goto LABEL_11;
    }

    LOBYTE(v11) = 0;
  }

LABEL_18:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [INTermsAndConditions alloc];
  localizedTermsAndConditionsText = [(INTermsAndConditions *)self localizedTermsAndConditionsText];
  privacyPolicyURL = [(INTermsAndConditions *)self privacyPolicyURL];
  termsAndConditionsURL = [(INTermsAndConditions *)self termsAndConditionsURL];
  v8 = [(INTermsAndConditions *)v4 initWithLocalizedTermsAndConditionsText:localizedTermsAndConditionsText privacyPolicyURL:privacyPolicyURL termsAndConditionsURL:termsAndConditionsURL];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  localizedTermsAndConditionsText = self->_localizedTermsAndConditionsText;
  coderCopy = coder;
  [coderCopy encodeObject:localizedTermsAndConditionsText forKey:@"localizedTermsAndConditionsText"];
  [coderCopy encodeObject:self->_privacyPolicyURL forKey:@"privacyPolicyURL"];
  [coderCopy encodeObject:self->_termsAndConditionsURL forKey:@"termsAndConditionsURL"];
}

- (INTermsAndConditions)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(INTermsAndConditions *)self init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTermsAndConditionsText"];
  if (v6)
  {
    localizedTermsAndConditionsText = v5->_localizedTermsAndConditionsText;
    v5->_localizedTermsAndConditionsText = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privacyPolicyURL"];
    privacyPolicyURL = v5->_privacyPolicyURL;
    v5->_privacyPolicyURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"termsAndConditionsURL"];
    termsAndConditionsURL = v5->_termsAndConditionsURL;
    v5->_termsAndConditionsURL = v10;

LABEL_4:
    v12 = v5;
    goto LABEL_8;
  }

  v13 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = "[INTermsAndConditions initWithCoder:]";
    v18 = 2080;
    v19 = "_localizedTermsAndConditionsText";
    _os_log_error_impl(&dword_18E991000, v13, OS_LOG_TYPE_ERROR, "%s Null value for %s", &v16, 0x16u);
  }

  v12 = 0;
LABEL_8:

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (INTermsAndConditions)initWithLocalizedTermsAndConditionsText:(NSString *)localizedTermsAndConditionsText privacyPolicyURL:(NSURL *)privacyPolicyURL termsAndConditionsURL:(NSURL *)termsAndConditionsURL
{
  v8 = localizedTermsAndConditionsText;
  v9 = privacyPolicyURL;
  v10 = termsAndConditionsURL;
  v19.receiver = self;
  v19.super_class = INTermsAndConditions;
  v11 = [(INTermsAndConditions *)&v19 init];
  if (v11)
  {
    v12 = [(NSString *)v8 copy];
    v13 = v11->_localizedTermsAndConditionsText;
    v11->_localizedTermsAndConditionsText = v12;

    v14 = [(NSURL *)v9 copy];
    v15 = v11->_privacyPolicyURL;
    v11->_privacyPolicyURL = v14;

    v16 = [(NSURL *)v10 copy];
    v17 = v11->_termsAndConditionsURL;
    v11->_termsAndConditionsURL = v16;
  }

  return v11;
}

@end