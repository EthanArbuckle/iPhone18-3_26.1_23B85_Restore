@interface TKSmartCardUserInteractionForPINOperation
- (NSLocale)locale;
- (TKSmartCardUserInteractionForPINOperation)init;
- (TKSmartCardUserInteractionForPINOperation)initWithCoder:(id)a3;
- (unsigned)localeID;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TKSmartCardUserInteractionForPINOperation

- (TKSmartCardUserInteractionForPINOperation)init
{
  v7.receiver = self;
  v7.super_class = TKSmartCardUserInteractionForPINOperation;
  v2 = [(TKSmartCardUserInteraction *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_PINCompletion = 2;
    PINMessageIndices = v2->_PINMessageIndices;
    v2->_PINMessageIndices = 0;

    locale = v3->_locale;
    v3->_locale = 0;
  }

  return v3;
}

- (TKSmartCardUserInteractionForPINOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = TKSmartCardUserInteractionForPINOperation;
  v5 = [(TKSmartCardUserInteraction *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PINCompletion"];
    v5->_PINCompletion = [v6 unsignedIntegerValue];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"PINMessageIndices"];
    v11 = [v10 copy];
    PINMessageIndices = v5->_PINMessageIndices;
    v5->_PINMessageIndices = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    v14 = [v13 copy];
    locale = v5->_locale;
    v5->_locale = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = TKSmartCardUserInteractionForPINOperation;
  v4 = a3;
  [(TKSmartCardUserInteraction *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_PINCompletion, v7.receiver, v7.super_class}];
  [v4 encodeObject:v5 forKey:@"PINCompletion"];

  [v4 encodeObject:self->_PINMessageIndices forKey:@"PINMessageIndices"];
  v6 = [(TKSmartCardUserInteractionForPINOperation *)self locale];
  [v4 encodeObject:v6 forKey:@"locale"];
}

- (NSLocale)locale
{
  locale = self->_locale;
  if (locale)
  {
    v3 = locale;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF58] currentLocale];
  }

  return v3;
}

- (unsigned)localeID
{
  v2 = MEMORY[0x1E695DF58];
  v3 = [(TKSmartCardUserInteractionForPINOperation *)self locale];
  v4 = [v3 localeIdentifier];
  LOWORD(v2) = [v2 windowsLocaleCodeFromLocaleIdentifier:v4];

  return v2;
}

@end