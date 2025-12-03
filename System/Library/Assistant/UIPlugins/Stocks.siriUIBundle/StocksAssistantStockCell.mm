@interface StocksAssistantStockCell
+ (id)infoAttributes;
- (StocksAssistantStockCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (StocksAssistantStockSnippetController)snippetController;
- (id)valueForAttribute:(unint64_t)attribute;
- (void)setStockObject:(id)object;
@end

@implementation StocksAssistantStockCell

+ (id)infoAttributes
{
  v2 = [StocksBundles getBundle:1];
  v3 = +[UIScreen mainScreen];
  [v3 _referenceBounds];
  if (v4 <= 320.0)
  {
    v5 = @"marketCapTitleLabelAbbreviated";
  }

  else
  {
    v5 = @"marketCapTitleLabel";
  }

  v27 = [v2 siriUILocalizedStringForKey:v5 table:@"Localizable"];

  v21 = [NSArray alloc];
  v25 = [StocksBundles getBundle:1];
  v19 = [v25 siriUILocalizedStringForKey:@"openTitleLabel" table:@"Localizable"];
  v24 = [StocksBundles getBundle:1];
  v26 = [v24 siriUILocalizedStringForKey:@"highTitleLabel" table:@"Localizable"];
  v23 = [StocksBundles getBundle:1];
  v17 = [v23 siriUILocalizedStringForKey:@"lowTitleLabel" table:@"Localizable"];
  v20 = [StocksBundles getBundle:1];
  v15 = [v20 siriUILocalizedStringForKey:@"volumeTitleLabel" table:@"Localizable"];
  v18 = [StocksBundles getBundle:1];
  v6 = [v18 siriUILocalizedStringForKey:@"priceEarningsTitleLabel" table:@"Localizable"];
  v16 = [StocksBundles getBundle:1];
  v7 = [v16 siriUILocalizedStringForKey:@"high52WeekTitleLabel" table:@"Localizable"];
  v8 = [StocksBundles getBundle:1];
  v9 = [v8 siriUILocalizedStringForKey:@"low52WeekTitleLabel" table:@"Localizable"];
  v10 = [StocksBundles getBundle:1];
  v11 = [v10 siriUILocalizedStringForKey:@"averageVolumeTitleLabel" table:@"Localizable"];
  v12 = [StocksBundles getBundle:1];
  v13 = [v12 siriUILocalizedStringForKey:@"yieldTitleLabel" table:@"Localizable"];
  v22 = [v21 initWithObjects:{v19, v26, v17, v15, v6, v27, v7, v9, v11, v13, 0}];

  return v22;
}

- (StocksAssistantStockCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = StocksAssistantStockCell;
  v4 = [(StocksAssistantStockCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(StocksAssistantStockCell *)v4 setClipsToBounds:0];
    [(StocksAssistantStockCell *)v5 setSelectionStyle:0];
  }

  return v5;
}

- (id)valueForAttribute:(unint64_t)attribute
{
  if (attribute > 4)
  {
    if (attribute <= 6)
    {
      if (attribute != 5)
      {
        stock2 = +[StockDataFormatter sharedDataFormatter];
        stock = [(StocksAssistantStockCell *)self stock];
        yearHigh = [stock yearHigh];
        goto LABEL_23;
      }

      stock2 = [(StocksAssistantStockCell *)self stock];
      marketcap = [stock2 marketcap];
LABEL_20:
      stock = marketcap;
      v8 = [Stock localizedMagnitudeAbbreviatedStringWithString:marketcap];
      goto LABEL_24;
    }

    switch(attribute)
    {
      case 7uLL:
        stock2 = +[StockDataFormatter sharedDataFormatter];
        stock = [(StocksAssistantStockCell *)self stock];
        yearHigh = [stock yearLow];
        goto LABEL_23;
      case 8uLL:
        stock2 = [(StocksAssistantStockCell *)self stock];
        marketcap = [stock2 averageVolume];
        goto LABEL_20;
      case 9uLL:
        stock2 = +[StockDataFormatter sharedDataFormatter];
        stock = [(StocksAssistantStockCell *)self stock];
        yearHigh = [stock dividendYield];
        goto LABEL_23;
    }

LABEL_27:
    sub_5518();
  }

  if (attribute <= 1)
  {
    if (!attribute)
    {
      stock2 = +[StockDataFormatter sharedDataFormatter];
      stock = [(StocksAssistantStockCell *)self stock];
      yearHigh = [stock open];
      goto LABEL_23;
    }

    if (attribute == 1)
    {
      stock2 = +[StockDataFormatter sharedDataFormatter];
      stock = [(StocksAssistantStockCell *)self stock];
      yearHigh = [stock high];
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  if (attribute == 2)
  {
    stock2 = +[StockDataFormatter sharedDataFormatter];
    stock = [(StocksAssistantStockCell *)self stock];
    yearHigh = [stock low];
    goto LABEL_23;
  }

  if (attribute == 3)
  {
    stock2 = [(StocksAssistantStockCell *)self stock];
    marketcap = [stock2 volume];
    goto LABEL_20;
  }

  stock2 = +[StockDataFormatter sharedDataFormatter];
  stock = [(StocksAssistantStockCell *)self stock];
  yearHigh = [stock peRatio];
LABEL_23:
  v9 = yearHigh;
  [yearHigh floatValue];
  v10 = [NSNumber numberWithFloat:?];
  v8 = [stock2 formattedNumber:v10 withPrecision:2 useGroupSeparator:1];

LABEL_24:

  return v8;
}

- (void)setStockObject:(id)object
{
  objectCopy = object;
  v5 = [[Stock alloc] initWithSiriStockObject:objectCopy];

  [(StocksAssistantStockCell *)self setStock:v5];
}

- (StocksAssistantStockSnippetController)snippetController
{
  WeakRetained = objc_loadWeakRetained(&self->_snippetController);

  return WeakRetained;
}

@end