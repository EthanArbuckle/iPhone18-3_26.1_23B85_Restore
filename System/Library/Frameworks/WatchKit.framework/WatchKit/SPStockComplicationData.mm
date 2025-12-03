@interface SPStockComplicationData
- (SPStockComplicationData)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPStockComplicationData

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SPStockComplicationData;
  coderCopy = coder;
  [(SPComplicationData *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tickerSymbolText forKey:{@"_TickerSymbolTextKey", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_priceText forKey:@"_PriceTextKey"];
  [coderCopy encodeObject:self->_marketCapText forKey:@"_MarketCapTextKey"];
  [coderCopy encodeObject:self->_changeInPercentText forKey:@"_ChangeInPercentTextKey"];
  [coderCopy encodeObject:self->_changeInPointsText forKey:@"_ChangeInPointsTextKey"];
  [coderCopy encodeObject:self->_changeText forKey:@"_ChangeTextKey"];
  [coderCopy encodeInteger:self->_changeDirection forKey:@"_ChangeDirectionKey"];
}

- (SPStockComplicationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = SPStockComplicationData;
  v5 = [(SPComplicationData *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_TickerSymbolTextKey"];
    tickerSymbolText = v5->_tickerSymbolText;
    v5->_tickerSymbolText = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_PriceTextKey"];
    priceText = v5->_priceText;
    v5->_priceText = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_MarketCapTextKey"];
    marketCapText = v5->_marketCapText;
    v5->_marketCapText = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ChangeInPercentTextKey"];
    changeInPercentText = v5->_changeInPercentText;
    v5->_changeInPercentText = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ChangeInPointsTextKey"];
    changeInPointsText = v5->_changeInPointsText;
    v5->_changeInPointsText = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ChangeTextKey"];
    changeText = v5->_changeText;
    v5->_changeText = v16;

    v5->_changeDirection = [coderCopy decodeIntegerForKey:@"_ChangeDirectionKey"];
  }

  return v5;
}

@end