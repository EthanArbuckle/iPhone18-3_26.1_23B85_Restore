@interface TKSmartCardUserInteractionForPINOperation
- (NSLocale)locale;
- (TKSmartCardUserInteractionForPINOperation)init;
- (TKSmartCardUserInteractionForPINOperation)initWithCoder:(id)coder;
- (unsigned)localeID;
- (void)encodeWithCoder:(id)coder;
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

- (TKSmartCardUserInteractionForPINOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = TKSmartCardUserInteractionForPINOperation;
  v5 = [(TKSmartCardUserInteraction *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PINCompletion"];
    v5->_PINCompletion = [v6 unsignedIntegerValue];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"PINMessageIndices"];
    v11 = [v10 copy];
    PINMessageIndices = v5->_PINMessageIndices;
    v5->_PINMessageIndices = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    v14 = [v13 copy];
    locale = v5->_locale;
    v5->_locale = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TKSmartCardUserInteractionForPINOperation;
  coderCopy = coder;
  [(TKSmartCardUserInteraction *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_PINCompletion, v7.receiver, v7.super_class}];
  [coderCopy encodeObject:v5 forKey:@"PINCompletion"];

  [coderCopy encodeObject:self->_PINMessageIndices forKey:@"PINMessageIndices"];
  locale = [(TKSmartCardUserInteractionForPINOperation *)self locale];
  [coderCopy encodeObject:locale forKey:@"locale"];
}

- (NSLocale)locale
{
  locale = self->_locale;
  if (locale)
  {
    currentLocale = locale;
  }

  else
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  }

  return currentLocale;
}

- (unsigned)localeID
{
  v2 = MEMORY[0x1E695DF58];
  locale = [(TKSmartCardUserInteractionForPINOperation *)self locale];
  localeIdentifier = [locale localeIdentifier];
  LOWORD(v2) = [v2 windowsLocaleCodeFromLocaleIdentifier:localeIdentifier];

  return v2;
}

@end