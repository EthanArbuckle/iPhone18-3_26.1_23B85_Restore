@interface Stock
- (Stock)initWithSiriStockObject:(id)object;
@end

@implementation Stock

- (Stock)initWithSiriStockObject:(id)object
{
  objectCopy = object;
  v4 = +[NSMutableDictionary dictionary];
  name = [objectCopy name];
  if ([name length])
  {
    [v4 setObject:name forKey:StockCompanyNameKey];
  }

  symbol = [objectCopy symbol];
  if ([symbol length])
  {
    [v4 setObject:symbol forKey:StockSymbolKey];
  }

  exchange = [objectCopy exchange];
  if ([exchange length])
  {
    [v4 setObject:exchange forKey:StockExchangeNameKey];
  }

  marketCap = [objectCopy marketCap];
  v49 = name;
  v50 = symbol;
  if ([marketCap length])
  {
    v9 = [marketCap characterAtIndex:{objc_msgSend(marketCap, "length") - 1}];
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
        [v4 setObject:marketCap forKey:StockMarketCapKey];
        goto LABEL_16;
    }

    [marketCap doubleValue];
    v12 = [NSNumber numberWithDouble:v11 * v10];
    stringValue = [v12 stringValue];

    marketCap = stringValue;
    goto LABEL_15;
  }

LABEL_16:
  yearRange = [objectCopy yearRange];
  if ([yearRange length])
  {
    v15 = [yearRange rangeOfString:@" - "];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = v15;
      v18 = v16;
      v19 = [yearRange substringToIndex:v15];
      [v4 setObject:v19 forKey:StockYearLowKey];
      v20 = [yearRange substringFromIndex:&v17[v18]];
      [v4 setObject:v20 forKey:StockYearHighKey];
    }
  }

  averageDailyVolume = [objectCopy averageDailyVolume];
  stringValue2 = [averageDailyVolume stringValue];

  if ([stringValue2 length])
  {
    [v4 setObject:stringValue2 forKey:StockAverageVolumeKey];
  }

  dividendYield = [objectCopy dividendYield];
  stringValue3 = [dividendYield stringValue];

  if ([stringValue3 length])
  {
    [v4 setObject:stringValue3 forKey:StockDividendYieldKey];
  }

  v44 = stringValue2;
  link = [objectCopy link];
  if ([link length])
  {
    [v4 setObject:link forKey:StockInfoURLKey];
  }

  v42 = link;
  v47 = exchange;
  high = [objectCopy high];
  stringValue4 = [high stringValue];

  if ([stringValue4 length])
  {
    [v4 setObject:stringValue4 forKey:StockHighPriceKey];
  }

  v43 = stringValue3;
  v28 = [objectCopy low];
  stringValue5 = [v28 stringValue];

  if ([stringValue5 length])
  {
    [v4 setObject:stringValue5 forKey:StockLowPriceKey];
  }

  v45 = yearRange;
  open = [objectCopy open];
  stringValue6 = [open stringValue];

  if ([stringValue6 length])
  {
    [v4 setObject:stringValue6 forKey:StockOpenPriceKey];
  }

  peRatio = [objectCopy peRatio];
  stringValue7 = [peRatio stringValue];

  if ([stringValue7 length])
  {
    [v4 setObject:stringValue7 forKey:StockPERatioKey];
  }

  price = [objectCopy price];
  stringValue8 = [price stringValue];

  if ([stringValue8 length])
  {
    [v4 setObject:stringValue8 forKey:StockPriceKey];
  }

  v46 = marketCap;
  change = [objectCopy change];
  stringValue9 = [change stringValue];

  if ([stringValue9 length])
  {
    [v4 setObject:stringValue9 forKey:StockChangeKey];
  }

  volume = [objectCopy volume];
  stringValue10 = [volume stringValue];

  if ([stringValue10 length])
  {
    [v4 setObject:stringValue10 forKey:StockVolumeKey];
  }

  if ([v50 hasPrefix:@"^"])
  {
    [v4 setObject:@"index" forKey:StockSymbolTypeKey];
  }

  v40 = [(Stock *)self initWithDictionary:v4];

  return v40;
}

@end