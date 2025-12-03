@interface RideBookingCurrencyAmount
+ (id)_currencySymbolForCode:(id)code;
+ (id)_localeForCode:(id)code;
- (NSString)currencySymbol;
- (RideBookingCurrencyAmount)initWithAmount:(id)amount currencyCode:(id)code;
- (id)formattedStringIncludeSymbol:(BOOL)symbol;
@end

@implementation RideBookingCurrencyAmount

- (RideBookingCurrencyAmount)initWithAmount:(id)amount currencyCode:(id)code
{
  amountCopy = amount;
  codeCopy = code;
  v14.receiver = self;
  v14.super_class = RideBookingCurrencyAmount;
  v8 = [(RideBookingCurrencyAmount *)&v14 init];
  if (v8)
  {
    v9 = [amountCopy copy];
    amount = v8->_amount;
    v8->_amount = v9;

    v11 = [codeCopy copy];
    currencyCode = v8->_currencyCode;
    v8->_currencyCode = v11;
  }

  return v8;
}

- (NSString)currencySymbol
{
  currencyCode = [(RideBookingCurrencyAmount *)self currencyCode];
  v3 = [RideBookingCurrencyAmount _currencySymbolForCode:currencyCode];

  return v3;
}

- (id)formattedStringIncludeSymbol:(BOOL)symbol
{
  symbolCopy = symbol;
  amount = [(RideBookingCurrencyAmount *)self amount];
  if (amount && (v6 = amount, [(RideBookingCurrencyAmount *)self currencyCode], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    if (qword_10195E9D0 != -1)
    {
      dispatch_once(&qword_10195E9D0, &stru_10164CC38);
    }

    currencyCode = [(RideBookingCurrencyAmount *)self currencyCode];
    [qword_10195E9C8 setCurrencyCode:currencyCode];

    if (symbolCopy)
    {
      v9 = 0;
    }

    else
    {
      v9 = &stru_1016631F0;
    }

    [qword_10195E9C8 setCurrencySymbol:v9];
    v11 = qword_10195E9C8;
    amount2 = [(RideBookingCurrencyAmount *)self amount];
    v10 = [v11 stringFromNumber:amount2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_currencySymbolForCode:(id)code
{
  codeCopy = code;
  v5 = objc_alloc_init(NSNumberFormatter);
  v6 = [self _localeForCode:codeCopy];

  if (v6)
  {
    [v5 setLocale:v6];
    [v5 setNumberStyle:2];
    currencySymbol = [v5 currencySymbol];
    if ([currencySymbol length] >= 2)
    {
      v8 = [currencySymbol substringToIndex:1];

      currencySymbol = v8;
    }
  }

  else
  {
    currencySymbol = 0;
  }

  return currencySymbol;
}

+ (id)_localeForCode:(id)code
{
  codeCopy = code;
  +[NSLocale availableLocaleIdentifiers];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [NSLocale alloc];
        v11 = [v10 initWithLocaleIdentifier:{v9, v14}];
        v12 = [v11 objectForKey:NSLocaleCurrencyCode];
        if ([v12 isEqualToString:codeCopy])
        {

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

@end