@interface SPStockListComplicationData
- (SPStockListComplicationData)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPStockListComplicationData

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SPStockListComplicationData;
  coderCopy = coder;
  [(SPComplicationData *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_stockList forKey:{@"_StockListKey", v5.receiver, v5.super_class}];
}

- (SPStockListComplicationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SPStockListComplicationData;
  v5 = [(SPComplicationData *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_StockListKey"];
    stockList = v5->_stockList;
    v5->_stockList = v9;
  }

  return v5;
}

@end