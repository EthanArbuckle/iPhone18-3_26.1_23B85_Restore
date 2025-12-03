@interface INPriceRange
+ (id)formattedStringForPriceValueWithAmount:(id)amount currencyCode:(id)code showsCurrencySymbol:(BOOL)symbol;
- (BOOL)_shouldCurrencySymbolGoAfterPrice;
- (NSString)_maps_formattedStringWithDefaultShortFormatStrings;
@end

@implementation INPriceRange

- (NSString)_maps_formattedStringWithDefaultShortFormatStrings
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"%@ [Ridesharing price range]" value:@"localized string not found" table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"%@-%@ [Ridesharing price range]" value:@"localized string not found" table:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Up to %@ [Ridesharing price range]" value:@"localized string not found" table:0];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"From %@ [Ridesharing price range]" value:@"localized string not found" table:0];

  minimumPrice = [(INPriceRange *)self minimumPrice];
  if (minimumPrice)
  {
    v12 = minimumPrice;
    maximumPrice = [(INPriceRange *)self maximumPrice];

    if (maximumPrice)
    {
      v42 = v6;
      minimumPrice2 = [(INPriceRange *)self minimumPrice];
      maximumPrice2 = [(INPriceRange *)self maximumPrice];
      v16 = [minimumPrice2 isEqual:maximumPrice2];

      if (v16)
      {
        v17 = [NSString alloc];
        v18 = objc_opt_class();
        minimumPrice3 = [(INPriceRange *)self minimumPrice];
        currencyCode = [(INPriceRange *)self currencyCode];
        v21 = [v18 formattedStringForPriceValueWithAmount:minimumPrice3 currencyCode:currencyCode showsCurrencySymbol:1];
        v22 = [v17 initWithFormat:v4, v21];
        v6 = v42;
      }

      else
      {
        _shouldCurrencySymbolGoAfterPrice = [(INPriceRange *)self _shouldCurrencySymbolGoAfterPrice];
        v40 = [NSString alloc];
        v31 = objc_opt_class();
        minimumPrice3 = [(INPriceRange *)self minimumPrice];
        currencyCode = [(INPriceRange *)self currencyCode];
        v21 = [v31 formattedStringForPriceValueWithAmount:minimumPrice3 currencyCode:currencyCode showsCurrencySymbol:_shouldCurrencySymbolGoAfterPrice ^ 1];
        v41 = v10;
        v32 = v8;
        v33 = v4;
        v34 = objc_opt_class();
        maximumPrice3 = [(INPriceRange *)self maximumPrice];
        currencyCode2 = [(INPriceRange *)self currencyCode];
        v37 = v34;
        v4 = v33;
        v38 = [v37 formattedStringForPriceValueWithAmount:maximumPrice3 currencyCode:currencyCode2 showsCurrencySymbol:_shouldCurrencySymbolGoAfterPrice];
        v22 = [v40 initWithFormat:v42, v21, v38];

        v6 = v42;
        v8 = v32;
        v10 = v41;
      }

      goto LABEL_11;
    }
  }

  minimumPrice4 = [(INPriceRange *)self minimumPrice];

  if (minimumPrice4)
  {
    v24 = [NSString alloc];
    v25 = objc_opt_class();
    minimumPrice3 = [(INPriceRange *)self minimumPrice];
    currencyCode = [(INPriceRange *)self currencyCode];
    v21 = [v25 formattedStringForPriceValueWithAmount:minimumPrice3 currencyCode:currencyCode showsCurrencySymbol:1];
    v26 = [v24 initWithFormat:v10, v21];
LABEL_9:
    v22 = v26;
LABEL_11:

    goto LABEL_12;
  }

  maximumPrice4 = [(INPriceRange *)self maximumPrice];

  if (maximumPrice4)
  {
    v28 = [NSString alloc];
    v29 = objc_opt_class();
    minimumPrice3 = [(INPriceRange *)self maximumPrice];
    currencyCode = [(INPriceRange *)self currencyCode];
    v21 = [v29 formattedStringForPriceValueWithAmount:minimumPrice3 currencyCode:currencyCode showsCurrencySymbol:1];
    v26 = [v28 initWithFormat:v8, v21];
    goto LABEL_9;
  }

  v22 = &stru_1016631F0;
LABEL_12:

  return v22;
}

- (BOOL)_shouldCurrencySymbolGoAfterPrice
{
  minimumPrice = [(INPriceRange *)self minimumPrice];

  if (minimumPrice)
  {
    v4 = +[NSLocale autoupdatingCurrentLocale];
    currencyCode = [(INPriceRange *)self currencyCode];
    v6 = [v4 displayNameForKey:NSLocaleCurrencySymbol value:currencyCode];

    if (qword_10195CF60 != -1)
    {
      dispatch_once(&qword_10195CF60, &stru_101626908);
    }

    v7 = qword_10195CF58;
    minimumPrice2 = [(INPriceRange *)self minimumPrice];
    v9 = [v7 stringFromNumber:minimumPrice2];

    LOBYTE(minimumPrice2) = [v9 hasSuffix:v6];
    return minimumPrice2;
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/Shared/Rides/INPriceRange+MapsAdditions.m");
      v13 = [[NSString alloc] initWithFormat:@"Self.minimumPrice should not be nil"];
      v14 = 136315394;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", &v14, 0x16u);
    }

    return 0;
  }
}

+ (id)formattedStringForPriceValueWithAmount:(id)amount currencyCode:(id)code showsCurrencySymbol:(BOOL)symbol
{
  symbolCopy = symbol;
  codeCopy = code;
  amountCopy = amount;
  if (![codeCopy isEqualToString:@"CNY"])
  {
    if (qword_10195CF60 != -1)
    {
      dispatch_once(&qword_10195CF60, &stru_101626908);
    }

    v12 = qword_10195CF58;
    [v12 setCurrencyCode:codeCopy];
    if (symbolCopy)
    {
      v13 = 0;
    }

    else
    {
      v13 = &stru_1016631F0;
    }

    [v12 setCurrencySymbol:v13];
    v10 = [v12 stringFromNumber:amountCopy];

    goto LABEL_16;
  }

  if (qword_10195CF50 != -1)
  {
    dispatch_once(&qword_10195CF50, &stru_1016268E8);
  }

  if (symbolCopy)
  {
    v9 = 0;
  }

  else
  {
    v9 = &stru_1016631F0;
  }

  [qword_10195CF48 setCurrencySymbol:v9];
  v10 = [qword_10195CF48 stringFromNumber:amountCopy];

  if (symbolCopy)
  {
    v15 = 0;
    amountCopy = [NSRegularExpression regularExpressionWithPattern:@"([￥¥])(\\s*)" options:0 error:&v15];
    if (!v15)
    {
      v11 = [amountCopy stringByReplacingMatchesInString:v10 options:0 range:0 withTemplate:{objc_msgSend(v10, "length"), @"⁠¥"}];

      v10 = v11;
    }

LABEL_16:
  }

  return v10;
}

@end