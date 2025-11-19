@interface CLPlacemark(Readable)
- (id)_intents_defaultReadableDescription;
- (id)_intents_readableTitleWithLocalizer:()Readable metadata:;
@end

@implementation CLPlacemark(Readable)

- (id)_intents_readableTitleWithLocalizer:()Readable metadata:
{
  v6 = a3;
  v7 = a4;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v9 = 0;
    goto LABEL_8;
  }

  v8 = [v7 type];
  if (v8 == 2)
  {
    v10 = [a1 locality];
    goto LABEL_12;
  }

  if (v8 == 1)
  {
    v12 = [a1 formattedAddressLines];
    v13 = [v12 count];

    if (v13)
    {
      v14 = [a1 formattedAddressLines];
      v11 = [v14 firstObject];
    }

    else
    {
      CNPostalAddressFormatterClass = getCNPostalAddressFormatterClass();
      v17 = [a1 postalAddress];
      v11 = [CNPostalAddressFormatterClass singleLineStringFromPostalAddress:v17 addCountryName:0];
    }

    goto LABEL_13;
  }

  v9 = v7;
  if (v8)
  {
LABEL_8:
    v11 = [a1 _intents_defaultReadableDescription];
    goto LABEL_14;
  }

  v10 = [a1 _intents_defaultReadableDescription];
LABEL_12:
  v11 = v10;
LABEL_13:
  v9 = v7;
LABEL_14:

  return v11;
}

- (id)_intents_defaultReadableDescription
{
  v2 = [a1 name];

  if (v2)
  {
    v3 = [a1 name];
  }

  else
  {
    v4 = [a1 formattedAddressLines];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [a1 formattedAddressLines];
      v3 = [v6 firstObject];
    }

    else
    {
      CNPostalAddressFormatterClass = getCNPostalAddressFormatterClass();
      v8 = [a1 postalAddress];
      v3 = [CNPostalAddressFormatterClass singleLineStringFromPostalAddress:v8 addCountryName:0];
    }
  }

  return v3;
}

@end