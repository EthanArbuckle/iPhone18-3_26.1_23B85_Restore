@interface Stock
- (Stock)initWithSiriStockObject:(id)a3;
@end

@implementation Stock

- (Stock)initWithSiriStockObject:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 name];
  if ([v5 length])
  {
    [v4 setObject:v5 forKey:StockCompanyNameKey];
  }

  v6 = [v3 symbol];
  if ([v6 length])
  {
    [v4 setObject:v6 forKey:StockSymbolKey];
  }

  v7 = [v3 exchange];
  if ([v7 length])
  {
    [v4 setObject:v7 forKey:StockExchangeNameKey];
  }

  v8 = [v3 marketCap];
  v49 = v5;
  v50 = v6;
  if ([v8 length])
  {
    v9 = [v8 characterAtIndex:{objc_msgSend(v8, "length") - 1}];
    switch(v9)
    {
      case 'B':
        v10 = 1000000000.0;
        break;
      case 'T':
        v10 = 1.0e12;
        break;
      case 'M':
        v10 = 1000000.0;
        break;
      default:
LABEL_15:
        [v4 setObject:v8 forKey:StockMarketCapKey];
        goto LABEL_16;
    }

    [v8 doubleValue];
    v12 = [NSNumber numberWithDouble:v11 * v10];
    v13 = [v12 stringValue];

    v8 = v13;
    goto LABEL_15;
  }

LABEL_16:
  v14 = [v3 yearRange];
  if ([v14 length])
  {
    v15 = [v14 rangeOfString:@" - "];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = v15;
      v18 = v16;
      v19 = [v14 substringToIndex:v15];
      [v4 setObject:v19 forKey:StockYearLowKey];
      v20 = [v14 substringFromIndex:&v17[v18]];
      [v4 setObject:v20 forKey:StockYearHighKey];
    }
  }

  v21 = [v3 averageDailyVolume];
  v22 = [v21 stringValue];

  if ([v22 length])
  {
    [v4 setObject:v22 forKey:StockAverageVolumeKey];
  }

  v23 = [v3 dividendYield];
  v24 = [v23 stringValue];

  if ([v24 length])
  {
    [v4 setObject:v24 forKey:StockDividendYieldKey];
  }

  v44 = v22;
  v25 = [v3 link];
  if ([v25 length])
  {
    [v4 setObject:v25 forKey:StockInfoURLKey];
  }

  v42 = v25;
  v47 = v7;
  v26 = [v3 high];
  v27 = [v26 stringValue];

  if ([v27 length])
  {
    [v4 setObject:v27 forKey:StockHighPriceKey];
  }

  v43 = v24;
  v28 = [v3 low];
  v29 = [v28 stringValue];

  if ([v29 length])
  {
    [v4 setObject:v29 forKey:StockLowPriceKey];
  }

  v45 = v14;
  v30 = [v3 open];
  v31 = [v30 stringValue];

  if ([v31 length])
  {
    [v4 setObject:v31 forKey:StockOpenPriceKey];
  }

  v32 = [v3 peRatio];
  v33 = [v32 stringValue];

  if ([v33 length])
  {
    [v4 setObject:v33 forKey:StockPERatioKey];
  }

  v34 = [v3 price];
  v35 = [v34 stringValue];

  if ([v35 length])
  {
    [v4 setObject:v35 forKey:StockPriceKey];
  }

  v46 = v8;
  v36 = [v3 change];
  v37 = [v36 stringValue];

  if ([v37 length])
  {
    [v4 setObject:v37 forKey:StockChangeKey];
  }

  v38 = [v3 volume];
  v39 = [v38 stringValue];

  if ([v39 length])
  {
    [v4 setObject:v39 forKey:StockVolumeKey];
  }

  if ([v50 hasPrefix:@"^"])
  {
    [v4 setObject:@"index" forKey:StockSymbolTypeKey];
  }

  v40 = [(Stock *)self initWithDictionary:v4];

  return v40;
}

@end