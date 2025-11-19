@interface RideBookingCurrencyAmount
+ (id)_currencySymbolForCode:(id)a3;
+ (id)_localeForCode:(id)a3;
- (NSString)currencySymbol;
- (RideBookingCurrencyAmount)initWithAmount:(id)a3 currencyCode:(id)a4;
- (id)formattedStringIncludeSymbol:(BOOL)a3;
@end

@implementation RideBookingCurrencyAmount

- (RideBookingCurrencyAmount)initWithAmount:(id)a3 currencyCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = RideBookingCurrencyAmount;
  v8 = [(RideBookingCurrencyAmount *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    amount = v8->_amount;
    v8->_amount = v9;

    v11 = [v7 copy];
    currencyCode = v8->_currencyCode;
    v8->_currencyCode = v11;
  }

  return v8;
}

- (NSString)currencySymbol
{
  v2 = [(RideBookingCurrencyAmount *)self currencyCode];
  v3 = [RideBookingCurrencyAmount _currencySymbolForCode:v2];

  return v3;
}

- (id)formattedStringIncludeSymbol:(BOOL)a3
{
  v3 = a3;
  v5 = [(RideBookingCurrencyAmount *)self amount];
  if (v5 && (v6 = v5, [(RideBookingCurrencyAmount *)self currencyCode], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    if (qword_10195E9D0 != -1)
    {
      dispatch_once(&qword_10195E9D0, &stru_10164CC38);
    }

    v8 = [(RideBookingCurrencyAmount *)self currencyCode];
    [qword_10195E9C8 setCurrencyCode:v8];

    if (v3)
    {
      v9 = 0;
    }

    else
    {
      v9 = &stru_1016631F0;
    }

    [qword_10195E9C8 setCurrencySymbol:v9];
    v11 = qword_10195E9C8;
    v12 = [(RideBookingCurrencyAmount *)self amount];
    v10 = [v11 stringFromNumber:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_currencySymbolForCode:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSNumberFormatter);
  v6 = [a1 _localeForCode:v4];

  if (v6)
  {
    [v5 setLocale:v6];
    [v5 setNumberStyle:2];
    v7 = [v5 currencySymbol];
    if ([v7 length] >= 2)
    {
      v8 = [v7 substringToIndex:1];

      v7 = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_localeForCode:(id)a3
{
  v3 = a3;
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
        if ([v12 isEqualToString:v3])
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