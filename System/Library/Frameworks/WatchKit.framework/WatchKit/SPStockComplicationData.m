@interface SPStockComplicationData
- (SPStockComplicationData)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPStockComplicationData

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SPStockComplicationData;
  v4 = a3;
  [(SPComplicationData *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_tickerSymbolText forKey:{@"_TickerSymbolTextKey", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_priceText forKey:@"_PriceTextKey"];
  [v4 encodeObject:self->_marketCapText forKey:@"_MarketCapTextKey"];
  [v4 encodeObject:self->_changeInPercentText forKey:@"_ChangeInPercentTextKey"];
  [v4 encodeObject:self->_changeInPointsText forKey:@"_ChangeInPointsTextKey"];
  [v4 encodeObject:self->_changeText forKey:@"_ChangeTextKey"];
  [v4 encodeInteger:self->_changeDirection forKey:@"_ChangeDirectionKey"];
}

- (SPStockComplicationData)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SPStockComplicationData;
  v5 = [(SPComplicationData *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_TickerSymbolTextKey"];
    tickerSymbolText = v5->_tickerSymbolText;
    v5->_tickerSymbolText = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_PriceTextKey"];
    priceText = v5->_priceText;
    v5->_priceText = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_MarketCapTextKey"];
    marketCapText = v5->_marketCapText;
    v5->_marketCapText = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ChangeInPercentTextKey"];
    changeInPercentText = v5->_changeInPercentText;
    v5->_changeInPercentText = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ChangeInPointsTextKey"];
    changeInPointsText = v5->_changeInPointsText;
    v5->_changeInPointsText = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ChangeTextKey"];
    changeText = v5->_changeText;
    v5->_changeText = v16;

    v5->_changeDirection = [v4 decodeIntegerForKey:@"_ChangeDirectionKey"];
  }

  return v5;
}

@end