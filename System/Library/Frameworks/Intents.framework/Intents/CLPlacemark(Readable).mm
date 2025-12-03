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

  type = [v7 type];
  if (type == 2)
  {
    locality = [self locality];
    goto LABEL_12;
  }

  if (type == 1)
  {
    formattedAddressLines = [self formattedAddressLines];
    v13 = [formattedAddressLines count];

    if (v13)
    {
      formattedAddressLines2 = [self formattedAddressLines];
      firstObject = [formattedAddressLines2 firstObject];
    }

    else
    {
      CNPostalAddressFormatterClass = getCNPostalAddressFormatterClass();
      postalAddress = [self postalAddress];
      firstObject = [CNPostalAddressFormatterClass singleLineStringFromPostalAddress:postalAddress addCountryName:0];
    }

    goto LABEL_13;
  }

  v9 = v7;
  if (type)
  {
LABEL_8:
    firstObject = [self _intents_defaultReadableDescription];
    goto LABEL_14;
  }

  locality = [self _intents_defaultReadableDescription];
LABEL_12:
  firstObject = locality;
LABEL_13:
  v9 = v7;
LABEL_14:

  return firstObject;
}

- (id)_intents_defaultReadableDescription
{
  name = [self name];

  if (name)
  {
    name2 = [self name];
  }

  else
  {
    formattedAddressLines = [self formattedAddressLines];
    v5 = [formattedAddressLines count];

    if (v5)
    {
      formattedAddressLines2 = [self formattedAddressLines];
      name2 = [formattedAddressLines2 firstObject];
    }

    else
    {
      CNPostalAddressFormatterClass = getCNPostalAddressFormatterClass();
      postalAddress = [self postalAddress];
      name2 = [CNPostalAddressFormatterClass singleLineStringFromPostalAddress:postalAddress addCountryName:0];
    }
  }

  return name2;
}

@end