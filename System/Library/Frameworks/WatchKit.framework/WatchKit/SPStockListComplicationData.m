@interface SPStockListComplicationData
- (SPStockListComplicationData)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPStockListComplicationData

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SPStockListComplicationData;
  v4 = a3;
  [(SPComplicationData *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_stockList forKey:{@"_StockListKey", v5.receiver, v5.super_class}];
}

- (SPStockListComplicationData)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SPStockListComplicationData;
  v5 = [(SPComplicationData *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_StockListKey"];
    stockList = v5->_stockList;
    v5->_stockList = v9;
  }

  return v5;
}

@end