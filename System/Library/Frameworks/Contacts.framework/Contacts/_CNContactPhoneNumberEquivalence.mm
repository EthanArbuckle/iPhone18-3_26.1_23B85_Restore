@interface _CNContactPhoneNumberEquivalence
- (BOOL)isEquivalentToString:(id)a3 strict:(BOOL *)a4;
- (BOOL)isPhoneNumberEquivalent:(id)a3 strict:(BOOL *)a4;
- (BOOL)preparePhoneNumberRepresentation;
- (_CNContactPhoneNumberEquivalence)initWithPhoneNumberString:(id)a3;
- (void)dealloc;
@end

@implementation _CNContactPhoneNumberEquivalence

- (_CNContactPhoneNumberEquivalence)initWithPhoneNumberString:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _CNContactPhoneNumberEquivalence;
  v5 = [(_CNContactPhoneNumberEquivalence *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    rawString = v5->_rawString;
    v5->_rawString = v6;

    v5->_decomposedRepresentation = 0;
    v5->_decomposedNumberDigits = 0;
    v8 = v5;
  }

  return v5;
}

- (void)dealloc
{
  decomposedRepresentation = self->_decomposedRepresentation;
  if (decomposedRepresentation)
  {
    free(decomposedRepresentation);
  }

  decomposedNumberDigits = self->_decomposedNumberDigits;
  if (decomposedNumberDigits)
  {
    free(decomposedNumberDigits);
  }

  v5.receiver = self;
  v5.super_class = _CNContactPhoneNumberEquivalence;
  [(_CNContactPhoneNumberEquivalence *)&v5 dealloc];
}

- (BOOL)isEquivalentToString:(id)a3 strict:(BOOL *)a4
{
  v6 = a3;
  if ([(_CNContactPhoneNumberEquivalence *)self isRawStringEquivalent:v6])
  {
    v7 = 1;
    *a4 = 1;
  }

  else if ([(_CNContactPhoneNumberEquivalence *)self preparePhoneNumberRepresentation])
  {
    v7 = [(_CNContactPhoneNumberEquivalence *)self isPhoneNumberEquivalent:v6 strict:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)preparePhoneNumberRepresentation
{
  if (self->_decomposedRepresentation)
  {
    return 1;
  }

  self->_decomposedRepresentation = malloc_type_calloc(1uLL, 0x40uLL, 0x105004024FC7E8CuLL);
  v4 = MEMORY[0x1E69967B0];
  v5 = self->_rawString;
  v6 = [v4 countryCodeForNumber:v5];
  v7 = PNCopyBestGuessNormalizedNumberForCountry();

  self->_decomposedNumberDigits = v7;
  PNDecomposeForCountry();

  return self->_decomposedRepresentation != 0;
}

- (BOOL)isPhoneNumberEquivalent:(id)a3 strict:(BOOL *)a4
{
  v5 = MEMORY[0x1E69967B0];
  v6 = a3;
  v7 = [v5 countryCodeForNumber:v6];
  v8 = PNCopyBestGuessNormalizedNumberForCountry();

  PNDecomposeForCountry();
  v9 = decomposedPhoneNumbersEqual();
  if (a4)
  {
    *a4 = 0;
  }

  if (v8)
  {
    free(v8);
  }

  return v9;
}

@end